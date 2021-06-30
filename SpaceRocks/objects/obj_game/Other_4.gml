/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0138FFE8
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_win"
if(room == rm_win)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2D01A479
	/// @DnDParent : 0138FFE8
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "msc_song"
	audio_stop_sound(msc_song);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 6AC997C2
	/// @DnDParent : 0138FFE8
	/// @DnDArgument : "soundid" "snd_win"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "snd_win"
	var l6AC997C2_0 = snd_win;
	if (!audio_is_playing(l6AC997C2_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 055BBF4A
		/// @DnDParent : 6AC997C2
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "snd_win"
		audio_play_sound(snd_win, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 390AE2FD
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_gameover"
if(room == rm_gameover)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7A537897
	/// @DnDParent : 390AE2FD
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "msc_song"
	audio_stop_sound(msc_song);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 3F8DC33E
	/// @DnDParent : 390AE2FD
	/// @DnDArgument : "soundid" "snd_lose"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "snd_lose"
	var l3F8DC33E_0 = snd_lose;
	if (!audio_is_playing(l3F8DC33E_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 680E6542
		/// @DnDParent : 3F8DC33E
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "snd_lose"
		audio_play_sound(snd_lose, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1162F71C
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 60A569D8
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "msc_song"
	var l60A569D8_0 = msc_song;
	if (audio_is_playing(l60A569D8_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 3CE61DE3
		/// @DnDParent : 60A569D8
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "msc_song"
		audio_stop_sound(msc_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 135354A0
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "msc_song"
	audio_play_sound(msc_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6F88DD96
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "steps" "room_speed"
	alarm_set(0, room_speed);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7062C57C
	/// @DnDInput : 2
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "script" "spawn_off_camera"
	/// @DnDArgument : "arg" "obj_asteroid"
	/// @DnDArgument : "arg_1" "12"
	/// @DnDSaveInfo : "script" "spawn_off_camera"
	script_execute(spawn_off_camera, obj_asteroid, 12);
}