// Só funciona se o player existe
if (!instance_exists(obj_player)) exit;

// Faz o objeto da camera seguir o player
x = lerp(x, obj_player.x, 0.1);
y = obj_player.y - 160;

// Muda a posição da camera
camera_set_view_pos(view_camera[0], 0, y);