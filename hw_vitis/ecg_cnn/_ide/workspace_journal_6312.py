# 2025-12-01T21:31:41.052775100
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp = client.get_component(name="ecg_firmware")
comp.build()

vitis.dispose()

