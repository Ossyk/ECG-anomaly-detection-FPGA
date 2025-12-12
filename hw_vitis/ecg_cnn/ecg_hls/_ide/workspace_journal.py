# 2025-12-12T09:01:12.600092700
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_hls")

vitis.dispose()

