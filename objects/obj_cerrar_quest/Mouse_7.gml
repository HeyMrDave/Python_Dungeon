/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 01460800
/// @DnDArgument : "var" "global.quest_pop"
layer_sequence_destroy(global.quest_pop);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 34F2AEED
/// @DnDApplyTo : {obj_button_parent}
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-1000"
/// @DnDArgument : "y_relative" "1"
with(obj_button_parent) {
x += 0;
y += -1000;
}