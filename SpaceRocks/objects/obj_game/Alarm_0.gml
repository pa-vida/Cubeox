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

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 47ACE75E
/// @DnDInput : 2
/// @DnDArgument : "script" "spawn_off_camera"
/// @DnDArgument : "arg" "obj_asteroid"
/// @DnDArgument : "arg_1" "1"
/// @DnDSaveInfo : "script" "spawn_off_camera"
script_execute(spawn_off_camera, obj_asteroid, 1);