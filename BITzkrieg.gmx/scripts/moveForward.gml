//moveForward()
//Pega a direção atual e continua andando

//Direita
if (dir=0){
    x = x+spd;
}
//Cima
else if (dir=90){
    y = y-spd;
}
//Esquerda
else if (dir=180){
    x = x-spd;
}
//Baixo
else{
    y = y+spd;
}
