/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 05CC70C0
/// @DnDArgument : "soundid" "snd_shipDestroyed"
/// @DnDSaveInfo : "soundid" "snd_shipDestroyed"
audio_play_sound(snd_shipDestroyed, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 598AD93D
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 57C46A42
	/// @DnDParent : 598AD93D
	/// @DnDArgument : "lives" "-1 "
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1 );

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 54C4B03A
	/// @DnDParent : 598AD93D
	/// @DnDArgument : "steps" "room_speed "
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed );
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0CB29907
instance_destroy();