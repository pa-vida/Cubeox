/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 52F640FB
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "SpawnOffCamera"
/// @DnDArgument : "arg" "_objectToSpawn"
/// @DnDArgument : "arg_1" "_numberToSpawn"
function SpawnOffCamera(_objectToSpawn, _numberToSpawn) 
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 1D43D951
	/// @DnDParent : 52F640FB
	/// @DnDArgument : "times" "_numberToSpawn"
	repeat(_numberToSpawn)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58CDF0F3
		/// @DnDInput : 2
		/// @DnDParent : 1D43D951
		/// @DnDArgument : "var" "boundaryCheck"
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var_1" "padding"
		/// @DnDArgument : "value_1" "64"
		var boundaryCheck = true;
		var padding = 64;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 6B09EBBF
		/// @DnDParent : 1D43D951
		/// @DnDArgument : "var" "boundaryCheck"
		/// @DnDArgument : "value" "true"
		while ((boundaryCheck == true)) {
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 1D98FFAA
			/// @DnDParent : 6B09EBBF
			/// @DnDArgument : "var" " spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width"
			var  spawnPositionX = floor(random_range(0, room_width + 1));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 667D3A05
			/// @DnDParent : 6B09EBBF
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height"
			var spawnPositionY = floor(random_range(0, room_height + 1));
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 5F8AC12D
			/// @DnDInput : 6
			/// @DnDApplyTo : {obj_Camera}
			/// @DnDParent : 6B09EBBF
			/// @DnDArgument : "var" "boundaryCheck"
			/// @DnDArgument : "function" "point_in_rectangle"
			/// @DnDArgument : "arg" "spawnPositionX"
			/// @DnDArgument : "arg_1" "spawnPositionY"
			/// @DnDArgument : "arg_2" "cameraX - padding"
			/// @DnDArgument : "arg_3" "cameraY - padding"
			/// @DnDArgument : "arg_4" "cameraX + cameraWidth + padding"
			/// @DnDArgument : "arg_5" "cameraY + cameraHeight + padding"
			with(obj_Camera) {
				boundaryCheck = point_in_rectangle(spawnPositionX, spawnPositionY, cameraX - padding, cameraY - padding, cameraX + cameraWidth + padding, cameraY + cameraHeight + padding);
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 402ACF4A
		/// @DnDParent : 1D43D951
		/// @DnDArgument : "xpos" "spawnPositionX"
		/// @DnDArgument : "ypos" "spawnPositionY"
		/// @DnDArgument : "objectid" "_objectToSpawn"
		instance_create_layer(spawnPositionX, spawnPositionY, "Instances", _objectToSpawn);
	}
}