var bullet;
        //tipo do tanque
switch (argument1){
    case "player01":
        bullet = obj_bulletPlayer01;
        break;
    case "player02":
        bullet = obj_bulletPlayer02;
        break;
    case "enemy01":
        bullet = obj_bulletEnemy01;
        break;
}


        //direção do tanque
switch (argument0){
    //direita
    case 0:
        instance_create(x+50,y+28,bullet);
        break;
    //cima
    case 90:
        instance_create(x+24,y+2,bullet);
        break;
    //esquerda
    case 180:
        instance_create(x-2,y+28,bullet);
        break;
    //baixo
    case 270:
        instance_create(x+24,y+52,bullet);
        break;
}
