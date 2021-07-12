/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C0A19A2
/// @DnDArgument : "var" "other.id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "creator"
if(!(other.id == creator))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 379D8823
	/// @DnDParent : 4C0A19A2
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 242585CE
	/// @DnDParent : 4C0A19A2
	/// @DnDArgument : "var" "other.faction"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "faction"
	if(!(other.faction == faction))
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 2F52874B
		/// @DnDApplyTo : other
		/// @DnDParent : 242585CE
		/// @DnDArgument : "event" "1"
		with(other) {
		event_user(1);
		}
	}
}