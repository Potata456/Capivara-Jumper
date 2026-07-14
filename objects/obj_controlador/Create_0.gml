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