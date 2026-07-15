efeito_mola();

var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

// Checa se o mouse está sobre a placa e se teve um click do mouse
if (_mouse_sobre && _mouse_click)
{
	// Checa se o item está bloqueado
	if (bloqueado)
	{
		// Checa se as qtd de moedas do player é maior que o preço do item
		// Se for compra o item
		if (global.acai >= preco)
		{
			// Subtrai o dinheiro do player
			global.acai -= preco;
			// Salva o desbloqueio
			global.roupa[botao] = false;
			// Desbloqueia o item
			bloqueado = false;
		}
	}
	else // Se o item não está bloqueado
	{
		// Usa a roupa
		global.roupa_atual = botao;
	}
}

// Troca a cor da placa para dar um destaque no item selecionado
if (global.roupa_atual == botao) image_blend = c_yellow;
else image_blend = c_white;