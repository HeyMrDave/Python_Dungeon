// Verificar si es necesario subir de nivel
if (coins >= 50 * level) {
    level += 1;
    show_message("¡Has subido al nivel " + string(level) + "!");
}

if (level == 2 && !has_medal) {
    has_medal = true;
    show_message("¡Has ganado una medalla!");
}