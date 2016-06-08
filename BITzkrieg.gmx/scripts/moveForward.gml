//moveForward()
//Pega a direção atual e continua andando

if (dir==0){ //Direita
    x+=spd;
}
if (dir==90){ //Para cima
    y-=spd;
}
if (dir==180){ //Esquerda
    x-=spd;
}
if (dir==270){ //Para baixo
    y+=spd;
}

