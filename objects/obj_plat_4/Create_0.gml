#region Variáveis

// Velocidade da plataforma
vel = 3;
vspeed = 1;

#endregion

#region Métodos

// Faz a plataforma cair depois que o player colidi com ela
caindo = function()
{
	
	// Checa se o player existe
	if (instance_exists(obj_player))
	{
		// Se eu colidi com o player
		var _col = place_meeting(x, y, obj_player);
		
		// Checo se o player está caindo e se eu colidi nele
		if (obj_player.vspeed > 0 && _col)
		{
			vspeed = vel;
		}
	}
}

#endregion