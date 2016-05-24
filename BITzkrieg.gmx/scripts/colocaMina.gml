var tanqueh = 48; 
var tanquew = 48;
var minah = 12;
var minaw = 12;

             //direção do tanque
switch (argument0){
    //direita
    case 0:
        instance_create(x-minaw,y+(tanqueh/2),obj_mine);
        break;
    //cima
    case 90:
        instance_create(x+(tanquew/2),y+tanqueh+minah,obj_mine);
        break;
    //esquerda
    case 180:
        instance_create(x+tanquew+minaw,y+(tanqueh/2),obj_mine);
        break;
    //baixo
    case 270:
        instance_create(x+(tanquew/2),y-minah,obj_mine);
        break;
}
