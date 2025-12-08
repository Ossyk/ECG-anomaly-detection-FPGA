# 2025-11-19T14:40:10.874983800
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp = client.get_component(name="ecg_firmware")
comp.build()

comp.build()

vitis.dispose()

