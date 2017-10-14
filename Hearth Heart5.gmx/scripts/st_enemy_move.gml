///st_enemy_move();
scr_find_player();
var xDirection = "";
var yDirection = "";
var currentDirection = xDirection + yDirection;
if(eTargetX > x)
{
    xDirection = "RIGHT"   
}
else if(eTargetX < x)
{
    xDirection = "LEFT"
}
else{
    xDirection = ""
}
if(eTargetY >= y)
{
    yDirection = "DOWN"   
}
else if(eTargetY < y)
{
    yDirection = "UP"
}
else{
    xDirection = ""
}
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
        ySpd = -eSpd;
        xSpd = -eSpd;
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
