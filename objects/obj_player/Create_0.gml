#region Variáveis

// Variáveis de velocidade do player
vel = 2;
vel_h = 0;
vel_v = 0;

// Força do bulo do player
jump = 4.5;

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
	if (vspeed > 0 )
	{
		// Se colitir com uma plataforma ele bula
		var _col = place_meeting(x, y, obj_plat_1);
		if (_col) vspeed = -jump;
	}
}
#endregion