/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F641A00
/// @DnDInput : 2
/// @DnDArgument : "var" "bulletPosX"
/// @DnDArgument : "value" "x"
/// @DnDArgument : "var_1" "bullsetPosY"
/// @DnDArgument : "value_1" "y"
var bulletPosX = x;
var bullsetPosY = y;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5E4C2A8D
/// @DnDInput : 6
/// @DnDApplyTo : {obj_Camera}
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "point_in_rectangle"
/// @DnDArgument : "arg" "bulletPosX"
/// @DnDArgument : "arg_1" "bullsetPosY "
/// @DnDArgument : "arg_2" "cameraX "
/// @DnDArgument : "arg_3" "cameraY  "
/// @DnDArgument : "arg_4" "cameraX + cameraWidth"
/// @DnDArgument : "arg_5" "cameraY + cameraHeight"
with(obj_Camera) {
	var bulletWithinCamera = point_in_rectangle(bulletPosX, bullsetPosY , cameraX , cameraY  , cameraX + cameraWidth, cameraY + cameraHeight);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1846DDE7
/// @DnDArgument : "var" "bulletWithinCamera"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(bulletWithinCamera == true))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3549F850
	/// @DnDBreak : 1

	/// @DnDParent : 1846DDE7
	instance_destroy();
}