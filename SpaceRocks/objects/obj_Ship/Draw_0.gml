/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 445614C1
/// @DnDArgument : "target" "FIndex"
/// @DnDArgument : "instvar" "15"
FIndex = image_index;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 264624E2
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 119962BC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot_relative" "1"
/// @DnDArgument : "sprite" "spr_SpaceCat "
/// @DnDArgument : "frame" "FIndex"
/// @DnDSaveInfo : "sprite" "spr_SpaceCat"
draw_sprite_ext(spr_SpaceCat , FIndex, x + 0, y + 0, 1, 1, image_angle + 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 000888F0
/// @DnDInput : 2
/// @DnDArgument : "var" "offsetX"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "lengthdir_x"
/// @DnDArgument : "arg" "24"
/// @DnDArgument : "arg_1" "image_angle"
var offsetX = lengthdir_x(24, image_angle);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7555C27D
/// @DnDInput : 2
/// @DnDArgument : "var" "offsetY"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "lengthdir_y"
/// @DnDArgument : "arg" "24"
/// @DnDArgument : "arg_1" "image_angle"
var offsetY = lengthdir_y(24, image_angle);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3C3C0B8F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8 "
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "rot_relative" "1"
/// @DnDArgument : "sprite" "spr_ShipGun"
/// @DnDArgument : "frame" "FIndex"
/// @DnDSaveInfo : "sprite" "spr_ShipGun"
draw_sprite_ext(spr_ShipGun, FIndex, x + 0, y + 0, 0.8 , 0.8, image_angle + 0, $FFFFFF & $ffffff, 1);