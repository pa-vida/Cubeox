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
/// @DnDArgument : "steps" "room_speed"
alarm_set(0, room_speed);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 133E7D32
/// @DnDInput : 2
/// @DnDArgument : "script" "SpawnOffCamera"
/// @DnDArgument : "arg" "obj_Asteroid"
/// @DnDArgument : "arg_1" "1 "
/// @DnDSaveInfo : "script" "SpawnOffCamera"
script_execute(SpawnOffCamera, obj_Asteroid, 1 );