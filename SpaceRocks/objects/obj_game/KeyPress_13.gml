/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 49C1377D
/// @DnDArgument : "expr" "room"
var l49C1377D_0 = room;
switch(l49C1377D_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5EAB94C7
	/// @DnDParent : 49C1377D
	/// @DnDArgument : "const" "rm_titlescreen"
	case rm_titlescreen:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3474D23B
		/// @DnDParent : 5EAB94C7
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "rm_game"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4013F6F8
	/// @DnDParent : 49C1377D
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 63B9BB82
		/// @DnDParent : 4013F6F8
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4649F92E
	/// @DnDParent : 49C1377D
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 5735CC8D
		/// @DnDParent : 4649F92E
		game_restart();
		break;
}