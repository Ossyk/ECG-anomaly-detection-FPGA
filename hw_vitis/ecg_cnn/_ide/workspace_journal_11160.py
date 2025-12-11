# 2025-12-08T22:21:35.810644600
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

vitis.dispose()

