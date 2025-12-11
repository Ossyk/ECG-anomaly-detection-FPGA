
#include "xparameters.h"
#include "xuartlite.h"
#include "xuartlite_l.h"
#include "xil_io.h"
#include "xecg_cnn_hw.h"   
#include "xil_cache.h"
#include <stdint.h>
#include <stdbool.h>
// BRAM / CNN config
// HLS IP 
#define ECG_CNN_BASEADDR   XPAR_ECG_CNN_0_BASEADDR   // 0x80000000
// AXI BRAM used by CNN
#define BRAM_BASE        (XPAR_AXI_BRAM_CTRL_0_BASEADDR + 0x8000U)
#define BRAM_INPUT_BASE  (BRAM_BASE + 0x0000U)
#define BRAM_OUTPUT_BASE (BRAM_BASE + 0x1000U)
#define N_SAMPLES        720
#define UART_DEVICE_ID   0
// GPIO
// axi_gpio_0 = LEDs 
#define GPIO_LED_BASE       XPAR_AXI_GPIO_0_BASEADDR
// axi_gpio_1 = 7-seg segments 
#define GPIO_7SEG_SEG_BASE  XPAR_AXI_GPIO_1_BASEADDR
// axi_gpio_2 = 7-seg anodes
#define GPIO_7SEG_AN_BASE    (XPAR_AXI_GPIO_1_BASEADDR + 0x8)

#define SEG_PATTERN_n   0xAB  // "n"  -> NORMAL
#define SEG_PATTERN_A   0x88  // "A"  -> ABNORMAL

XUartLite Uart;
// uart helpers
static void Uart_SendChar(uint8_t b)
{
    while (XUartLite_IsTransmitFull(Uart.RegBaseAddress));
    XUartLite_SendByte(Uart.RegBaseAddress, b);
}
static void Uart_SendString(const char *s)
{
    while (*s)
        Uart_SendChar((uint8_t)*s++);
}
static void print_hex32(uint32_t v)
{
    const char hex[] = "0123456789ABCDEF";
    char out[9];
    for (int i = 0; i < 8; i++) {
        out[7 - i] = hex[v & 0xF];
        v >>= 4;
    }
    out[8] = 0;
    Uart_SendString(out);
}
static void print_dec32(uint32_t v)
{
    char buf[11];
    int i = 10;
    buf[i--] = '\0';
    if (v == 0) {
        buf[i] = '0';
        Uart_SendString(&buf[i]);
        return;
    }
    while (v > 0 && i >= 0) {
        buf[i--] = '0' + (v % 10);
        v /= 10;
    }
    Uart_SendString(&buf[i + 1]);
}
static uint8_t Uart_RecvChar(void)
{
    while (XUartLite_IsReceiveEmpty(Uart.RegBaseAddress));
    return XUartLite_RecvByte(Uart.RegBaseAddress);
}

