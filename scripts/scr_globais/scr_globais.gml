#region Variáveis Globais

// Deixo o jogo aleatório
randomise();

// Para salvar as roupas compradas
global.roupa = [false, true, true];

// Para saber que roupa o player está
global.roupa_atual = 0;

// Pontos que o jogador fez
global.pontos = 3;
global.maior_pontuacao = 0;
// Maior quantiadade de pontos do jogador
global.recorde = 0;

// Moedas do jogo
global.acai = 0;

// Destino da transição
global.destino = noone;

#endregion

#region Funções

function troca_room()
{
	room_goto(global.destino);
}

// Toca som com variação
function toca_som(_som =  snd_pickup, _var = 0.2)
{
	var _pitch = random_range(1 - _var, 1 + _var);
	
	audio_play_sound(_som, 0, false, 1, 0, _pitch)
}

#endregion