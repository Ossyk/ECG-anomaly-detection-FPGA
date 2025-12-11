set ModuleHierarchy {[{
"Name" : "ecg_cnn", "RefName" : "ecg_cnn","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_conv1d_relu_fu_406", "RefName" : "conv1d_relu","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CONV1_F_CONV1_X","RefName" : "CONV1_F_CONV1_X","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_maxpool_fu_432", "RefName" : "maxpool","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "POOL_F_POOL_X","RefName" : "POOL_F_POOL_X","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_conv1d_relu2_fu_448", "RefName" : "conv1d_relu2","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CONV2_F_CONV2_X","RefName" : "CONV2_F_CONV2_X","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_gap_fu_506", "RefName" : "gap","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "GAP_F","RefName" : "GAP_F","ID" : "8","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_gap_Pipeline_VITIS_LOOP_115_1_fu_226", "RefName" : "gap_Pipeline_VITIS_LOOP_115_1","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_115_1","RefName" : "VITIS_LOOP_115_1","ID" : "10","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_dense_relu_fu_530", "RefName" : "dense_relu","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "D1_U","RefName" : "D1_U","ID" : "12","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dense_relu_Pipeline_VITIS_LOOP_146_2_fu_380", "RefName" : "dense_relu_Pipeline_VITIS_LOOP_146_2","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_146_2","RefName" : "VITIS_LOOP_146_2","ID" : "14","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_dense_linear_fu_574", "RefName" : "dense_linear","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_177_2","RefName" : "VITIS_LOOP_177_2","ID" : "16","Type" : "pipeline"},]},
	{"Name" : "grp_exp_12_3_s_fu_594", "RefName" : "exp_12_3_s","ID" : "17","Type" : "pipeline"},]
}]}