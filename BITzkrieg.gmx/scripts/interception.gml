//Se está indo para a direita ou para a esquerda
if (dir==0 or dir==180){
    //Vê se há caminhos para cima ou para baixo
    if (place_meeting(x,y+spd,obj_block)=false and
        place_meeting(x,y+spd,obj_tank)=false){
        return(true);
    }
    if (place_meeting(x,y-spd,obj_block)=false and
        place_meeting(x,y-spd,obj_tank)=false){
        return(true);
    }  
}
//Se está indo para cima ou para baixo
if (dir==90 or dir==270){
    //Vê se há caminhos para a direita ou para a esquerda
    if (place_meeting(x+spd,y,obj_block)=false and
        place_meeting(x+spd,y,obj_tank)=false){
        return(true);
    }
    if (place_meeting(x-spd,y,obj_block)=false and
        place_meeting(x-spd,y,obj_tank)=false){
        return(true);
    }
}
//Senão
return(false);
