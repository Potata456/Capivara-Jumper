// Alinha o texto e define uma fonte
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_menu);

draw_self();

// Desenha o roupa na da loja
if (botao == 0)
{
	draw_sprite_ext(spr_capi, 0, x + 5, y + 5, r_xscale, r_yscale, 0, c_white, 1);
	if (bloqueado) desenha_preco(10, 25, 5);
}
else if (botao == 1)
{
	draw_sprite_ext(spr_boto, 0, x - 3, y + 5, r_xscale, r_yscale, 0, c_white, 1);
	if (bloqueado) desenha_preco(2, 25, 17);
}
else if (botao == 2)
{
	draw_sprite_ext(spr_taman, 0, x + 7, y + 3, r_xscale, r_yscale, 0, c_white, 1);
	if (bloqueado) desenha_preco(10, 25, 10);
}

// Reseta o alinhamento do texto, fonte e cor
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
draw_set_colour(-1)