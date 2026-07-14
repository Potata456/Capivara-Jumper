#region Váriaveis

// Tempo de spawn
tempo_spawn = game_get_speed(gamespeed_fps) * 1;

// Array com todos os obstáculos do jogo
lista_obs = [obj_plat_1, obj_plat_2, obj_plat_3, obj_plat_4];
// Tamanho da minha lista de obstáculos
tam_lista = array_length(lista_obs);

// Inicia a criação de plataformas
alarm[0] = 30;

// Posição Y para spawnar os obstáculos
pos_y = 0;

#endregion

spawn_plataforma = function()
{
	// Só rodo o código se o player existe
	if (!instance_exists(obj_player)) exit;

	// Posição do spawn das plataformas
	var _x = 0;

	// Sorteia um obstáculo a ser spawnado
	var _sort_obs = irandom(tam_lista - 1);

	if (_sort_obs == 0) // Obs 01
	{
		_x = random_range(24, 155);
	}
	else if (_sort_obs == 1) // Obs 02
	{
		_x = random_range(40, 144);
	}
	else if (_sort_obs == 2) // Obs 03
	{
		_x = random_range(59, 128);
	}
	else if (_sort_obs == 3) // Obs 04
	{
		_x = random_range(32, 144);
	}

	// Cria uma plataforma
	instance_create_layer(_x, pos_y,"Plataforma", lista_obs[_sort_obs]);

	// Sorteio para saber se vai spawnar um açaí
	var _sort_acai = irandom(1);

	if (_sort_acai)
	{
		// Cria um açaí
		var _acai = instance_create_layer(_x, pos_y - 20, "Acai", obj_acai);
		_acai. image_index = irandom(2);
	}

	// O proximo spawn é a pos_y atual - 50
	// Porque assim as plataformas sempre vão spawnar mais alto
	pos_y -= 50;

	// Reseta o timer de spawn
	alarm[0] = tempo_spawn;
}