// Troca a sprite do objeto
sprite_index = sprite;

// Salva a escala inicial do objeto
xscale = image_xscale;
yscale = image_yscale;

// Escala do texto
txt_xscale = 1;
txt_yscale = 1;

click = true;

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
	
		txt_xscale = lerp(txt_xscale, 1.2, 0.1);
		txt_yscale = lerp(txt_yscale, 1.3, 0.1);
	
		if (_mouse_click)
		{
			// Faz um efeito para o click
			image_xscale = lerp(image_xscale, xscale * 0.7, 0.1);
			image_yscale = lerp(image_yscale, yscale * 1.7, 0.1);
		
			txt_xscale = lerp(txt_xscale, 0.7, 0.1);
			txt_yscale = lerp(txt_yscale, 1.7, 0.1);
		}
	}
	else
	{
		// Faz a escala voltar ao normal suavimente
		image_xscale = lerp(image_xscale, xscale, 0.1);
		image_yscale = lerp(image_yscale, yscale, 0.1);
	
		txt_xscale = lerp(txt_xscale, 1, 0.1);
		txt_yscale = lerp(txt_yscale, 1, 0.1);
	}
}

desenha_texto = function()
{
	// Desenha a sombra do texto
	draw_set_colour(c_orange);
	draw_text_transformed(x, y + 2, "Jogar", txt_xscale, txt_yscale, 0);

	// Desenha o texto
	draw_set_colour(c_yellow);
	draw_text_transformed(x, y, "Jogar", txt_xscale, txt_yscale, 0);
}

transicao = function(_destino)
{
	if (click)
	{
		layer_sequence_create("Transicao", 0, 0, sq_transicao_saida);
		global.destino = _destino;
		
		click = false;
	}
}