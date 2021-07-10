/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C49AC8B
/// @DnDInput : 2
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "yy"
/// @DnDArgument : "value_1" "y"
var xx = x;
var yy = y;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1EF164B9
/// @DnDInput : 6
/// @DnDApplyTo : {obj_camera}
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_in_rectangle"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "cameraX"
/// @DnDArgument : "arg_3" "cameraY"
/// @DnDArgument : "arg_4" "cameraX + cameraWidth"
/// @DnDArgument : "arg_5" "cameraY + cameraHeight"
with(obj_camera) {
	var bulletWithinCamera = point_in_rectangle(x, y, cameraX, cameraY, cameraX + cameraWidth, cameraY + cameraHeight);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0601E281
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(bulletWithinCamera == true))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13B54907
	/// @DnDParent : 0601E281
	instance_destroy();
}