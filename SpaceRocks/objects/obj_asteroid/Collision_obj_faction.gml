/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F5DA84A
/// @DnDArgument : "var" "other.faction"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "faction"
if(!(other.faction == faction))
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 36EF59CD
	/// @DnDParent : 0F5DA84A
	/// @DnDArgument : "event" "1"
	event_user(1);
}