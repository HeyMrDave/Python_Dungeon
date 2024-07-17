if(can_move){
x += move_speed;

// Walk to side sprite
sprite_index = spr_player_walk_side;
image_index += 0;

// Reset the horizontal scale
// to 1 so the player faces
// right again
image_xscale = 1;
image_yscale = 1;
input_direction = 0;
}