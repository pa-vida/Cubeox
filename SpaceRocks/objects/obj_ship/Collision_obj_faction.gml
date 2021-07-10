/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77B5CEDB
/// @DnDArgument : "var" "other.faction"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "faction"
if(!(other.faction == faction))
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 20C30F78
	/// @DnDParent : 77B5CEDB
	/// @DnDArgument : "event" "1"
	event_user(1);
}