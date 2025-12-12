# 2025-12-12T08:11:20.059927400
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

platform = client.get_component(name="ecg_platform_")
domain = platform.get_domain(name="standalone_microblaze_0")

status = domain.regenerate()

