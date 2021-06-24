/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5286280A
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7569393C
	/// @DnDParent : 5286280A
	/// @DnDArgument : "score" "+10 "
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(+10 );
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6B154A1E
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 1E54D151
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3020192E
	/// @DnDParent : 1E54D151
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B5EC036
	/// @DnDParent : 1E54D151
	/// @DnDArgument : "var" " sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Large"
	if( sprite_index == spr_Asteroid_Large)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 76B8C2D5
		/// @DnDParent : 5B5EC036
		/// @DnDArgument : "soundid" "snd_bangAsteriodLrg"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodLrg"
		audio_play_sound(snd_bangAsteriodLrg, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 65BA4CD6
		/// @DnDParent : 5B5EC036
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4A50FA28
			/// @DnDParent : 65BA4CD6
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_Asteroid"
			/// @DnDSaveInfo : "objectid" "obj_Asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_Asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79C35F4D
			/// @DnDParent : 65BA4CD6
			/// @DnDArgument : "expr" "spr_Asteroid_Medium"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_Asteroid_Medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37FCF096
	/// @DnDParent : 1E54D151
	/// @DnDArgument : "var" " sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Medium "
	if( sprite_index == spr_Asteroid_Medium )
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 2D68C88C
		/// @DnDParent : 37FCF096
		/// @DnDArgument : "soundid" "snd_bangAsteriodLrg"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodLrg"
		audio_play_sound(snd_bangAsteriodLrg, 0, 0);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 72DD25DB
		/// @DnDParent : 37FCF096
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1C657B0A
			/// @DnDParent : 72DD25DB
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_Asteroid"
			/// @DnDSaveInfo : "objectid" "obj_Asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_Asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0198FE5F
			/// @DnDParent : 72DD25DB
			/// @DnDArgument : "expr" "spr_Asteroid_Small"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_Asteroid_Small;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A918C67
	/// @DnDParent : 1E54D151
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_Asteroid_Small"
	if(sprite_index == spr_Asteroid_Small)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0C4E8103
		/// @DnDParent : 3A918C67
		/// @DnDArgument : "soundid" "snd_bangAsteriodSmll"
		/// @DnDSaveInfo : "soundid" "snd_bangAsteriodSmll"
		audio_play_sound(snd_bangAsteriodSmll, 0, 0);
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 35851883
	/// @DnDParent : 1E54D151
	/// @DnDArgument : "times" " 10 "
	repeat( 10 )
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3B048C4E
		/// @DnDParent : 35851883
		/// @DnDArgument : "xpos" " 0"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "obj_debris"
		instance_create_layer(x +  0, y + 0, "Instances", obj_debris);
	}
}