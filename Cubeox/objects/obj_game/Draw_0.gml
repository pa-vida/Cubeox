/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 79B68BEA
/// @DnDArgument : "expr" "room"
var l79B68BEA_0 = room;
switch(l79B68BEA_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 699E980F
	/// @DnDParent : 79B68BEA
	/// @DnDArgument : "const" "rm_TitleScreen "
	case rm_TitleScreen :
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5CFBAC94
		/// @DnDParent : 699E980F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 217206A3
		/// @DnDParent : 699E980F
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 - 100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(320, view_hview / 4 - 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 71270C89
		/// @DnDParent : 699E980F
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 "
		/// @DnDArgument : "caption" ""Score 1,000 points to win! ""
		draw_text(320, view_hview / 4 , string("Score 1,000 points to win! ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 643EAFE9
		/// @DnDParent : 699E980F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4EB79993
		/// @DnDParent : 699E980F
		/// @DnDArgument : "x" "225"
		/// @DnDArgument : "y" "view_hview / 4 + 40"
		/// @DnDArgument : "caption" ""Turn : D and  F""
		draw_text(225, view_hview / 4 + 40, string("Turn : D and  F") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 13B33D4D
		/// @DnDParent : 699E980F
		/// @DnDArgument : "x" "225"
		/// @DnDArgument : "y" "view_hview / 4 + 60"
		/// @DnDArgument : "caption" ""Move : J""
		draw_text(225, view_hview / 4 + 60, string("Move : J") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6C4DF0E7
		/// @DnDParent : 699E980F
		/// @DnDArgument : "x" "225"
		/// @DnDArgument : "y" "view_hview / 4 + 80"
		/// @DnDArgument : "caption" ""Shoot: K""
		draw_text(225, view_hview / 4 + 80, string("Shoot: K") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 15AD08E7
		/// @DnDParent : 699E980F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 303C043A
		/// @DnDParent : 699E980F
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 + 140"
		/// @DnDArgument : "caption" "">> Press enter to start <<""
		draw_text(320, view_hview / 4 + 140, string(">> Press enter to start <<") + "");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 11247CCB
	/// @DnDParent : 79B68BEA
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 61F046EC
		/// @DnDParent : 11247CCB
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 5E88803C
		/// @DnDParent : 11247CCB
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "45"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "spr_lives"
		var l5E88803C_0 = sprite_get_width(spr_lives);
		var l5E88803C_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l5E88803C_2 = __dnd_lives; l5E88803C_2 > 0; --l5E88803C_2) {
			draw_sprite(spr_lives, 0, 20 + l5E88803C_1, 45);
			l5E88803C_1 += l5E88803C_0;
		}
		break;
}