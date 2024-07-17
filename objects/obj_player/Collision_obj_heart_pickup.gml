/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 645FB5C3
/// @DnDArgument : "var" "hearts"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "max_hearts"
if(hearts < max_hearts)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60D005AF
	/// @DnDParent : 645FB5C3
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hearts"
	hearts += 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 2A5FFA50
	/// @DnDApplyTo : other
	/// @DnDParent : 645FB5C3
	with(other) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 56CC2B23
		/// @DnDParent : 2A5FFA50
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 67CBEB97
		/// @DnDParent : 2A5FFA50
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "color" "$FF2821ff"
		effect_create_above(1, x + 0, y + 0, 0, $FF2821ff & $ffffff);
	}
}