//Info inputo del jugador
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("Ds"));
key_jump = keyboard_check_pressed(vk_space);

//Calcular movimiento
var move = key_right - key_left;
hsp = move * walksp;
//Agregar gravedad
vsp = vsp + grv;

//brincar
if(place_meeting(x,y+1,oWall)) && (key_jump)
{
vsp = -7;
}


//Colisión horizontal.
if(place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Colisión Vertical.
if(place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


//Animaciones
if(!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if(sign(vsp) > 0) image_index =  1;
	else image_index = 0;
}else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
	sprite_index = sPlayerR;
	}
}
	//Para voltear el sprite si va a la izq o la derecha
	if(hsp != 0) image_xscale = sign(hsp);
	
