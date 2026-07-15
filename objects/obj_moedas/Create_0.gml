desenha_preco = function(_pos_x = 0, _pos_y = 0, _m_icone = 0)
{
	// Desenha o icone do içaí
	draw_sprite(spr_acai, 2, x - _m_icone, y + _pos_y);

	// Desenha a sombra do preço das roupas
	draw_set_colour(c_orange)
	draw_text_transformed(x + _pos_x, y + _pos_y + 2, global.acai, 1, 1, 0);

	// Desenha o preço das roupas
	draw_set_colour(c_yellow)
	draw_text_transformed(x + _pos_x, y + _pos_y, global.acai, 1, 1, 0);
}