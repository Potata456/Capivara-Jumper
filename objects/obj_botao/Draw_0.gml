if (tem_texto)
{
	// Desenha a ilha
	draw_sprite(spr_base_menu, 0, x, y + 20);
}

// Se desenha
draw_self();

// Só desenha o texto com uma condição
if (!tem_texto) exit;

// Alinha o texto e define uma fonte
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_menu);

desenha_texto();

// Reseta o alinhamesto do texto fonte e cores
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
draw_set_colour(-1);