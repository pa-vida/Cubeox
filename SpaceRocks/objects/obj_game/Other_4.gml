/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 440B092D
/// @DnDArgument : "var" " room"
/// @DnDArgument : "value" "rm_Win"
if( room == rm_Win)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4ADEE9B2
	/// @DnDParent : 440B092D
	/// @DnDArgument : "soundid" "snd_song"
	/// @DnDSaveInfo : "soundid" "snd_song"
	audio_stop_sound(snd_song);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 6A88311B
	/// @DnDParent : 440B092D
	/// @DnDArgument : "soundid" "snd_Win"
	/// @DnDArgument : "not" "1"
	var l6A88311B_0 = snd_Win;
	if (!audio_is_playing(l6A88311B_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7262FD2F
		/// @DnDParent : 6A88311B
		/// @DnDArgument : "soundid" "snd_Win"
		audio_play_sound(snd_Win, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43EDA9AF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_GameOver"
if(room == rm_GameOver)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2058404D
	/// @DnDParent : 43EDA9AF
	/// @DnDArgument : "soundid" "snd_song"
	/// @DnDSaveInfo : "soundid" "snd_song"
	audio_stop_sound(snd_song);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 5B4E1550
	/// @DnDParent : 43EDA9AF
	/// @DnDArgument : "soundid" "snd_lose"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "snd_lose"
	var l5B4E1550_0 = snd_lose;
	if (!audio_is_playing(l5B4E1550_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7CF1DC04
		/// @DnDParent : 5B4E1550
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "snd_lose"
		audio_play_sound(snd_lose, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4ABF4597
/// @DnDComment : Make sure this only happens for rm_game.
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_Game"
if(room == rm_Game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 7D53981F
	/// @DnDParent : 4ABF4597
	/// @DnDArgument : "soundid" "snd_song"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "snd_song"
	var l7D53981F_0 = snd_song;
	if (!audio_is_playing(l7D53981F_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0D5A3372
		/// @DnDParent : 7D53981F
		/// @DnDArgument : "soundid" "snd_song"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_song"
		audio_play_sound(snd_song, 0, 1);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5B63714F
	/// @DnDParent : 4ABF4597
	/// @DnDArgument : "steps" "room_speed"
	alarm_set(0, room_speed);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2E3A3605
	/// @DnDInput : 2
	/// @DnDParent : 4ABF4597
	/// @DnDArgument : "script" "SpawnOffCamera"
	/// @DnDArgument : "arg" " obj_Asteroid"
	/// @DnDArgument : "arg_1" "24"
	/// @DnDSaveInfo : "script" "SpawnOffCamera"
	script_execute(SpawnOffCamera,  obj_Asteroid, 24);
}