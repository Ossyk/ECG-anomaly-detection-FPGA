# 2025-12-11T10:12:10.984794700
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

comp = client.get_component(name="ecg_firmware_")
comp.build()

platform = client.get_component(name="ecg_platform_")
domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.regenerate()

vitis.dispose()

vitis.dispose()

