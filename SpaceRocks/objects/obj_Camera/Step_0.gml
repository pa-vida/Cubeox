/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4071A287
/// @DnDArgument : "obj" "target  "
var l4071A287_0 = false;
l4071A287_0 = instance_exists(target  );
if(l4071A287_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45400E48
	/// @DnDInput : 2
	/// @DnDParent : 4071A287
	/// @DnDArgument : "expr" "clamp(target.x - (cameraWidth/2), 0, room_width - cameraWidth)"
	/// @DnDArgument : "expr_1" "clamp(target.y -(cameraHeight / 2), 0, room_height - cameraHeight)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = clamp(target.x - (cameraWidth/2), 0, room_width - cameraWidth);
	cameraY = clamp(target.y -(cameraHeight / 2), 0, room_height - cameraHeight);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0F0E5F25
	/// @DnDInput : 3
	/// @DnDParent : 4071A287
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera[0]"
	/// @DnDArgument : "arg_1" "cameraX"
	/// @DnDArgument : "arg_2" "cameraY"
	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 068B68CA
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_1""
/// @DnDArgument : "arg_1" "cameraX * 0.5"
/// @DnDArgument : "arg_2" "cameraY * 0.5"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_1", cameraX * 0.5, cameraY * 0.5);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4DE0C2A5
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_2""
/// @DnDArgument : "arg_1" "cameraX * 0.7"
/// @DnDArgument : "arg_2" "cameraY * 0.7"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_2", cameraX * 0.7, cameraY * 0.7);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6BF2C6AD
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_0""
/// @DnDArgument : "arg_1" "cameraX * 0.9"
/// @DnDArgument : "arg_2" "cameraY * 0.9"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_0", cameraX * 0.9, cameraY * 0.9);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 70BCB188
/// @DnDInput : 3
/// @DnDArgument : "script" "ChangeLayerPosition"
/// @DnDArgument : "arg" ""Parallax_3 ""
/// @DnDArgument : "arg_1" "cameraX * 0.98"
/// @DnDArgument : "arg_2" "cameraY * 0.98"
/// @DnDSaveInfo : "script" "ChangeLayerPosition"
script_execute(ChangeLayerPosition, "Parallax_3 ", cameraX * 0.98, cameraY * 0.98);