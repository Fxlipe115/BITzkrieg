//atIntesection()
//Verifica se o objeto possibilidades de caminhos

var contador = 0;

//Se não existe blocos nem tanques à direita do objeto
if (place_meeting(x+spd,y,obj_block)=false and
    place_meeting(x+spd,y,obj_tank)=false){
    //Adiciona 1 no contador
    contador+=1;
}
//Se não existe blocos nem tanques a cima do objeto
if (place_meeting(x,y-spd,obj_block)=false and
    place_meeting(x,y-spd,obj_tank)=false){
    //Adiciona 1 no contador
    contador+=1;
}
//Se não existe blocos nem tanques à esquerda do objeto
if (place_meeting(x-spd,y,obj_block)=false and
    place_meeting(x-spd,y,obj_tank)=false){
    //Adiciona 1 no contador
    contador+=1;
}
//Se não existe blocos nem tanques abaixo do objeto
if (place_meeting(x,y+spd,obj_block)=false and
    place_meeting(x,y+spd,obj_tank)=false){
    //Adiciona 1 no contador
    contador+=1;
}
//Se o contador for maior ou igual a 3, o objeto está em uma 'encruzilhada'
if (contador==3){
    return(true);
}else{
    return(false);
}
