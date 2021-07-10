/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 12158183
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 2B8698B0
	/// @DnDParent : 12158183
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6CAFDCAE
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 41032718
	/// @DnDParent : 6CAFDCAE
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01C7D8EB
	/// @DnDParent : 6CAFDCAE
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroids_large"
	if(sprite_index == spr_asteroids_large)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7D0D0ED9
		/// @DnDParent : 01C7D8EB
		/// @DnDArgument : "soundid" "smd_MedLarDestroy"
		/// @DnDSaveInfo : "soundid" "smd_MedLarDestroy"
		audio_play_sound(smd_MedLarDestroy, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 7A76D629
		/// @DnDParent : 01C7D8EB
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 09341179
			/// @DnDParent : 7A76D629
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "obj_asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A738A15
			/// @DnDParent : 7A76D629
			/// @DnDArgument : "expr" "spr_asteroids_medium "
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_asteroids_medium ;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11B5847A
	/// @DnDParent : 6CAFDCAE
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroids_medium"
	if(sprite_index == spr_asteroids_medium)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5256A866
		/// @DnDParent : 11B5847A
		/// @DnDArgument : "soundid" "smd_MedLarDestroy"
		/// @DnDSaveInfo : "soundid" "smd_MedLarDestroy"
		audio_play_sound(smd_MedLarDestroy, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 6EA61120
		/// @DnDParent : 11B5847A
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 10E3C474
			/// @DnDParent : 6EA61120
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "obj_asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C9F9FE5
			/// @DnDParent : 6EA61120
			/// @DnDArgument : "expr" "spr_asteroids_small"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_asteroids_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 37E7B252
	/// @DnDParent : 6CAFDCAE
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3478587F
		/// @DnDParent : 37E7B252
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "obj_debris"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BEAE874
	/// @DnDParent : 6CAFDCAE
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroids_small"
	if(sprite_index == spr_asteroids_small)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 030DA763
		/// @DnDParent : 7BEAE874
		/// @DnDArgument : "soundid" "smd_SmallDestroy"
		/// @DnDSaveInfo : "soundid" "smd_SmallDestroy"
		audio_play_sound(smd_SmallDestroy, 0, 0);
	}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 52A4CD3E
instance_destroy();