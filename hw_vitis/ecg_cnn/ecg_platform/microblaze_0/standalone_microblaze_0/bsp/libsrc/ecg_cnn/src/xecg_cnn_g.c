#include "xecg_cnn.h"

XEcg_cnn_Config XEcg_cnn_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,ecg-cnn-1.0", /* compatible */
		0x80000000 /* reg */
	},
	 {
		 NULL
	}
};