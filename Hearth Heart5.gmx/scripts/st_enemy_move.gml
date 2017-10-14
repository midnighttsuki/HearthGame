///st_enemy_chase();
scr_find_player();
var xDirection = "";
var yDirection = "";
var currentDirection = xDirection + yDirection;
///X direction
if(eTargetX == x && eTargetX -1 == x && eTargetX + 1 == x){
    xDirection = "";
}
else if(eTargetX > x && eTargetX -1 != x)
{
    xDirection = "RIGHT";
}
else if(eTargetX < x && eTargetX + 1 != x)
{
    xDirection = "LEFT";
}
///Y direction
if(eTargetY == y && eTargetY -1 == y && eTargetY + 1 == y){
    yDirection = ""
}
else if(eTargetY > y && eTargetY - 1 != y)
{
    yDirection = "DOWN"   
}
else if(eTargetY < y && eTargetY + 1 != y)
{
    yDirection = "UP"
}

///Sets current direction to yDirectin + xDirection
currentDirection = yDirection + xDirection;
switch(currentDirection){
    case "UP":{
        ySpd = -eSpd;
        xSpd = 0;
        eDirection = 90;
        break;
    }
    case "UPLEFT":{
        image_xscale = -1;
        ySpd = -eSpd;
        xSpd = -eSpd;
        eDirection = 135;
        break;
    }
    case "UPRIGHT":{
        image_xscale = 1;
        ySpd = -eSpd;
        xSpd = eSpd;
        eDirection = 45;
        break;
        }
    case "DOWN":{
        ySpd = eSpd;
        xSpd = 0;
        eDirection = 270;
        break;
    }
    case "DOWNLEFT":{
        image_xscale = -1;
        ySpd = eSpd;
        xSpd = -eSpd;
        eDirection = 225;
        break;
    }
    case "DOWNRIGHT":{
        image_xscale = 1;
        ySpd = eSpd;
        xSpd = eSpd;
        eDirection = 315;
        break;
    }
    case "LEFT":{
        image_xscale = -1;
        ySpd = 0;
        xSpd = -eSpd;
        eDirection = 180;
        break;
        }
    case "RIGHT":{
        image_xscale = 1;
        ySpd = 0;
        xSpd = eSpd;
        eDirection = 0;
        break;
    }
    case "":{
        ySpd = 0;
        xSpd = 0;
        break;
    }
}
collision();
