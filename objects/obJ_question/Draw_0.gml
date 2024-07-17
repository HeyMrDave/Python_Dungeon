// En el evento Draw del objeto
// Dibujar el objeto actual
draw_self();

// Configurar las propiedades de fuente y alineación para la pregunta
draw_set_font(ftn_quest_disp);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Establecer el color y la transparencia para la pregunta
draw_set_colour($FF000000 & $ffffff);
var l1C571734_0 = ($FF000000 >> 24);
draw_set_alpha(l1C571734_0 / $ff);

// Dibujar la pregunta
draw_text(x + 0, y + 0, string(pregunta));

// Calcular la altura del texto para dibujar el cuadro de texto debajo
var texto_altura = string_height(pregunta);
var rect_y = y + texto_altura + 10; // Ajusta el valor 10 para el espaciado deseado

// Dibujar el cuadro de texto debajo de la pregunta
var rect_x1 = x - 100; // Ajusta el valor para el ancho del cuadro de texto
var rect_x2 = x + 100; // Ajusta el valor para el ancho del cuadro de texto
var rect_y2 = rect_y + 30; // Ajusta el valor para la altura del cuadro de texto

// Establecer el color y la transparencia para el cuadro de texto
draw_set_colour(c_white); // Color del cuadro de texto
draw_set_alpha(1); // Totalmente opaco

// Dibujar el cuadro de texto
draw_rectangle(rect_x1, rect_y, rect_x2, rect_y2, false);

// Opcional: Dibujar texto dentro del cuadro de texto
draw_set_colour(c_black); // Color del texto dentro del cuadro de texto
draw_text((rect_x1 + rect_x2) / 2, (rect_y + rect_y2) / 2, texto_ingresado); // Texto centrado

// Restaurar las propiedades de fuente y alineación para el resto del dibujo
draw_set_colour($FFFFFFFF & $ffffff);
var l7B87685F_0 = ($FFFFFFFF >> 24);
draw_set_alpha(l7B87685F_0 / $ff);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
