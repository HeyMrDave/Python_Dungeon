// En el evento Key Press <Any Key> de obj_question_box

// Manejar la tecla de retroceso (Backspace)
if (keyboard_lastkey == vk_backspace) {
    if (string_length(user_answer) > 0) {
        user_answer = string_delete(user_answer, string_length(user_answer), 1);
    }
} 
// Manejar teclas de caracteres
else {
    var lastchar = keyboard_lastchar;

    // Filtrar caracteres especiales
    if (keyboard_check(vk_shift)) {
        if (keyboard_lastkey == ord("A") || keyboard_lastkey == ord("E") || keyboard_lastkey == ord("I") || keyboard_lastkey == ord("O") || keyboard_lastkey == ord("U") ||
            keyboard_lastkey == ord("N")) {
            lastchar = string_upper(lastchar);
        }
    }

    // Manejar tildes manualmente
    switch (keyboard_lastkey) {
        case 160: // Tecla `á`
            lastchar = "á";
            break;
        case 130: // Tecla `é`
            lastchar = "é";
            break;
        case 161: // Tecla `í`
            lastchar = "í";
            break;
        case 162: // Tecla `ó`
            lastchar = "ó";
            break;
        case 163: // Tecla `ú`
            lastchar = "ú";
            break;
        case 164: // Tecla `ñ`
            lastchar = "ñ";
            break;
        case 165: // Tecla `Ñ`
            lastchar = "Ñ";
            break;
        case vk_space: // Tecla `Espacio`
            lastchar = " ";
            break;
        default:
            // Solo agregar caracteres alfabéticos, números y operadores matemáticos
            if (lastchar != "" && string_length(lastchar) == 1) {
                if ((keyboard_lastkey >= 65 && keyboard_lastkey <= 90) || // A-Z
                    (keyboard_lastkey >= 97 && keyboard_lastkey <= 122) || // a-z
                    (keyboard_lastkey >= 48 && keyboard_lastkey <= 57) || // 0-9
                    lastchar == "+" || lastchar == "-" || lastchar == "*" || lastchar == "/" || lastchar == "=" || lastchar == "(" || lastchar == ")" || lastchar == "%" || lastchar == "^" || lastchar="'" || lastchar=">" || lastchar = "<" || lastchar = "_" || lastchar = "[" || lastchar ="]" || lastchar = "." || lastchar = "{" ||lastchar = "}") {
                    user_answer += lastchar;
                }
            }
    }
}
