ini_open("controls.ini");

ini_write_real("player1","direita",ord('D'));
ini_write_real("player1","esquerda",ord('A'));
ini_write_real("player1","baixo",ord('S'));
ini_write_real("player1","cima",ord('W'));
ini_write_real("player1","tiro",ord('H'));
ini_write_real("player1","mina",ord('J'));

ini_write_real("player2","direita",vk_right);
ini_write_real("player2","esquerda",vk_left);
ini_write_real("player2","baixo",vk_down);
ini_write_real("player2","cima",vk_up);
ini_write_real("player2","tiro",vk_numpad1);
ini_write_real("player2","mina",vk_numpad2);

ini_write_real("controle","pause",vk_enter);
ini_write_real("controle","back",vk_escape);


ini_close();
