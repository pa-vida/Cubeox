/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CE6C4D3
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 06A8DD18
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4C9B0BA6
	/// @DnDParent : 06A8DD18
	/// @DnDArgument : "score" "+10 "
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(+10 );
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 14CD5C98
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 764FC15E
	/// @DnDParent : 14CD5C98
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13BF1D07
	/// @DnDParent : 14CD5C98
	/// @DnDArgument : "var" " sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Large"
	if( sprite_index == spr_Asteroid_Large)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 39D87ABE
		/// @DnDParent : 13BF1D07
		/// @DnDArgument : "soundid" "snd_bangAsteriodLrg"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodLrg"
		audio_play_sound(snd_bangAsteriodLrg, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 3EB2DAD3
		/// @DnDParent : 13BF1D07
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 310E58BF
			/// @DnDParent : 3EB2DAD3
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
			/// @DnDHash : 0D7F017F
			/// @DnDParent : 3EB2DAD3
			/// @DnDArgument : "expr" "spr_Asteroid_Medium"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_Asteroid_Medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02C3D983
	/// @DnDParent : 14CD5C98
	/// @DnDArgument : "var" " sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Medium "
	if( sprite_index == spr_Asteroid_Medium )
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 4E698BCC
		/// @DnDParent : 02C3D983
		/// @DnDArgument : "soundid" "snd_bangAsteriodLrg"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodLrg"
		audio_play_sound(snd_bangAsteriodLrg, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 2C125163
		/// @DnDParent : 02C3D983
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 0EAB57F7
			/// @DnDParent : 2C125163
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_Asteroid"
			/// @DnDSaveInfo : "objectid" "obj_Asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_Asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0FF4DDE3
			/// @DnDParent : 2C125163
			/// @DnDArgument : "expr" "spr_Asteroid_Small"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_Asteroid_Small;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D5CCFFE
	/// @DnDParent : 14CD5C98
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Small"
	if(sprite_index == spr_Asteroid_Small)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1B22D828
		/// @DnDParent : 2D5CCFFE
		/// @DnDArgument : "soundid" "snd_bangAsteriodSmll"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodSmll"
		audio_play_sound(snd_bangAsteriodSmll, 0, 0);
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 11FD61FB
	/// @DnDParent : 14CD5C98
	/// @DnDArgument : "times" " 10 "
	repeat( 10 )
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 481AD6E5
		/// @DnDParent : 11FD61FB
		/// @DnDArgument : "xpos" " 0"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "obj_debris"
		instance_create_layer(x +  0, y + 0, "Instances", obj_debris);
	}
}