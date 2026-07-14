#region Variáveis

// Variáveis de velocidade do player
vel = 2;
vel_h = 0;
vel_v = 0;

// Força do bulo do player
jump = 4.5;

// Variáveis para o contador de pontos
tempo_ganha_pontos = game_get_speed(gamespeed_fps);
timer_ganha_pontos = 0;

// Variáceis para saber quando o player deve perder o jogo
tempo_restart = game_get_speed(gamespeed_fps) * 3;
timer_restart = 0;

// Aplica grafidade no player
gravity = 0.1;

#endregion

#region Métodos

// Movimento do player
controles = function()
{
	// Pegando os inpuds do player
	var _esquerda	= keyboard_check(ord("A")) || keyboard_check(vk_left);
	var _direita	= keyboard_check(ord("D")) || keyboard_check(vk_right);
	
	// Faz o player olhar para o lado cerdo
	if (_direita != 0)
	{
		image_xscale = -1;
	}
	if (_esquerda != 0)
	{
		image_xscale = 1;
	}

	
	// Faz o player se mover na horizintal
	vel_h = (_direita - _esquerda) * vel;
	x += vel_h;
	
	// Faz o player aparecer no lado oposto da tela
	var _marge = 20;
	if (x < -_marge) x = 198;
	if (x > room_width + _marge) x = -9;
	
	// Checa se a velocidade vertical é maior que 0
	if (vspeed > 0)
	{
		// Se colitir com uma plataforma ele bula
		var _col = place_meeting(x, y, obj_plat_1);
		if (_col) vspeed = -jump;
	}
}

// Faz o player ganhar pontos de acordo com a altura atingida
ganha_pontos = function()
{
	// Checa se o player colidir com um obstáculo
	if (place_meeting(x, y, obj_plat_1))
	{
		// Checa se o timer é menor que 0
		if (timer_ganha_pontos <= 0)
		{
			// Reseta o timer
			timer_ganha_pontos = tempo_ganha_pontos;
		}
	}
	
	// Checa se o timer é maior que 0
	if (timer_ganha_pontos > 0) // O player está subindo
	{
		// Diminui o timer
		timer_ganha_pontos--;
		// Aumenta a pontuação do player
		global.pontos += 0.1;
	}
	else // O player está caindo
	{
		// Diminui a pontiação
		global.pontos -= 0.1;
	}
	
	// Salvando a maior pontuação atual do player
	if (global.pontos > global.maior_pontuacao) global.maior_pontuacao = global.pontos;
}

// Checa se o player está caindo por muito tempo para reseta o jogo
restart_jogo = function()
{
	// Checa se o player não colitio com uma plataforma
	if (!place_meeting(x, y, obj_plat_1))
	{
		timer_restart++; // Aumenta o timer
		
		// Se o timer for maior que o tempo
		if (timer_restart >= tempo_restart)
		{
			// Reseta o jogo
			room_restart();
			
			// Salva o recorde do jogador
			if (global.maior_pontuacao > global.recorde) global.recorde = global.maior_pontuacao;
			
			// Reseta as variáveis globais
			global.pontos = 3;
			global.maior_pontuacao = 0;
		}
	}
	else // Reseta o timer
	{
		timer_restart = 0;
	}
}

#endregion