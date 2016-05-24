//Decide aleatoriamente o que fazer caso encontre um objeto
var n = irandom(3);

switch(n){
    case 0:
        self.dir += 90;
        break;
    case 1:
        self.dir -= 90;
        break;
    case 2:
        self.dir += 180;
        break;
    case 3:
        var inst;
        inst = instance_create(self.x+24, self.y+24, obj_bulletEnemy01);

        break;
}
