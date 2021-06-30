/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E42634B
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "spawn_off_camera"
/// @DnDArgument : "arg" "_objectToSpawn"
/// @DnDArgument : "arg_1" "_numberToSpawn"
function spawn_off_camera(_objectToSpawn, _numberToSpawn) 
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 7FE53A1D
	/// @DnDParent : 1E42634B
	/// @DnDArgument : "times" "_numberToSpawn"
	repeat(_numberToSpawn)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1741990E
		/// @DnDInput : 2
		/// @DnDParent : 7FE53A1D
		/// @DnDArgument : "var" "boundaryCheck"
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var_1" "padding"
		/// @DnDArgument : "value_1" "64"
		var boundaryCheck = true;
		var padding = 64;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 2C8C9251
		/// @DnDParent : 7FE53A1D
		/// @DnDArgument : "var" "boundaryCheck"
		/// @DnDArgument : "value" "true "
		while ((boundaryCheck == true )) {
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5B98767B
			/// @DnDParent : 2C8C9251
			/// @DnDArgument : "var" "spawnPositionX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width"
			var spawnPositionX = (random_range(0, room_width));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 15B1D042
			/// @DnDParent : 2C8C9251
			/// @DnDArgument : "var" "spawnPositionY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_height"
			var spawnPositionY = (random_range(0, room_height));
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 1C465877
			/// @DnDInput : 6
			/// @DnDApplyTo : {obj_camera}
			/// @DnDParent : 2C8C9251
			/// @DnDArgument : "var" "boundaryCheck"
			/// @DnDArgument : "function" "point_in_rectangle"
			/// @DnDArgument : "arg" "spawnPositionX"
			/// @DnDArgument : "arg_1" "spawnPositionY"
			/// @DnDArgument : "arg_2" "cameraX - padding"
			/// @DnDArgument : "arg_3" "cameraY - padding"
			/// @DnDArgument : "arg_4" "cameraX + cameraWidth + padding"
			/// @DnDArgument : "arg_5" "cameraY + cameraHeight + padding"
			with(obj_camera) {
				boundaryCheck = point_in_rectangle(spawnPositionX, spawnPositionY, cameraX - padding, cameraY - padding, cameraX + cameraWidth + padding, cameraY + cameraHeight + padding);
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2C576F0E
		/// @DnDParent : 7FE53A1D
		/// @DnDArgument : "xpos" "spawnPositionX"
		/// @DnDArgument : "ypos" "spawnPositionY"
		/// @DnDArgument : "objectid" "_objectToSpawn"
		instance_create_layer(spawnPositionX, spawnPositionY, "Instances", _objectToSpawn);
	}
}