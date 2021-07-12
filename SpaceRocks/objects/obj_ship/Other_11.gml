/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 47F222B6
/// @DnDArgument : "soundid" "snd_shipDestroyed"
/// @DnDSaveInfo : "soundid" "snd_shipDestroyed"
audio_play_sound(snd_shipDestroyed, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 64E4823B
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 088BB10A
	/// @DnDParent : 64E4823B
	/// @DnDArgument : "lives" "-1"
	
	__dnd_lives = real(-1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 496A0F07
	/// @DnDParent : 64E4823B
	/// @DnDArgument : "steps" "room_speed"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 73AFFF18
instance_destroy();