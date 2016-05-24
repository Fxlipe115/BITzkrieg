//pega a tecla
//keyboard_clear(vk_anykey);
var key = 0;


//dá certo mas tem que pressionar a tecla e depois clicar no botão
if(keyboard_key != 0){
    key = keyboard_key;
    
    //salva a tecla
    ini_open("controls.ini");

    ini_write_real(argument0,argument1,key);

    ini_close();
}

