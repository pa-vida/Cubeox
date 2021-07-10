/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 279D2276
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4B18C681
	/// @DnDParent : 279D2276
	/// @DnDArgument : "score" "+10 "
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(+10 );
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3A8680EE
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 027DDC4A
	/// @DnDParent : 3A8680EE
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 608C6164
	/// @DnDParent : 3A8680EE
	/// @DnDArgument : "var" " sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Large"
	if( sprite_index == spr_Asteroid_Large)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 3499DEB9
		/// @DnDParent : 608C6164
		/// @DnDArgument : "soundid" "snd_bangAsteriodLrg"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodLrg"
		audio_play_sound(snd_bangAsteriodLrg, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 1ABEB9E1
		/// @DnDParent : 608C6164
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 58156BDE
			/// @DnDParent : 1ABEB9E1
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_Asteroid"
			/// @DnDArgument : "layer" ""Instances"               "
			/// @DnDSaveInfo : "objectid" "obj_Asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances"               , obj_Asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B4C7FC7
			/// @DnDParent : 1ABEB9E1
			/// @DnDArgument : "expr" "spr_Asteroid_Medium"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_Asteroid_Medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A0F9FBF
	/// @DnDParent : 3A8680EE
	/// @DnDArgument : "var" " sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Medium "
	if( sprite_index == spr_Asteroid_Medium )
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 62D013E8
		/// @DnDParent : 3A0F9FBF
		/// @DnDArgument : "soundid" "snd_bangAsteriodLrg"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodLrg"
		audio_play_sound(snd_bangAsteriodLrg, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 5F4F5916
		/// @DnDParent : 3A0F9FBF
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 217FD5A4
			/// @DnDParent : 5F4F5916
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_Asteroid"
			/// @DnDSaveInfo : "objectid" "obj_Asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_Asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 33560A15
			/// @DnDParent : 5F4F5916
			/// @DnDArgument : "expr" "spr_Asteroid_Small"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_Asteroid_Small;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70F50FE4
	/// @DnDParent : 3A8680EE
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Small"
	if(sprite_index == spr_Asteroid_Small)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5DD17F29
		/// @DnDParent : 70F50FE4
		/// @DnDArgument : "soundid" "snd_bangAsteriodSmll"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodSmll"
		audio_play_sound(snd_bangAsteriodSmll, 0, 0);
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 2FDE1728
	/// @DnDParent : 3A8680EE
	/// @DnDArgument : "times" " 10 "
	repeat( 10 )
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 68B5FF30
		/// @DnDParent : 2FDE1728
		/// @DnDArgument : "xpos" " 0"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "obj_debris"
		instance_create_layer(x +  0, y + 0, "Instances", obj_debris);
	}