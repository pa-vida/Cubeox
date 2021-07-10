/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2905C51E
/// @DnDArgument : "soundid" "snd_shipDestroyed"
/// @DnDSaveInfo : "soundid" "snd_shipDestroyed"
audio_play_sound(snd_shipDestroyed, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 1A63B5B1
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 50DDA544
	/// @DnDParent : 1A63B5B1
	/// @DnDArgument : "lives" "-1 "
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1 );

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4A3C62D3
	/// @DnDParent : 1A63B5B1
	/// @DnDArgument : "steps" "room_speed "
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed );
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7EE83B35
instance_destroy();