/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 32F8EA4C
/// @DnDArgument : "expr" "room"
var l32F8EA4C_0 = room;
switch(l32F8EA4C_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4DD2BD4F
	/// @DnDParent : 32F8EA4C
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 3E3DE659
		/// @DnDParent : 4DD2BD4F
		/// @DnDArgument : "x" " 20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text( 20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 7BCB03BB
		/// @DnDParent : 4DD2BD4F
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "spr_lives"
		var l7BCB03BB_0 = sprite_get_width(spr_lives);
		var l7BCB03BB_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l7BCB03BB_2 = __dnd_lives; l7BCB03BB_2 > 0; --l7BCB03BB_2) {
			draw_sprite(spr_lives, 0, 20 + l7BCB03BB_1, 40);
			l7BCB03BB_1 += l7BCB03BB_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 429BD7A7
	/// @DnDParent : 32F8EA4C
	/// @DnDArgument : "const" " rm_titlescreen"
	case  rm_titlescreen:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2B670AB2
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 288B8297
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "color" "$FF54EDFF"
		draw_set_colour($FF54EDFF & $ffffff);
		var l288B8297_0=($FF54EDFF >> 24);
		draw_set_alpha(l288B8297_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 17A206A6
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" " view_hview / 4 - 100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(320,  view_hview / 4 - 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7D8F4008
		/// @DnDParent : 429BD7A7
		draw_set_colour($FFFFFFFF & $ffffff);
		var l7D8F4008_0=($FFFFFFFF >> 24);
		draw_set_alpha(l7D8F4008_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1EDE348A
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "x" "320 + 10"
		/// @DnDArgument : "y" "view_hview / 4 "
		/// @DnDArgument : "caption" ""Score 1,000 points to win! ""
		draw_text(320 + 10, view_hview / 4 , string("Score 1,000 points to win! ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7D274074
		/// @DnDParent : 429BD7A7
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1F643283
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "x" "140"
		/// @DnDArgument : "y" "view_hview /4 + 40"
		/// @DnDArgument : "caption" ""Turn Left and Right: D and F Keys ""
		draw_text(140, view_hview /4 + 40, string("Turn Left and Right: D and F Keys ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3AF9852E
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "x" "140"
		/// @DnDArgument : "y" "view_hview /4 + 60"
		/// @DnDArgument : "caption" ""Move: J Key""
		draw_text(140, view_hview /4 + 60, string("Move: J Key") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3DC66D24
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "x" "140"
		/// @DnDArgument : "y" "view_hview /4 + 80"
		/// @DnDArgument : "caption" ""Shoot: K Key""
		draw_text(140, view_hview /4 + 80, string("Shoot: K Key") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 125C3792
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 013706A4
		/// @DnDParent : 429BD7A7
		/// @DnDArgument : "x" "320 "
		/// @DnDArgument : "y" "view_hview /4 + 140"
		/// @DnDArgument : "caption" "">> Press Enter to Start << ""
		draw_text(320 , view_hview /4 + 140, string(">> Press Enter to Start << ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 63C1F583
		/// @DnDParent : 429BD7A7
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5AD75BFB
	/// @DnDParent : 32F8EA4C
	/// @DnDArgument : "const" " rm_gameover"
	case  rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 403F97E6
		/// @DnDParent : 5AD75BFB
		/// @DnDArgument : "color" "$FF0C10FF"
		draw_set_colour($FF0C10FF & $ffffff);
		var l403F97E6_0=($FF0C10FF >> 24);
		draw_set_alpha(l403F97E6_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6723B815
		/// @DnDParent : 5AD75BFB
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 442F47AE
		/// @DnDParent : 5AD75BFB
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" " view_hview / 4 - 100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""GAME OVER""
		draw_text_transformed(320,  view_hview / 4 - 100, string("GAME OVER") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 00A4D0DF
		/// @DnDParent : 5AD75BFB
		draw_set_colour($FFFFFFFF & $ffffff);
		var l00A4D0DF_0=($FFFFFFFF >> 24);
		draw_set_alpha(l00A4D0DF_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3A3B5CFC
		/// @DnDParent : 5AD75BFB
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 3908EFB1
		/// @DnDParent : 5AD75BFB
		/// @DnDArgument : "x" "225"
		/// @DnDArgument : "y" "view_hview / 4 + 60"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(225, view_hview / 4 + 60, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 486E8603
		/// @DnDParent : 5AD75BFB
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 58599E62
		/// @DnDParent : 5AD75BFB
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 + 140"
		/// @DnDArgument : "caption" "">> Press enter to restart <<""
		draw_text(320, view_hview / 4 + 140, string(">> Press enter to restart <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 466973E2
		/// @DnDParent : 5AD75BFB
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4317923F
	/// @DnDParent : 32F8EA4C
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 646BFD77
		/// @DnDParent : 4317923F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3E42E348
		/// @DnDParent : 4317923F
		/// @DnDArgument : "color" "$FF42FF8A"
		draw_set_colour($FF42FF8A & $ffffff);
		var l3E42E348_0=($FF42FF8A >> 24);
		draw_set_alpha(l3E42E348_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3371CD20
		/// @DnDParent : 4317923F
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" " view_hview / 4 - 100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(320,  view_hview / 4 - 100, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 49B35221
		/// @DnDParent : 4317923F
		draw_set_colour($FFFFFFFF & $ffffff);
		var l49B35221_0=($FFFFFFFF >> 24);
		draw_set_alpha(l49B35221_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6040E60E
		/// @DnDParent : 4317923F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 208550A4
		/// @DnDParent : 4317923F
		/// @DnDArgument : "x" "225"
		/// @DnDArgument : "y" "view_hview / 4 + 60"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(225, view_hview / 4 + 60, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5031E434
		/// @DnDParent : 4317923F
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 73B66FDF
		/// @DnDParent : 4317923F
		/// @DnDArgument : "x" "320"
		/// @DnDArgument : "y" "view_hview / 4 + 140"
		/// @DnDArgument : "caption" "">> Press enter to restart <<""
		draw_text(320, view_hview / 4 + 140, string(">> Press enter to restart <<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 33CE088B
		/// @DnDParent : 4317923F
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}