/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E9ED39B
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 20114F82
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 17900B12
	/// @DnDParent : 20114F82
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77EBA295
	/// @DnDParent : 20114F82
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroids_large"
	if(sprite_index == spr_asteroids_large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 46E0FC59
		/// @DnDParent : 77EBA295
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 284B6DB3
			/// @DnDParent : 46E0FC59
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "obj_asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25DBE8C9
			/// @DnDParent : 46E0FC59
			/// @DnDArgument : "expr" "spr_asteroids_medium "
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_asteroids_medium ;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BC89DA5
	/// @DnDParent : 20114F82
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroids_medium"
	if(sprite_index == spr_asteroids_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 7BF6BFD4
		/// @DnDParent : 5BC89DA5
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5D662372
			/// @DnDParent : 7BF6BFD4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteriod"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "obj_asteroid"
			var newAsteriod = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DE5F331
			/// @DnDParent : 7BF6BFD4
			/// @DnDArgument : "expr" "spr_asteroids_small"
			/// @DnDArgument : "var" "newAsteriod.sprite_index"
			newAsteriod.sprite_index = spr_asteroids_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 46803B0C
	/// @DnDParent : 20114F82
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0605BF96
		/// @DnDParent : 46803B0C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "obj_debris"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}