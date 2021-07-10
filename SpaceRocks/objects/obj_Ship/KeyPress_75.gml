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
/// @DnDInput : 3
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "expr_1" ""ally" "
/// @DnDArgument : "expr_2" "self"
/// @DnDArgument : "var" "newBullet.direction "
/// @DnDArgument : "var_1" "newBullet.faction"
/// @DnDArgument : "var_2" "newBullet.creator"
newBullet.direction  = image_angle;
newBullet.faction = "ally" ;
newBullet.creator = self;