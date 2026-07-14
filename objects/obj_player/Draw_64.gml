draw_text(20,20, global.acai);
// Definindo a fonte e alinhando o texto
draw_set_font(fnt_placar);
draw_set_halign(1);
draw_set_valign(1);

var _pos_x = display_get_gui_width() / 2;

// Desenha a sombra do texto
draw_set_colour(c_orange);
draw_text(_pos_x, 53, string(global.pontos) + ".m");

// Desenha o texto do placar de pontos
draw_set_colour(c_yellow);
draw_text(_pos_x, 50, string(global.pontos) + ".m");

// Resetando a fonte, alinhando o texto e a cor
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_colour(-1);