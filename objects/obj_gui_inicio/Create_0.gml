// En el evento Create de obj_dialog
if (!variable_instance_exists(id, "message1")) {
// En el evento Create de obj_dialog
lines = ds_list_create();
lines = ds_list_create();
ds_list_add(lines, "Este juego fue hecho por:");
ds_list_add(lines, "David Cabezas");
ds_list_add(lines, "Marlon Medina");
ds_list_add(lines, "Styven Padilla");
ds_list_add(lines, "Usa las flechas para moverte y 'E' para interactuar");
ds_list_add(lines, "Usa espacio para atacar");
ds_list_add(lines, "Usa Esc para cerrar las preguntas");
ds_list_add(lines, "Presiona 'Enter' para quitar el dialogo");
obj_player.can_move = false;

box_width = 400;
box_height = 200;
padding = 20; // Espacio alrededor del texto
// Espacio alrededor del texto
 // Espacio alrededor del texto
}