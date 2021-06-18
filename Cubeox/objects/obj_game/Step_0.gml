/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DD12048
/// @DnDArgument : "var" " room"
/// @DnDArgument : "value" "rm_Game"
if( room == rm_Game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 4B04AFBD
	/// @DnDParent : 5DD12048
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 16A5064C
		/// @DnDParent : 4B04AFBD
		/// @DnDArgument : "room" "rm_GameOver"
		/// @DnDSaveInfo : "room" "rm_GameOver"
		room_goto(rm_GameOver);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 31263C17
	/// @DnDParent : 5DD12048
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 313E33AC
		/// @DnDParent : 31263C17
		/// @DnDArgument : "room" "rm_Win"
		/// @DnDSaveInfo : "room" "rm_Win"
		room_goto(rm_Win);
	}
}