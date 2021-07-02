/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0581E76A
/// @DnDArgument : "obj" "target"
var l0581E76A_0 = false;
l0581E76A_0 = instance_exists(target);
if(l0581E76A_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FD4189D
	/// @DnDInput : 2
	/// @DnDParent : 0581E76A
	/// @DnDArgument : "expr" "clamp( target.x - (cameraWidth/2), 0, room_width - cameraWidth)"
	/// @DnDArgument : "expr_1" "clamp( target.y - (cameraHeight/2), 0, room_height - cameraHeight)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = clamp( target.x - (cameraWidth/2), 0, room_width - cameraWidth);
	cameraY = clamp( target.y - (cameraHeight/2), 0, room_height - cameraHeight);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7C47ABF2
	/// @DnDInput : 3
	/// @DnDParent : 0581E76A
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX"
	/// @DnDArgument : "arg_2" "cameraY"
	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2B4663D4
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraX * 0.9"
/// @DnDArgument : "arg_2" "cameraY * 0.9"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_0", cameraX * 0.9, cameraY * 0.9);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1FEEF527
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraX * 0.6"
/// @DnDArgument : "arg_2" "cameraY * 0.6"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_1", cameraX * 0.6, cameraY * 0.6);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 230824F8
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraX * 0.69"
/// @DnDArgument : "arg_2" "cameraY * 0.69"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_2", cameraX * 0.69, cameraY * 0.69);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 03FC0AE3
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_3""
/// @DnDArgument : "arg_1" "cameraX * 0.98"
/// @DnDArgument : "arg_2" "cameraY * 0.98"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_3", cameraX * 0.98, cameraY * 0.98);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5EAC1E7D
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Background""
/// @DnDArgument : "arg_1" "cameraX * 0.9"
layer_x("Background", cameraX * 0.9);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0C522873
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Background""
/// @DnDArgument : "arg_1" "cameraY * 0.9"
layer_y("Background", cameraY * 0.9);