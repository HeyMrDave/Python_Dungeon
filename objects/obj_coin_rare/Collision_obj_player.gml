/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 338D1EC4
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 6DA2EA81
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF00D8ff"
effect_create_above(8, x + 0, y + 0, 1, $FF00D8ff & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7F33E95D
/// @DnDArgument : "soundid" "snd_coin"
/// @DnDSaveInfo : "soundid" "snd_coin"
audio_play_sound(snd_coin, 0, 0, 1.0, undefined, 1.0);