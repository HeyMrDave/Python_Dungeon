var l63156EE5_0;
l63156EE5_0 = keyboard_check_pressed(ord("E"));
if (l63156EE5_0) {
    // Verificar si la variable `dialog_message` existe
    if (variable_instance_exists(id, "dialog_message")) {
        // Crear el objeto `obj_gui_dialog` para mostrar el mensaje
        var dialog = instance_create_layer(display_get_gui_width() / 2, display_get_gui_height() / 2, "GUI", obj_gui_dialog);
        // Dividir el mensaje en líneas y añadir a la lista
        var message_lines = string_split(dialog_message, "#"); // Usar "#" como separador de líneas
        for (var i = 0; i < array_length_1d(message_lines); i++) {
            ds_list_add(dialog.lines, message_lines[i]);
        }
        obj_player.can_move = false; // Bloquear el movimiento del jugador
        obj_player.is_interacting = true; // Establecer el estado a verdadero
    } else {
        // No hacer nada si `dialog_message` no está definida // Opcional: Para depuración
    }
}
