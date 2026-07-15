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
global.acai = 100;

// Destino da transição
global.destino = noone;

#endregion

#region Funções

function troca_room()
{
	room_goto(global.destino);
}

#endregion