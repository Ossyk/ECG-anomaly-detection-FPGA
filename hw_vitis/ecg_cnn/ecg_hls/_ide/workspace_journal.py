# 2025-12-10T23:57:25.596900
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_hls")

comp = client.get_component(name="ecg_hls_component")
comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

