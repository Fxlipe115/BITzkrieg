//canMoveForward
//verifica se o objeto pode continuar seguindo em frente

//Para a direita
if (dir=0 and place_meeting(x+spd, y, obj_block)==true){
    return(false);
}
if (dir=0 and place_meeting(x+spd, y, obj_tank)==true){
    return(false);
}
if (dir=0 and place_meeting(x+spd, y, obj_border)==true){
    return(false);
}
//Subindo
if (dir=90 and place_meeting(x, y-spd, obj_block)==true){
    return(false);
}
if (dir=90 and place_meeting(x, y-spd, obj_tank)==true){
    return(false);
}
if (dir=90 and place_meeting(x, y-spd, obj_border)==true){
    return(false);
}   
//Para a esquerda
if (dir=180 and place_meeting(x-spd, y, obj_block)==true){
    return(false);
}
if (dir=180 and place_meeting(x-spd, y, obj_tank)==true){
    return(false);
}
if (dir=180 and place_meeting(x-spd, y, obj_border)==true){
    return(false);
}
//Descendo
if (dir=270 and place_meeting(x, y+spd, obj_block)==true){
    return(false);
}
if (dir=270 and place_meeting(x, y+spd, obj_tank)==true){
    return(false);
}
if (dir=270 and place_meeting(x, y+spd, obj_border)==true){
    return(false);
}

//Passando por todos os testes
return(true);
