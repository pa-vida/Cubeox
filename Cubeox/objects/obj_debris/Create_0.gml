/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1F553A3F
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 10EF23A3
/// @DnDArgument : "speed" "1"
speed = 1;