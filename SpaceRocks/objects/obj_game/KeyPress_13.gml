/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5060D45A
/// @DnDArgument : "expr" "room"
var l5060D45A_0 = room;
switch(l5060D45A_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2925D9E0
	/// @DnDParent : 5060D45A
	/// @DnDArgument : "const" "rm_Game"
	case rm_Game:
	
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 683DB437
	/// @DnDParent : 5060D45A
	/// @DnDArgument : "const" " rm_TitleScreen "
	case  rm_TitleScreen :
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 458078B3
		/// @DnDParent : 683DB437
		/// @DnDArgument : "room" "rm_Game"
		/// @DnDSaveInfo : "room" "rm_Game"
		room_goto(rm_Game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 57EAA096
	/// @DnDParent : 5060D45A
	/// @DnDArgument : "const" "rm_GameOver"
	case rm_GameOver:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 1CBC7239
		/// @DnDParent : 57EAA096
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6E7037F0
	/// @DnDParent : 5060D45A
	/// @DnDArgument : "const" "rm_Win"
	case rm_Win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 7D439F5A
		/// @DnDParent : 6E7037F0
		game_restart();
		break;
}