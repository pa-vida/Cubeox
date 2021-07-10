/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7AE8CE43
/// @DnDArgument : "var" "other.faction"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" " faction "
if(!(other.faction ==  faction ))
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 68F4044B
	/// @DnDParent : 7AE8CE43
	/// @DnDArgument : "event" "1"
	event_user(1);
}