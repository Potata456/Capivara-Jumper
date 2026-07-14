// Faz a plataforma cair quando o player encostar nela
caindo();

// Faz os obstáculos se destruirem se sairem da room
if (y > room_height + 200) instance_destroy();