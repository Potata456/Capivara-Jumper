#region Variáveis

// Velocidade da pladaforma
// Escolhe uma direção aleatoria
vel = choose(-1, 1);

// Variável de controle para saber se a plataforma já colitio
troca_dir = false;

#endregion

#region Métodos

// Faz a plataforma se mover e colidir com a porta da tela
movimento_horizontal = function()
{
	// Move a plataforma na horizontal
	hspeed = vel;
	
	var _margem = 44;
	
	// Checa de a plataforma já colitir
	if (!troca_dir)
	{
		// Muda de direção se colidir com a porta da tela
		if (x < _margem || x > room_width - _margem)
		{
			vel = -vel;
			troca_dir = true;
		}
	}
	// Se já colitir, fazemos ele poder de novo
	else
	{
		troca_dir = false;
	}
	
	// Limida até aonde a plataforma pode ir
	x = clamp(x, _margem, room_width - _margem);
}

#endregion