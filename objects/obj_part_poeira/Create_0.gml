// Troca aparencia de acordo com a roupa atual
armario = function()
{
	if (global.roupa_atual == 0) sprite_index = vfx_capi;
	else if (global.roupa_atual == 1) sprite_index = vfx_boto;
	else if (global.roupa_atual == 2) sprite_index = vfx_taman;
}

armario();

image_xscale = 2;
image_yscale = 2;
vspeed = 1;