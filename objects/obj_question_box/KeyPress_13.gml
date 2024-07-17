// En el evento Key Press <Enter> de obj_question_box
if (user_answer == correct_answer) {
    show_message("¡Respuesta correcta! Has obtenido la llave.");
    
    // Desbloquear solo el cofre específico
    if (chest_to_open != noone) {
        chest_to_open.locked = false;
    } else {
        show_message("Error: No hay cofre asignado a esta llave.");
    }
    
    instance_destroy(); // Destruye el cuadro de pregunta
    ds_list_destroy(lines); // Destruye la lista de líneas

    obj_player.can_move = true; // Permitir el movimiento del jugador
    obj_player.is_answering_question = false; // Restablecer el estado a falso
} else {
    show_message("Respuesta incorrecta. Inténtalo de nuevo.");
    user_answer = ""; // Limpia la respuesta del usuario
}