static void Uart_RecvBuffer(uint8_t *buf, uint32_t len)
{
    for (uint32_t i = 0; i < len; i++) {
        buf[i] = Uart_RecvChar();
    }
}
// Initialize UART
static int init_uart(void)
{
    int status = XUartLite_Initialize(&Uart, UART_DEVICE_ID);
    if (status != XST_SUCCESS)
        return status;
    Uart_SendString("UART ready.\r\n");
    return XST_SUCCESS;
}
// GPIO init and helpers
static void init_gpios(void)
{
   
    Xil_Out32(GPIO_LED_BASE + 0x4, 0x00000000u);
    // Clear LEDs at start
    Xil_Out32(GPIO_LED_BASE + 0x0, 0x00000000u);
    // 7-seg segments as outputs
    Xil_Out32(GPIO_7SEG_SEG_BASE + 0x4, 0x00000000u);
    // All segments OFF 
    Xil_Out32(GPIO_7SEG_SEG_BASE + 0x0, 0x000000FFu);
    // 7-seg digit anodes 
    Xil_Out32(GPIO_7SEG_AN_BASE + 0x4, 0x00000000u);
    // All digits OFF 
    Xil_Out32(GPIO_7SEG_AN_BASE + 0x0, 0x000000FFu);
}
// Show NORMAL result: right LED + right 7seg
static void show_normal_result(void)
{
    // LEDs:
    // the most right for normal
    uint32_t leds = 0;
    leds |= (1u << 0);    // LD0 ON  (NORMAL)
    leds &= ~(1u << 1);   // LD15 OFF

    Xil_Out32(GPIO_LED_BASE + 0x0, leds);
    // 7-seg:
    
    Xil_Out32(GPIO_7SEG_SEG_BASE + 0x0, SEG_PATTERN_n);
    uint32_t an = 0xFFu;       
    an &= ~(1u << 0);          // enable AN0 (rightmost digit, active-low)
    Xil_Out32(GPIO_7SEG_AN_BASE + 0x0, an);
}
// Show ABNORMAL result: left LED + left 7seg
static void show_abnormal_result(void)
{
    // the most left for abnormal
    uint32_t leds = 0;
    leds |= (1u << 1);    // LD15 ON (ABNORMAL)
    leds &= ~(1u << 0);   // LD0 OFF
    Xil_Out32(GPIO_LED_BASE + 0x0, leds);
    // 7-seg:
    //  - Show "A" on leftmost digit (AN7)
    Xil_Out32(GPIO_7SEG_SEG_BASE + 0x0, SEG_PATTERN_A);
    uint32_t an = 0xFFu;       
    an &= ~(1u << 7);          // enable AN7 (far left, active-low)
    Xil_Out32(GPIO_7SEG_AN_BASE + 0x0, an);
}

static void update_display_from_label(uint8_t label)
{
    if (label == 0) {
        show_normal_result();
    } else {
        show_abnormal_result();
    }
}
// CNN memory input output
static void ecg_cnn_set_addresses(void)
{
    Uart_SendString("Setting CNN input/output addresses...\r\n");
    // INPUT address (64-bit: low then high)
    Xil_Out32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA,
              (uint32_t)BRAM_INPUT_BASE);
    Xil_Out32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA + 4,
              0x00000000u);
    // OUTPUT address (64-bit: low then high)
    Xil_Out32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA,
              (uint32_t)BRAM_OUTPUT_BASE);
    Xil_Out32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA + 4,
              0x00000000u);
    Uart_SendString("CNN addresses set.\r\n");
}
static void run_ecg_cnn_mmio(void)
{
    // ap_start = 1
    Xil_Out32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_AP_CTRL, 0x01);
    // wait for ap_done (bit 1)
    while (!(Xil_In32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_AP_CTRL) & 0x2)) {
        // spin
    }
}
// -------------------- Input loading from UART (handles 'T' and 'S') --------------------
//
// 'T' command: 0xA5 'T' : consumed and ignored since threshold is pre-set
// 'S' command: 0xA5 'S' len_lo len_hi   then len*2 bytes of int16 samples
static int load_ecg_from_uart_to_bram(void)
{
    uint8_t header;
    uint8_t cmd;
    // 1) Wait for sync byte 0xA5
    while (1) {
        header = Uart_RecvChar();
        if (header == 0xA5)
            break;
    }
    // 2) Read command
    cmd = Uart_RecvChar();
    if (cmd == 'T') {
        uint8_t thr_lo = Uart_RecvChar();
        uint8_t thr_hi = Uart_RecvChar();
        (void)thr_lo;
        (void)thr_hi;
        return 0; 
    }
    if (cmd == 'D') {
        volatile int32_t *in_bram = (int32_t *)BRAM_INPUT_BASE;
        Uart_SendString("DBG-BEGIN\n");
        for (int i = 0; i < 20; i++) {
            print_hex32(Xil_In32(BRAM_INPUT_BASE + i*4));
            Uart_SendString("\n");
        }
        Uart_SendString("DBG-END\n");
        return 0;
    }
    if (cmd != 'S') {
        return -1; // unknown command
    }
    // 3) Read length (uint16, little-endian)
    uint8_t len_bytes[2];
    len_bytes[0] = Uart_RecvChar();
    len_bytes[1] = Uart_RecvChar();
    uint16_t length = (uint16_t)(len_bytes[0] | (len_bytes[1] << 8));
    if (length > N_SAMPLES)
        length = N_SAMPLES;
    volatile int32_t *in_bram = (int32_t *)BRAM_INPUT_BASE;
    // 4) Read samples — SIGNED int16
    for (uint16_t i = 0; i < length; i++) {
        uint8_t b0 = Uart_RecvChar();
        uint8_t b1 = Uart_RecvChar();
        int16_t sample = (int16_t)((b1 << 8) | b0); // SIGNED
        in_bram[i] = (int32_t)sample;              // SIGN-EXTEND
    }
    // 5) Zero-pad rest
    for (uint16_t i = length; i < N_SAMPLES; i++) {
        in_bram[i] = 0;
    }
    // 6) Flush cache
    Xil_DCacheFlushRange((UINTPTR)BRAM_INPUT_BASE, N_SAMPLES * sizeof(uint32_t));
    return (int)length;
}

