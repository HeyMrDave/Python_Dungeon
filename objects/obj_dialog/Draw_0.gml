// En el evento Draw de obj_dialog
var x_center = display_get_width() / 2;
var y_center = display_get_height() / 2;
var x_box = x_center - (box_width / 2);
var y_box = y_center - (box_height / 2);

// Dibujar el cuadro de texto
draw_set_color(c_black);
draw_rectangle(x_box, y_box, x_box + box_width, y_box + box_height, false);

// Dibujar cada línea del mensaje
draw_set_color(c_white);
draw_set_font(fnt_preguntas);
var line_height = string_height("A"); // Altura de la línea basada en la fuente
for (var i = 0; i < ds_list_size(lines); i++) {
    draw_text(x_box + padding, y_box + padding + (i * line_height), ds_list_find_value(lines, i));
}
draw_set_font(-1);
