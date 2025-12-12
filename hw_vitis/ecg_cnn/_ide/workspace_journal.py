# 2025-12-12T08:17:32.012622700
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

platform = client.get_component(name="ecg_platform_")
status = platform.build()

comp = client.get_component(name="ecg_firmware_")
comp.build()

vitis.dispose()

