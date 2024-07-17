/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E2E4DD3
/// @DnDArgument : "var" "locked"
/// @DnDArgument : "value" "true"
if(locked == true)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 33E5D0D7
	/// @DnDParent : 2E2E4DD3
	exit;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 385FD26C
/// @DnDArgument : "key" "ord("E")"
var l385FD26C_0;
l385FD26C_0 = keyboard_check_pressed(ord("E"));
if (l385FD26C_0)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 748933B2
	/// @DnDParent : 385FD26C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-20"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "7"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FF1ee4ff"
	effect_create_above(7, x + 0, y + -20, 1, $FF1ee4ff & $ffffff);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 614872B6
	/// @DnDParent : 385FD26C
	/// @DnDArgument : "expr" "coins_to_give"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.coins"
	obj_player.coins += coins_to_give;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5F18930D
	/// @DnDParent : 385FD26C
	/// @DnDArgument : "objind" "obj_chest_open"
	/// @DnDSaveInfo : "objind" "obj_chest_open"
	instance_change(obj_chest_open, true);
}