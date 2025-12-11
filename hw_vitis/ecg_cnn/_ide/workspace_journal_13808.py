# 2025-12-11T09:24:18.234789300
import vitis

client = vitis.create_client()
client.set_workspace(path="ecg_cnn")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "ecg_platform_",hw_design = "$COMPONENT_LOCATION/../../../hw_vivado/bitstream/bitstream2.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="ecg_firmware_",platform = "$COMPONENT_LOCATION/../ecg_platform_/export/ecg_platform_/ecg_platform_.xpfm",domain = "standalone_microblaze_0")

platform = client.get_component(name="ecg_platform_")
status = platform.build()

comp = client.get_component(name="ecg_firmware_")
comp.build()

vitis.dispose()

