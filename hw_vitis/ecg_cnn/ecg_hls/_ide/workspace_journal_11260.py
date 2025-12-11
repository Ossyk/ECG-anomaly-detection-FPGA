# 2025-11-18T09:54:14.309925600
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_hls")

comp = client.create_hls_component(name = "ecg_hls_component",cfg_file = ["C:\Users\oussk\OneDrive\Desktop\ECG_CNN_PROJECT_ALD\hw_vitis\ecg_cnn\ecg_hls\hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="ecg_hls_component")
comp.run(operation="C_SIMULATION")

vitis.dispose()

