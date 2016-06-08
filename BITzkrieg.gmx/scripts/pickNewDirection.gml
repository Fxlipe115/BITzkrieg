//pickNewDirection()
//Essa função será responsável por fazer o inimigo escolher uma rota alternativa sem andar pra trás
var listaDeDirecoes = ds_list_create();
var tamanho = 0;
var escolha = 0;
var valor = 0;

//Se não há um bloco a direita E a direção atual do objeto não é da direita para a esquerda
if (place_meeting(x+spd,y,obj_block)=false and dir!=180){
    //adiciona 'direita' como possibilidade
    ds_list_add(listaDeDirecoes, 0);
}
//Se não há um tanque
if (place_meeting(x+spd,y,obj_tank)=false and dir!=180){
    ds_list_add(listaDeDirecoes, 0);
}
//Se não está no limite do mapa
if (place_meeting(x+spd,y,obj_border)=false and dir!=180){
    ds_list_add(listaDeDirecoes, 0);
}
//Se não há um bloco a esquerda E a direção atual do objeto NÃO é da esquerda para a direita
if (place_meeting(x-spd,y,obj_block)=false and dir!=0){
    //adiciona 'esquerda' como possibilidade
    ds_list_add(listaDeDirecoes, 180);
}
//Se não há um tanque
if (place_meeting(x-spd,y,obj_tank)=false and dir!=0){
    ds_list_add(listaDeDirecoes, 180);
}
//Se não está no limite do mapa
if (place_meeting(x-spd,y,obj_border)=false and dir!=0){
    ds_list_add(listaDeDirecoes, 180);
}
//Se não há um bloco abaixo E a direção atual do objeto NÃO é de cima para baixo
if (place_meeting(x,y+spd,obj_block)=false and dir!=270){
    //adiciona 'para cima' como possibilidade
    ds_list_add(listaDeDirecoes, 90);
}
//Se não há um tanque
if (place_meeting(x,y+spd,obj_tank)=false and dir!=270){
    ds_list_add(listaDeDirecoes, 90);
}
//Se não está no limite do mapa
if (place_meeting(x,y+spd,obj_border)=false and dir!=270){
    ds_list_add(listaDeDirecoes, 90);
}
//Se não há um bloco a cima E a direção atual do objeto NÃO é de baixo para cima
if (place_meeting(x,y-spd,obj_block)=false and dir!=90){
    //adiciona 'para baixo' como possibilidade
    ds_list_add(listaDeDirecoes, 270);
}
//Se não há um tanque
if (place_meeting(x,y-spd,obj_tank)=false and dir!=90){
    ds_list_add(listaDeDirecoes, 270);
}
//Se não está no limite do mapa
if (place_meeting(x,y-spd,obj_border)=false and dir!=90){
    ds_list_add(listaDeDirecoes, 270);
}

//Atribuindo à variável 'tamanho' o tamanho da lista
tamanho = ds_list_size(listaDeDirecoes);
//Como os slots da lista começam a contar pelo 0(ou seja, tamanho = 3 -> [0][1][2])
//Setamos 'escolha' como uma escolha aleatoria de 0 até 'tamanho' - 1
escolha = irandom_range(0,tamanho-1);
//Setamos 'valor' recebendo o valor do slot escolhido
valor = ds_list_find_value(listaDeDirecoes,escolha);
//Finalmente agora configuramos a direção como 'valor'
dir = valor;
//Destruimos a lista para não haver complicações ao gerar este script novamente
ds_list_destroy(listaDeDirecoes);
