/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 7A47EFEC
/// @DnDInput : 3
/// @DnDArgument : "var" " sprite_index"
/// @DnDArgument : "option" "spr_Asteroid_Small"
/// @DnDArgument : "option_1" "spr_Asteroid_Medium"
/// @DnDArgument : "option_2" "spr_Asteroid_Large"
 sprite_index = choose(spr_Asteroid_Small, spr_Asteroid_Medium, spr_Asteroid_Large);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 00064FCB
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 61447B40
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
image_angle = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 40E4A96B
/// @DnDArgument : "speed" "1"
speed = 1;