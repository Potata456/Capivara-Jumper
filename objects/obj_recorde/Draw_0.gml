// Alinha o texto e define uma fonte
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_menu);

draw_set_colour(c_orange);
draw_text(x, y + 2, "Recorde \n" + string(contador));

draw_set_colour(c_yellow);
draw_text(x, y, "Recorde \n" + string(contador));

// Deselinha o texto e a fonte
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
draw_set_colour(-1)