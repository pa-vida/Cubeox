/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2270CB39
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 77074ACC
	/// @DnDParent : 2270CB39
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 523048E0
		/// @DnDParent : 77074ACC
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "rm_gameover"
		room_goto(rm_gameover);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5F974E80
	/// @DnDParent : 2270CB39
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 234C83A4
		/// @DnDParent : 5F974E80
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "rm_win"
		room_goto(rm_win);
	}
}