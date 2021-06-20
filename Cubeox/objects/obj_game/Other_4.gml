/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1162F71C
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6F88DD96
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "steps" "room_speed"
	alarm_set(0, room_speed);

	/// @DnDAction : YoYo Games.Common.Macro
	/// @DnDVersion : 1
	/// @DnDHash : 304445ED
	/// @DnDInput : 4
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "macro" "left"
	/// @DnDArgument : "macro_1" "right"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "macro_2" "top"
	/// @DnDArgument : "macro_3" "bottom"
	/// @DnDArgument : "value_3" "1 "
	#macro left 0
	#macro right 1
	#macro top 0
	#macro bottom 1

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 0A3450F6
	/// @DnDParent : 1162F71C
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 4C5A89C0
		/// @DnDInput : 2
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "left"
		/// @DnDArgument : "option_1" "right"
		var choice = choose(left, right);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21E221B6
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "value" "left"
		if(choice == left)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 2EDF71C7
			/// @DnDParent : 21E221B6
			/// @DnDArgument : "var" "spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width * 0.3"
			var spawnPositionX = floor(random_range(0, room_width * 0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2DB81888
		/// @DnDParent : 0A3450F6
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 15D43D64
			/// @DnDParent : 2DB81888
			/// @DnDArgument : "var" "spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width * 0.7"
			/// @DnDArgument : "max" "room_width"
			var spawnPositionX = floor(random_range(room_width * 0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 01FEB246
		/// @DnDInput : 2
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option" "top "
		/// @DnDArgument : "option_1" "bottom"
		var choice = choose(top , bottom);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D2A0AD2
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "var" "choice "
		/// @DnDArgument : "value" "top"
		if(choice  == top)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 2C5AD08D
			/// @DnDParent : 4D2A0AD2
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height * 0.3"
			var spawnPositionY = floor(random_range(0, room_height * 0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0C6B8FC8
		/// @DnDParent : 0A3450F6
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 45E0D83E
			/// @DnDParent : 0C6B8FC8
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height * 0.7"
			/// @DnDArgument : "max" "room_height"
			var spawnPositionY = floor(random_range(room_height * 0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 747DA65F
		/// @DnDParent : 0A3450F6
		/// @DnDArgument : "xpos" "spawnPositionX"
		/// @DnDArgument : "ypos" "spawnPositionY"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		instance_create_layer(spawnPositionX, spawnPositionY, "Instances", obj_asteroid);
	}
}