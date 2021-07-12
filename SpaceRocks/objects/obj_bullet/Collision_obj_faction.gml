/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 271B60C1
/// @DnDArgument : "var" "other.id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "creator"
if(!(other.id == creator))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4CE6C4D3
	/// @DnDParent : 271B60C1
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65B99936
	/// @DnDParent : 271B60C1
	/// @DnDArgument : "var" "other.faction"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "faction"
	if(!(other.faction == faction))
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 0E2307E3
		/// @DnDApplyTo : other
		/// @DnDParent : 65B99936
		/// @DnDArgument : "event" "1"
		with(other) {
		event_user(1);
		}
	}
}