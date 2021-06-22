/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07BEF148
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 69DA3C6B
	/// @DnDParent : 07BEF148
	exit;
}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 72B05F4B
/// @DnDArgument : "msg" ""spawn asteriod""
show_debug_message(string("spawn asteriod"));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 06859EA2
/// @DnDArgument : "steps" "4 * room_speed"
alarm_set(0, 4 * room_speed);

/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 6016C2E7
/// @DnDInput : 2
/// @DnDArgument : "macro" "verticalSpawnZone"
/// @DnDArgument : "macro_1" "horizontalSpawnZone"
/// @DnDArgument : "value_1" "1"
#macro verticalSpawnZone 0
#macro horizontalSpawnZone 1

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 5CDADCE4
/// @DnDInput : 2
/// @DnDArgument : "var" "spawnZoneChoice"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "verticalSpawnZone"
/// @DnDArgument : "option_1" "horizontalSpawnZone"
var spawnZoneChoice = choose(verticalSpawnZone, horizontalSpawnZone);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30E34A1A
/// @DnDArgument : "var" "spawnZoneChoice"
/// @DnDArgument : "value" "verticalSpawnZone"
if(spawnZoneChoice == verticalSpawnZone)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 1EED4429
	/// @DnDInput : 2
	/// @DnDParent : 30E34A1A
	/// @DnDArgument : "var" "spawnPositionX"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_width"
	var spawnPositionX = choose(room_width, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2BF8FF3D
	/// @DnDParent : 30E34A1A
	/// @DnDArgument : "var" "spawnPositionY "
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var spawnPositionY  = floor(random_range(0, room_height + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 01F7F395
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 0284A13A
	/// @DnDParent : 01F7F395
	/// @DnDArgument : "var" "spawnPositionY "
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_height"
	var spawnPositionY  = choose(room_height);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 446DFC86
	/// @DnDParent : 01F7F395
	/// @DnDArgument : "var" "spawnPositionX"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width"
	var spawnPositionX = floor(random_range(0, room_width + 1));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7074511B
/// @DnDArgument : "xpos" "spawnPositionX"
/// @DnDArgument : "ypos" "spawnPositionY"
/// @DnDArgument : "objectid" "obj_asteroid"
/// @DnDSaveInfo : "objectid" "obj_asteroid"
instance_create_layer(spawnPositionX, spawnPositionY, "Instances", obj_asteroid);