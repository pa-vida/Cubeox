/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DFD6065
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_Game"
if(!(room == rm_Game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 52E4E90A
	/// @DnDParent : 1DFD6065
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 65BCB5BB
/// @DnDArgument : "steps" "4 * room_speed"
alarm_set(0, 4 * room_speed);

/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 39F6F5DA
/// @DnDInput : 2
/// @DnDArgument : "macro" " verticalSpawnZone"
/// @DnDArgument : "macro_1" "horizontalSpawnZone"
/// @DnDArgument : "value_1" "1"
#macro  verticalSpawnZone 0
#macro horizontalSpawnZone 1

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 18B5C43B
/// @DnDInput : 2
/// @DnDArgument : "var" "spawnZoneChoice"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" " verticalSpawnZone"
/// @DnDArgument : "option_1" "horizontalSpawnZone"
var spawnZoneChoice = choose( verticalSpawnZone, horizontalSpawnZone);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 043A2752
/// @DnDArgument : "var" " spawnZoneChoice"
/// @DnDArgument : "value" "verticalSpawnZone"
if( spawnZoneChoice == verticalSpawnZone)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 7C9BBEBE
	/// @DnDComment : Left or right side.
	/// @DnDInput : 2
	/// @DnDParent : 043A2752
	/// @DnDArgument : "var" "spawnPositionX"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_width"
	var spawnPositionX = choose(room_width, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3277C9FA
	/// @DnDComment : Where vertically on the strip.
	/// @DnDParent : 043A2752
	/// @DnDArgument : "var" "spawnPositionY"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var spawnPositionY = floor(random_range(0, room_height + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 66414C15
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 6B1CCD63
	/// @DnDComment : Top or bottom side.
	/// @DnDInput : 2
	/// @DnDParent : 66414C15
	/// @DnDArgument : "var" "spawnPositionY"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_height"
	var spawnPositionY = choose(room_height, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 57C51418
	/// @DnDComment : Where horizontally on the strip.
	/// @DnDParent : 66414C15
	/// @DnDArgument : "var" "spawnPositionX"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width"
	var spawnPositionX = floor(random_range(0, room_width + 1));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 25E8CBFC
/// @DnDArgument : "xpos" " spawnPositionX"
/// @DnDArgument : "ypos" "spawnPositionY"
/// @DnDArgument : "objectid" "obj_Asteroid"
/// @DnDSaveInfo : "objectid" "obj_Asteroid"
instance_create_layer( spawnPositionX, spawnPositionY, "Instances", obj_Asteroid);