// En el evento Key Press <Enter> de obj_resp1
if (user_answer == correct_answer) {
    show_message("¡Respuesta correcta! Has obtenido la llave.");
    
    // Desbloquear solo el cofre específico
    if (chest_to_open != noone) {
        chest_to_open.locked = false;
    } else {
        show_message("Error: No hay cofre asignado a esta llave.");
    }
    
    instance_destroy(); // Destruye el cuadro de pregunta
    obj_player.can_move = true; // Permitir el movimiento del jugador
    obj_player.is_answering_question = false; // Restablecer el estado a falso
} else {
    show_message("Respuesta incorrecta. Inténtalo de nuevo.");
    user_answer = ""; // Limpia la respuesta del usuario
}
