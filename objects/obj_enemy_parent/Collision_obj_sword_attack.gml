/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1C7C1C44
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 4A9ACDA8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$914E82AA"
effect_create_above(4, x + 0, y + 0, 2, $914E82AA & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 755567FB
/// @DnDArgument : "soundid" "snd_baddie_defeated"
/// @DnDSaveInfo : "soundid" "snd_baddie_defeated"
audio_play_sound(snd_baddie_defeated, 0, 0, 1.0, undefined, 1.0);