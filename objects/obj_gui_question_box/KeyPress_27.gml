// En el evento Key Press <Escape> de obj_question_box
instance_destroy(); // Destruye el cuadro de pregunta
ds_list_destroy(lines); // Destruye la lista de líneas

obj_player.can_move = true; // Permitir el movimiento del jugador
show_message("Has cancelado la pregunta.");
obj_player.is_answering_question = false; // Restablecer el estado a falso
