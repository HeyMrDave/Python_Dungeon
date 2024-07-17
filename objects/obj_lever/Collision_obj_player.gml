/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 38C8FBC7
/// @DnDArgument : "key" "ord("E")"
var l38C8FBC7_0;
l38C8FBC7_0 = keyboard_check_pressed(ord("E"));
if (l38C8FBC7_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70BFA512
	/// @DnDParent : 38C8FBC7
	/// @DnDArgument : "var" "image_index"
	if(image_index == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BA0883C
		/// @DnDParent : 70BFA512
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_index"
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 15859CFC
		/// @DnDApplyTo : gate_to_open
		/// @DnDParent : 70BFA512
		with(gate_to_open) {
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 666891C3
			/// @DnDParent : 15859CFC
			image_speed = 1;
		}
	}
}