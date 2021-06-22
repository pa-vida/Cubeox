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
	/// @DnDSaveInfo : "soundid" "snd_lose"
	var l6A88311B_0 = snd_Win;
	if (!audio_is_playing(l6A88311B_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7262FD2F
		/// @DnDParent : 6A88311B
		/// @DnDArgument : "soundid" "snd_Win"
		/// @DnDSaveInfo : "soundid" "snd_lose"
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

	/// @DnDAction : YoYo Games.Common.Macro
	/// @DnDVersion : 1
	/// @DnDHash : 346A3891
	/// @DnDInput : 4
	/// @DnDParent : 4ABF4597
	/// @DnDArgument : "macro" "left"
	/// @DnDArgument : "macro_1" "right"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "macro_2" "top"
	/// @DnDArgument : "macro_3" "bottom"
	/// @DnDArgument : "value_3" "1"
	#macro left 0
	#macro right 1
	#macro top 0
	#macro bottom 1

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4D38827B
	/// @DnDComment : Spawn asteroids 6 times.
	/// @DnDParent : 4ABF4597
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 15C1ACC3
		/// @DnDComment : Choose between left and right...
		/// @DnDInput : 2
		/// @DnDParent : 4D38827B
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "left"
		/// @DnDArgument : "option_1" "right"
		var choice = choose(left, right);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 552B93CB
		/// @DnDParent : 4D38827B
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "value" "left"
		if(choice == left)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4A2E8B3F
			/// @DnDParent : 552B93CB
			/// @DnDArgument : "var" "spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width * 0.3"
			var spawnPositionX = floor(random_range(0, room_width * 0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 20B933A0
		/// @DnDComment : Spawn on right area.
		/// @DnDParent : 4D38827B
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 2EF2ECDB
			/// @DnDParent : 20B933A0
			/// @DnDArgument : "var" "spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width * 0.7"
			/// @DnDArgument : "max" "room_width"
			var spawnPositionX = floor(random_range(room_width * 0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 58615015
		/// @DnDComment : Choose between top or bottom of room.
		/// @DnDInput : 2
		/// @DnDParent : 4D38827B
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "top"
		/// @DnDArgument : "option_1" "bottom"
		var choice = choose(top, bottom);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 166ECCAE
		/// @DnDParent : 4D38827B
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "value" "top"
		if(choice == top)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4BFF7C3B
			/// @DnDParent : 166ECCAE
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height * 0.3"
			var spawnPositionY = floor(random_range(0, room_height * 0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 43F64296
		/// @DnDComment : spawn at bottom area.
		/// @DnDParent : 4D38827B
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 23C9C689
			/// @DnDParent : 43F64296
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height * 0.7"
			/// @DnDArgument : "max" "room_height"
			var spawnPositionY = floor(random_range(room_height * 0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 030CAB2C
		/// @DnDParent : 4D38827B
		/// @DnDArgument : "xpos" "spawnPositionX"
		/// @DnDArgument : "ypos" "spawnPositionY"
		/// @DnDArgument : "objectid" "obj_Asteroid"
		/// @DnDSaveInfo : "objectid" "obj_Asteroid"
		instance_create_layer(spawnPositionX, spawnPositionY, "Instances", obj_Asteroid);
	}
}