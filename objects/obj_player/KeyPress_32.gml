
if(can_move){

var sword = instance_create_layer(x + 0, y + 0, "Instances", obj_sword_attack);

sword.image_angle = input_direction;

audio_play_sound(snd_sword_swing, 0, 0, 1.0, undefined, 1.0);
}