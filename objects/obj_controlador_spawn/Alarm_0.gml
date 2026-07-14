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

// Cria um obstácula
instance_create_layer(_x, pos_y,"Plataforma", lista_obs[_sort_obs]);

// O proximo spawn é a pos_y atual - 50
// Porque assim as plataformas sempre vão spawnar mais alto
pos_y -= 50;

// Reseta o timer de spawn
alarm[0] = tempo_spawn;