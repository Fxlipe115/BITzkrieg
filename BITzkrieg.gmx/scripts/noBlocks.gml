//noBlocks()
//verifica se o objeto não está em contato com algum objeto sólido (bloco ou tank)
//método semelhante ao canMoveForward(), mas aqui não nos preocupamos com a direção do tank

//Na direita
if (place_meeting(x+spd, y, obj_block)=true){
    return(false);
}
if (place_meeting(x+spd, y, obj_tank)=true){
    return(false);
}
//Em cima
if (place_meeting(x, y-spd, obj_block)=true){
    return(false);
}
if (place_meeting(x, y-spd, obj_tank)=true){
    return(false);
}   
//Na esquerda
if (place_meeting(x-spd, y, obj_block)=true){
    return(false);
}
if (place_meeting(x-spd, y, obj_tank)=true){
    return(false);
}
//Embaixo
if (place_meeting(x, y+spd, obj_block)=true){
    return(false);
}
if (place_meeting(x, y+spd, obj_tank)=true){
    return(false);
}

//Passando por todos os testes
return(true);
