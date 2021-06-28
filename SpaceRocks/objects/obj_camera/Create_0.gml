/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7DE55F80
/// @DnDInput : 5
/// @DnDArgument : "expr_2" "obj_ship"
/// @DnDArgument : "expr_3" "640"
/// @DnDArgument : "expr_4" "480"
/// @DnDArgument : "var" "cameraX"
/// @DnDArgument : "var_1" "cameraY"
/// @DnDArgument : "var_2" "target"
/// @DnDArgument : "var_3" "cameraWidth"
/// @DnDArgument : "var_4" "cameraHeight"
cameraX = 0;
cameraY = 0;
target = obj_ship;
cameraWidth = 640;
cameraHeight = 480;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7E184C70
/// @DnDInput : 2
/// @DnDArgument : "function" "display_set_gui_size"
/// @DnDArgument : "arg" "cameraWidth"
/// @DnDArgument : "arg_1" "cameraHeight"
display_set_gui_size(cameraWidth, cameraHeight);