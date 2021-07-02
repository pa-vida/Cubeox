/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 515C537F
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "ChangeLayerPosition"
/// @DnDArgument : "arg" "layerDesired"
/// @DnDArgument : "arg_1" "positionX"
/// @DnDArgument : "arg_2" "positionY"
function ChangeLayerPosition(layerDesired, positionX, positionY) 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 24895284
	/// @DnDInput : 2
	/// @DnDParent : 515C537F
	/// @DnDArgument : "function" "layer_x"
	/// @DnDArgument : "arg" "layerDesired"
	/// @DnDArgument : "arg_1" "positionX"
	layer_x(layerDesired, positionX);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 506F111F
	/// @DnDInput : 2
	/// @DnDParent : 515C537F
	/// @DnDArgument : "function" "layer_y"
	/// @DnDArgument : "arg" "layerDesired"
	/// @DnDArgument : "arg_1" "positionY"
	layer_y(layerDesired, positionY);
}