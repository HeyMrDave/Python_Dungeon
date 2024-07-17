var l074E04D6_0;
l074E04D6_0 = keyboard_check_pressed(ord("E"));
if (l074E04D6_0 && !obj_player.is_answering_question) {
    // Crear el objeto `obj_gui_question_box` para mostrar la pregunta en el GUI Layer
    var question_box = instance_create_layer(display_get_width() / 2, display_get_height() / 2, "GUI", obj_gui_question_box);
    question_box.correct_answer = correct_answer;
    question_box.chest_to_open = chest_to_open; // Pasar el cofre específico

    // Dividir la pregunta en líneas y añadir a la lista
    var question_lines = string_split(dialog_message, "#"); // Usar "#" como separador de líneas
    for (var i = 0; i < array_length_1d(question_lines); i++) {
        ds_list_add(question_box.lines, question_lines[i]);
    }

    obj_player.can_move = false; // Bloquear el movimiento del jugador
    obj_player.is_answering_question = true; // Establecer el estado a verdadero
}