//  Decode CNN output and send UART reply
static void send_cnn_reply_packet(void)
{
    volatile uint32_t *out32 = (uint32_t *)BRAM_OUTPUT_BASE;
    Xil_DCacheInvalidateRange((UINTPTR)BRAM_OUTPUT_BASE, 4);
    uint32_t packed = out32[0];
    uint8_t  label    = (uint8_t)(packed & 0x1);
    uint16_t score_q8 = (uint16_t)((packed >> 1) & 0xFFFF);
    // Build reply: 0x5A, 'R', label, score_L, score_H
    uint8_t packet[5];
    packet[0] = 0x5A;
    packet[1] = 'R';
    packet[2] = label;
    packet[3] = (uint8_t)(score_q8 & 0xFF);
    packet[4] = (uint8_t)((score_q8 >> 8) & 0xFF);
    for (int i = 0; i < 5; i++) {
        Uart_SendChar(packet[i]);
    }
    update_display_from_label(label);
}

// -------------------- main --------------------
int main(void)
{
    int status;
    Xil_ICacheEnable();
    Xil_DCacheEnable();
    status = init_uart();
    if (status != XST_SUCCESS)
        while (1);
    // Init GPIOs for LEDs + 7-seg (NEW)
    init_gpios();
    // You can print ONE banner here; the PC code resets buffers after connect:
    Uart_SendString("ECG CNN firmware ready.\r\n");
    ecg_cnn_set_addresses();
    Uart_SendString("DBG-ADDR\n");
    print_hex32(Xil_In32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA));
    Uart_SendString("\n");
    print_hex32(Xil_In32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_INPUT_R_R_DATA + 4));
    Uart_SendString("\n");
    print_hex32(Xil_In32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA));
    Uart_SendString("\n");
    print_hex32(Xil_In32(ECG_CNN_BASEADDR + XECG_CNN_CTRL_ADDR_OUTPUT_R_R_DATA + 4));
    Uart_SendString("\n");
    Uart_SendString("END\n");
    while (1) {
        int len = load_ecg_from_uart_to_bram();
        if (len < 0) {
            //keep listening
           continue;
        }
        if (len == 0) {
            // 'T' threshold command consumed and ignored
            continue;
        }
        // 'S' command received and samples loaded
        run_ecg_cnn_mmio();
        send_cnn_reply_packet();
        Xil_DCacheFlushRange((UINTPTR)BRAM_OUTPUT_BASE, N_SAMPLES * sizeof(uint32_t));
        
    }
    return 0;
}
