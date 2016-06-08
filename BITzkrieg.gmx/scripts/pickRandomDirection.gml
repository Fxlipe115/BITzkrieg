//pickRandomDirection()
//método que seta uma direção nova pro tank de maneira aleatória

var result = 0;
result = irandom(3);

switch(result){
    case 0:
        dir = 0;
        break;
    case 1:
        dir = 90;
        break;
    case 2:
        dir = 180;
        break;
    case 3:
        dir = 270;
        break;
}
