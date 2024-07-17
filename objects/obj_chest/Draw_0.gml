/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 178512DE
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6342E161
/// @DnDArgument : "var" "locked"
/// @DnDArgument : "value" "true"
if(locked == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 680C4A47
	/// @DnDParent : 6342E161
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-55"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "alpha" "0.6"
	/// @DnDArgument : "sprite" "spr_key"
	/// @DnDSaveInfo : "sprite" "spr_key"
	draw_sprite_ext(spr_key, 0, x + 0, y + -55, 1, 1, 0, $FFFFFF & $ffffff, 0.6);
}