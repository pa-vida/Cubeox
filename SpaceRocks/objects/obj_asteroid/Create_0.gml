/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 48D4DE50
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 18F74BF8
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spr_asteroids_small"
/// @DnDArgument : "option_1" "spr_asteroids_medium"
/// @DnDArgument : "option_2" "spr_asteroids_large "
sprite_index = choose(spr_asteroids_small, spr_asteroids_medium, spr_asteroids_large );

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 351D5C30
/// @DnDArgument : "var" "direction "
/// @DnDArgument : "max" "359 "
direction  = (random_range(0, 359 ));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5A51F7B1
/// @DnDArgument : "var" " image_angle "
/// @DnDArgument : "max" "359 "
 image_angle  = (random_range(0, 359 ));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3BF900D9
/// @DnDArgument : "speed" "1"
speed = 1;