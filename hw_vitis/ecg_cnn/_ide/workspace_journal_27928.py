# 2025-12-01T21:39:08.156478200
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

comp = client.get_component(name="ecg_firmware")
comp.build()

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp.build()

vitis.dispose()

