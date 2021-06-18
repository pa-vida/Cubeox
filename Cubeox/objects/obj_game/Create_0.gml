/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 41A46D7E
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "var_temp" "1"
var currentRoom = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26AC76E6
/// @DnDArgument : "var" "currentRoom"
/// @DnDArgument : "value" "rm_Game"
if(currentRoom == rm_Game)
{

}

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 1596262A

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 3A6C4155
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6BB583A1
/// @DnDArgument : "font" "fnt_arcade"
/// @DnDSaveInfo : "font" "fnt_arcade"
draw_set_font(fnt_arcade);