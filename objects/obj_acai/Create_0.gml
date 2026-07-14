vspeed = 1;

// Ganha mais açaí de acordo com a image index
ganha_acai = function()
{
	if (image_index == 0)
	{
		global.acai += 1;
	}
	else if (image_index == 1)
	{
		global.acai += 3;
	}
	else if (image_index == 2)
	{
		global.acai += 6;
	}
}