// En el evento Key Press <Escape> de obj_resp1
instance_destroy(); // Destruye el cuadro de pregunta
obj_player.can_move = true; // Permitir el movimiento del jugador
show_message("Has cancelado la pregunta.");
obj_player.is_answering_question = false; // Restablecer el estado a falso
