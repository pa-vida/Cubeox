/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7ABB0495
/// @DnDArgument : "soundid" "snd_shipDestroyed"
/// @DnDSaveInfo : "soundid" "snd_shipDestroyed"
audio_play_sound(snd_shipDestroyed, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 0B71690E
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1A6BA3BC
	/// @DnDParent : 0B71690E
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3C691A58
	/// @DnDParent : 0B71690E
	/// @DnDArgument : "steps" "room_speed"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 08879BBB
instance_destroy();