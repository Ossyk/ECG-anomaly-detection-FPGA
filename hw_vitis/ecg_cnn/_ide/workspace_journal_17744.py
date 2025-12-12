# 2025-12-12T08:04:43.185421300
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

vitis.dispose()

