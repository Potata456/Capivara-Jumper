// Só funciona se o player existe
if (!instance_exists(obj_player)) exit;

// Faz o objeto da camera seguir o player
x = lerp(x, obj_player.x, 0.1);
y = obj_player.y - 160;

// Muda a posição da camera
camera_set_view_pos(view_camera[0], 0, y);

if (keyboard_check_pressed(vk_escape))
{
	if (click)
	{
		layer_sequence_create("Transicao", x, y, sq_transicao_saida);
		global.destino = rm_inicio;
		
		click = false;
		
		// Salva o recorde do player
		if (global.maior_pontuacao > global.recorde) global.recorde = global.maior_pontuacao;
	}
}