/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7FA15351
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_bullet"
/// @DnDSaveInfo : "objectid" "obj_bullet"
var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43ED8467
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newBullet.direction "
newBullet.direction  = image_angle;