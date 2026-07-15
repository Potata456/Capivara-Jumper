// Checa se o mouse está em cima do botão
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
// Checa o click do mouse
var _mouse_click = mouse_check_button_pressed(mb_left);

efeito_mola();

if (_mouse_sobre && _mouse_click)
{
	switch(botao)
	{
		case 0: // Jogar
			transicao(destino);
		break;
	
		case 1: // Sair
			game_end();
		break;
		
		case 2: // Recorde
			transicao(destino);
		break;
		
		case 3: // Loja
			transicao(destino);
		break;
		
		case 4: // Voltar
			transicao(destino);
		break;
	}
}