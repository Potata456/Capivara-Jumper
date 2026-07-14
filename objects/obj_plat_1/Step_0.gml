// Faz o plataforma se mover
vspeed = 1;

// Faz os obstáculos que aparecem nos cantos da tela olharem para o lado certo
if (x < 32)
{
	image_xscale = 1;
}
if (x > room_width - 32)
{
	image_xscale = -1;
}

// Faz os obstáculos se destruirem se sairem da room
if (y > room_height + 200) instance_destroy();