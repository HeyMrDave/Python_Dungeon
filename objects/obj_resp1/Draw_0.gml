// En el evento Draw de obj_resp1
draw_self();
draw_set_font(fnt_preguntas); // Asegúrate de usar la fuente correcta
draw_text(x + 10, y + 10, question);
draw_text(x + 10, y + 50, "Respuesta: " + user_answer);
draw_set_font(-1); // Restablecer la fuente a la predeterminada
