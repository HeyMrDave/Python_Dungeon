// En el evento Draw de obj_barrel_small
draw_self();

// Guardar las configuraciones de alineación y color actuales
var prev_font = draw_get_font();
var prev_halign = draw_get_halign();
var prev_valign = draw_get_valign();
var prev_color = draw_get_color();

// Dibujar la letra "E" si show_E es true
if (show_E) {
    draw_set_font(fnt_preguntas); // Asegúrate de usar la fuente correcta
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white); // Cambia el color según sea necesario
    draw_text(x, y - sprite_height, "E"); // Ajusta la posición según sea necesario
}

// Restaurar las configuraciones anteriores
draw_set_font(prev_font);
draw_set_halign(prev_halign);
draw_set_valign(prev_valign);
draw_set_color(prev_color);
