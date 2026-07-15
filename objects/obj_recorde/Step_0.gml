if (timer < 30) timer++;

if (timer >= 30)
{
	contador += 1;
	contador = clamp(contador, 0, global.recorde);
}

if (contador < global.recorde)
{
	audio_stop_sound(snd_bip);
	toca_som(snd_bip);
}