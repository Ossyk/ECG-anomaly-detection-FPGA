# 2025-11-18T09:35:07.018497400
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "ecg_platform",hw_design = "$COMPONENT_LOCATION/../../../hw_vivado/bitstream/bitstream.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="ecg_firmware",platform = "$COMPONENT_LOCATION/../ecg_platform/export/ecg_platform/ecg_platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="ecg_firmware")
status = comp.import_files(from_loc="", files=[])

platform = client.get_component(name="ecg_platform")
status = platform.build()

comp = client.get_component(name="ecg_firmware")
comp.build()

comp.build()

vitis.dispose()

