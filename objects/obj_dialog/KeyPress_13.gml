// En el evento Key Press <Enter> de obj_dialog
instance_destroy(); // Destruye el cuadro de diálogo
ds_list_destroy(lines);
obj_player.can_move = true; // Permitir el movimiento del jugador
