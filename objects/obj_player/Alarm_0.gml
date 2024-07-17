/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7F61E2E6
speed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CE10935
/// @DnDArgument : "var" "hearts"
/// @DnDArgument : "op" "2"
if(hearts > 0)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1FAD10D2
	/// @DnDParent : 6CE10935
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 772442DB
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 79C36F2E
	/// @DnDParent : 772442DB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_defeated"
	/// @DnDSaveInfo : "objectid" "obj_player_defeated"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_defeated);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D771F8A
	/// @DnDParent : 772442DB
	instance_destroy();
}