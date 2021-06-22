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

	/// @DnDAction : YoYo Games.Common.Macro
	/// @DnDVersion : 1
	/// @DnDHash : 304445ED
	/// @DnDInput : 4
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "macro" "left"
	/// @DnDArgument : "macro_1" "right"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "macro_2" "top"
	/// @DnDArgument : "macro_3" "bottom"
	/// @DnDArgument : "value_3" "1 "
	#macro left 0
	#macro right 1
	#macro top 0
	#macro bottom 1

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 0A3450F6
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 4C5A89C0
		/// @DnDInput : 2
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "left"
		/// @DnDArgument : "option_1" "right"
		var choice = choose(left, right);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21E221B6
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "value" "left"
		if(choice == left)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 2EDF71C7
			/// @DnDParent : 21E221B6
			/// @DnDArgument : "var" "spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width * 0.3"
			var spawnPositionX = floor(random_range(0, room_width * 0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2DB81888
		/// @DnDParent : 0A3450F6
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 15D43D64
			/// @DnDParent : 2DB81888
			/// @DnDArgument : "var" "spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width * 0.7"
			/// @DnDArgument : "max" "room_width"
			var spawnPositionX = floor(random_range(room_width * 0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 01FEB246
		/// @DnDInput : 2
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "top "
		/// @DnDArgument : "option_1" "bottom"
		var choice = choose(top , bottom);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D2A0AD2
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice "
		/// @DnDArgument : "value" "top"
		if(choice  == top)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 2C5AD08D
			/// @DnDParent : 4D2A0AD2
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height * 0.3"
			var spawnPositionY = floor(random_range(0, room_height * 0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0C6B8FC8
		/// @DnDParent : 0A3450F6
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 45E0D83E
			/// @DnDParent : 0C6B8FC8
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height * 0.7"
			/// @DnDArgument : "max" "room_height"
			var spawnPositionY = floor(random_range(room_height * 0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 747DA65F
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "xpos" "spawnPositionX"
		/// @DnDArgument : "ypos" "spawnPositionY"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		instance_create_layer(spawnPositionX, spawnPositionY, "Instances", obj_asteroid);
	}
}