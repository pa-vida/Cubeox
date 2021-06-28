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
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 72C92C4D
		/// @DnDParent : 699E980F
		/// @DnDArgument : "color" "$FFC67F63"
		draw_set_colour($FFC67F63 & $ffffff);
		var l72C92C4D_0=($FFC67F63 >> 24);
		draw_set_alpha(l72C92C4D_0 / $ff);
	
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
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 60DB18D0
		/// @DnDParent : 699E980F
		draw_set_colour($FFFFFFFF & $ffffff);
		var l60DB18D0_0=($FFFFFFFF >> 24);
		draw_set_alpha(l60DB18D0_0 / $ff);
	
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
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 4C8F5639
		/// @DnDParent : 699E980F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 38899DA7
	/// @DnDParent : 79B68BEA
	/// @DnDArgument : "const" "rm_GameOver"
	case rm_GameOver:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7C8A9244
		/// @DnDParent : 38899DA7
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 66BA8618
		/// @DnDParent : 38899DA7
		/// @DnDArgument : "color" "$FF0000A0"
		draw_set_colour($FF0000A0 & $ffffff);
		var l66BA8618_0=($FF0000A0 >> 24);
		draw_set_alpha(l66BA8618_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3CF46692
		/// @DnDParent : 38899DA7
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 - 100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Game Over""
		draw_text_transformed(320, view_hview / 4 - 100, string("Game Over") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 42D9C87E
		/// @DnDParent : 38899DA7
		draw_set_colour($FFFFFFFF & $ffffff);
		var l42D9C87E_0=($FFFFFFFF >> 24);
		draw_set_alpha(l42D9C87E_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 64BE22FD
		/// @DnDParent : 38899DA7
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0B9805C8
		/// @DnDParent : 38899DA7
		/// @DnDArgument : "x" "225"
		/// @DnDArgument : "y" "view_hview / 4 + 60"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(225, view_hview / 4 + 60, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 616E062F
		/// @DnDParent : 38899DA7
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6E8972AA
		/// @DnDParent : 38899DA7
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 + 140"
		/// @DnDArgument : "caption" "">> Press enter to restart <<""
		draw_text(320, view_hview / 4 + 140, string(">> Press enter to restart <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 72E9B021
		/// @DnDParent : 38899DA7
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2D5F36EA
	/// @DnDParent : 79B68BEA
	/// @DnDArgument : "const" "rm_Win"
	case rm_Win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5B0D3225
		/// @DnDParent : 2D5F36EA
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6C760F8F
		/// @DnDParent : 2D5F36EA
		/// @DnDArgument : "color" "$FF00BF46"
		draw_set_colour($FF00BF46 & $ffffff);
		var l6C760F8F_0=($FF00BF46 >> 24);
		draw_set_alpha(l6C760F8F_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 20C86248
		/// @DnDParent : 2D5F36EA
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 - 100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""You Win""
		draw_text_transformed(320, view_hview / 4 - 100, string("You Win") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1503753B
		/// @DnDParent : 2D5F36EA
		draw_set_colour($FFFFFFFF & $ffffff);
		var l1503753B_0=($FFFFFFFF >> 24);
		draw_set_alpha(l1503753B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 11795AEA
		/// @DnDParent : 2D5F36EA
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 722C6560
		/// @DnDParent : 2D5F36EA
		/// @DnDArgument : "x" "225"
		/// @DnDArgument : "y" "view_hview / 4 + 60"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(225, view_hview / 4 + 60, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6EED14F6
		/// @DnDParent : 2D5F36EA
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 336CA25F
		/// @DnDParent : 2D5F36EA
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 + 140"
		/// @DnDArgument : "caption" "">> Press enter to restart <<""
		draw_text(320, view_hview / 4 + 140, string(">> Press enter to restart <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3C40FD75
		/// @DnDParent : 2D5F36EA
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 11247CCB
	/// @DnDParent : 79B68BEA
	/// @DnDArgument : "const" "rm_Game"
	case rm_Game:
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