// Troca a sprite
sprite_index = sprite;

// Salva a escala inicial do objeto
xscale = image_xscale;
yscale = image_yscale;

// Escala das roupas
r_xscale = 1;
r_yscale = 1;

bloqueado = global.roupa[botao];

efeito_mola = function()
{
	// Checa se o mouse está em cima do botão
	var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
	// Checa o click do mouse
	var _mouse_click = mouse_check_button_pressed(mb_left);
	
	// Checa se o mouse está em cima do objeto e se o player clicou
	if (_mouse_sobre)
	{
		// Faz um efeito suave aumentando a escala aos poucos
		image_xscale = lerp(image_xscale, xscale * 1.2, 0.1);
		image_yscale = lerp(image_yscale, yscale * 1.2, 0.1);
		
		r_xscale = lerp(r_xscale, 1.2, 0.1);
		r_yscale = lerp(r_yscale, 1.3, 0.1);
		
		if (_mouse_click)
		{
			// Faz um efeito para o click
			image_xscale = lerp(image_xscale, xscale * 0.7, 0.1);
			image_yscale = lerp(image_yscale, yscale * 1.7, 0.1);
			
			r_xscale = lerp(r_xscale, 0.7, 0.1);
			r_yscale = lerp(r_yscale, 1.7, 0.1);
		}
	}
	else
	{
		// Faz a escala voltar ao normal suavimente
		image_xscale = lerp(image_xscale, xscale, 0.1);
		image_yscale = lerp(image_yscale, yscale, 0.1);
		
		r_xscale = lerp(r_xscale, 1, 0.1);
		r_yscale = lerp(r_yscale, 1, 0.1);
	}
}

desenha_preco = function(_pos_x = 0, _pos_y = 0, _m_icone = 0)
{
	// Desenha o icone do içaí
	draw_sprite(spr_acai, 2, x - _m_icone, y + _pos_y);

	// Desenha a sombra do preço das roupas
	draw_set_colour(c_orange)
	draw_text_transformed(x + _pos_x, y + _pos_y + 2, preco, 1, 1, 0);

	// Desenha o preço das roupas
	draw_set_colour(c_yellow)
	draw_text_transformed(x + _pos_x, y + _pos_y, preco, 1, 1, 0);
}