/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4CC419CD
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l4CC419CD_0 = false;
l4CC419CD_0 = instance_exists(obj_player);
if(l4CC419CD_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 05117FEB
	/// @DnDComment : Draw the HUD coin sprite
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "1100"
	/// @DnDArgument : "y" "25"
	/// @DnDArgument : "sprite" "spr_hud_coin"
	/// @DnDSaveInfo : "sprite" "spr_hud_coin"
	draw_sprite(spr_hud_coin, 0, 1100, 25);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 657DA18B
	/// @DnDComment : Change the font to ft_hud
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "font" "fnt_hud"
	/// @DnDSaveInfo : "font" "fnt_hud"
	draw_set_font(fnt_hud);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0C56D182
	/// @DnDComment : Draw the player's coins value$(13_10)$(13_10)Taken from the player$(13_10)using obj_player.coins
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "1135"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "caption" ""x""
	/// @DnDArgument : "var" "obj_player.coins"
	draw_text(1135, 15, string("x") + string(obj_player.coins));

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 28115FCD
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "font" "fnt_hud"
	/// @DnDSaveInfo : "font" "fnt_hud"
	draw_set_font(fnt_hud);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2239D306
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "30"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "caption" ""Nivel: ""
	/// @DnDArgument : "var" "obj_player.level"
	draw_text(30, 30, string("Nivel: ") + string(obj_player.level));

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 5AA31C29
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "30"
	/// @DnDArgument : "y" "150"
	/// @DnDArgument : "sprite" "spr_hud_heart"
	/// @DnDArgument : "number" "obj_player.hearts"
	/// @DnDSaveInfo : "sprite" "spr_hud_heart"
	var l5AA31C29_0 = sprite_get_width(spr_hud_heart);
	var l5AA31C29_1 = 0;
	for(var l5AA31C29_2 = obj_player.hearts; l5AA31C29_2 > 0; --l5AA31C29_2) {
		draw_sprite(spr_hud_heart, 0, 30 + l5AA31C29_1, 150);
		l5AA31C29_1 += l5AA31C29_0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73217FF8
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "var" "obj_player.has_medal"
	/// @DnDArgument : "value" "true"
	if(obj_player.has_medal == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4713FCCF
		/// @DnDParent : 73217FF8
		/// @DnDArgument : "x" "1000"
		/// @DnDArgument : "y" "10"
		/// @DnDArgument : "sprite" "spr_hud_shield"
		/// @DnDSaveInfo : "sprite" "spr_hud_shield"
		draw_sprite(spr_hud_shield, 0, 1000, 10);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 72E8F8D2
		/// @DnDParent : 73217FF8
		/// @DnDArgument : "font" "fnt_preguntas"
		/// @DnDSaveInfo : "font" "fnt_preguntas"
		draw_set_font(fnt_preguntas);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 65DC6C5A
		/// @DnDParent : 73217FF8
		/// @DnDArgument : "x" "950"
		/// @DnDArgument : "y" "50"
		/// @DnDArgument : "caption" ""Experto.Py""
		draw_text(950, 50, string("Experto.Py") + "");
	}
}