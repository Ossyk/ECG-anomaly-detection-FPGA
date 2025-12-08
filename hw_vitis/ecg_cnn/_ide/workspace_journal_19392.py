# 2025-11-19T14:37:55.007581
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

vitis.dispose()

