# 2025-12-12T08:01:05.302869300
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

platform = client.get_component(name="ecg_platform_")
status = platform.build()

comp = client.get_component(name="ecg_firmware_")
comp.build()

vitis.dispose()

