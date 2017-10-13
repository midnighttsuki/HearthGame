///collision();


///Horizontal movement and collision detects if there is a wall or a ramp then moves player according
if(!isDashing)
{
    if(place_meeting(x + xSpd, y, obj_cDiagnoal_tr) || place_meeting(x + xSpd, y, obj_cDiagnoal_tl))
    {
        var plusY = 0;
        
        while(place_meeting(x + xSpd, y + plusY, obj_parWall) && plusY <= abs(xSpd)|| place_meeting(x + xSpd, y + plusY, obj_parNPC) && plusY <= abs(xSpd))
        {
            plusY += 1;
        }
        if(place_meeting(x + xSpd, y + plusY, obj_parWall)|| place_meeting(x + xSpd, y + plusY, obj_parNPC))
        {
            while(!place_meeting(x + sign(xSpd), y, obj_parWall)&& !place_meeting(x + sign(xSpd), y, obj_parNPC))
            {
            
                x += sign(xSpd);
            }
        xSpd = 0;
        }
        else
        {
            y += plusY;
        }
    }
    if(place_meeting(x + xSpd, y, obj_parWall) || place_meeting(x + xSpd, y, obj_parNPC))
    {
        plusY = 0;
        
        while(place_meeting(x + xSpd, y - plusY, obj_parWall) && plusY <= abs(xSpd)|| place_meeting(x + xSpd, y - plusY, obj_parNPC) && plusY <= abs(xSpd))
        {
            plusY += 2;
        }
        if(place_meeting(x + xSpd, y - plusY, obj_parWall)|| place_meeting(x + xSpd, y - plusY, obj_parNPC))
        {
            while(!place_meeting(x + sign(xSpd), y, obj_parWall) && !place_meeting(x + sign(xSpd), y, obj_parNPC))
            {
                x += sign(xSpd);
            }
        xSpd = 0;
        }
        else
        {
            y -= plusY;
        }
    }
    x += xSpd;
    
    ///Vertical movement and collision detects if there is a wall or a ramp then moves player according
    if(place_meeting(x, y + ySpd, obj_cDiagnoal_tl) || place_meeting(x, y + ySpd, obj_cDiagnoal_bl))
    {
        var plusX = 0;
        while(place_meeting(x + plusX, y + ySpd, obj_parWall) && plusX <= abs(ySpd)|| place_meeting(x + plusX, y + ySpd, obj_parNPC) && plusX <= abs(ySpd))
        {
            plusX += 2;
        }
        if(place_meeting(x + plusX, y + ySpd, obj_parWall)|| place_meeting(x + plusX, y + ySpd, obj_parNPC))
        {
            while(!place_meeting(x, y + sign(ySpd), obj_parWall) && !place_meeting(x, y + sign(ySpd), obj_parNPC))
            {
                y += sign(ySpd);
            }
            ySpd = 0;
        }
        else
        {
            
            x += plusX;
        }
    }
    if(place_meeting(x, y + ySpd, obj_parWall)|| place_meeting(x, y + ySpd, obj_parNPC))
    {
        plusX = 0;
        while(place_meeting(x - plusX, y + ySpd, obj_parWall) && plusX <= abs(ySpd)|| place_meeting(x - plusX, y + ySpd, obj_parNPC) && plusX <= abs(ySpd))
        {
            plusX += 1;
        }
        if(place_meeting(x - plusX, y + ySpd, obj_parWall)|| place_meeting(x - plusX, y + ySpd, obj_parNPC))
        {
            while(!place_meeting(x, y + sign(ySpd), obj_parWall) && !place_meeting(x, y + sign(ySpd), obj_parNPC))
            {
                y += sign(ySpd);
            }
            ySpd = 0;
        }
        else
        {
            
            x -= plusX;
        }
        
    }
    y += ySpd;
}
else{
    if(place_meeting(x + (xSpd * dashSpd), y, obj_cDiagnoal_tr) || place_meeting(x + (xSpd * dashSpd), y, obj_cDiagnoal_tl))
    {
        var plusY = 0;
        
        while(place_meeting(x + (xSpd * dashSpd), y + plusY, obj_parWall) && plusY <= abs(xSpd * dashSpd)|| place_meeting(x + (xSpd * dashSpd), y + plusY, obj_parNPC) && plusY <= abs(xSpd * dashSpd))
        {
            plusY += 1;
        }
        if(place_meeting(x + (xSpd * dashSpd), y + plusY, obj_parWall)|| place_meeting(x + (xSpd * dashSpd), y + plusY, obj_parNPC))
        {
            while(!place_meeting(x + sign(xSpd * dashSpd), y, obj_parWall)&& !place_meeting(x + sign(xSpd * dashSpd), y, obj_parNPC))
            {
            
                x += sign(xSpd * dashSpd);
            }
        xSpd = 0;
        }
        else
        {
            y += plusY;
        }
    }
    if(place_meeting(x + (xSpd * dashSpd), y, obj_parWall) || place_meeting(x + (xSpd * dashSpd), y, obj_parNPC))
    {
        plusY = 0;
        
        while(place_meeting(x + (xSpd * dashSpd), y - plusY, obj_parWall) && plusY <= abs(xSpd * dashSpd)|| place_meeting(x + (xSpd * dashSpd), y - plusY, obj_parNPC) && plusY <= abs(xSpd * dashSpd))
        {
            plusY += 2;
        }
        if(place_meeting(x + (xSpd * dashSpd), y - plusY, obj_parWall)|| place_meeting(x + (xSpd * dashSpd), y - plusY, obj_parNPC))
        {
            while(!place_meeting(x + sign(xSpd * dashSpd), y, obj_parWall) && !place_meeting(x + sign(xSpd * dashSpd), y, obj_parNPC))
            {
                x += sign(xSpd * dashSpd);
            }
        xSpd = 0;
        }
        else
        {
            y -= plusY;
        }
    }
    x += (xSpd * dashSpd);
    
    ///Vertical movement and collision detects if there is a wall or a ramp then moves player according
    if(place_meeting(x, y + (ySpd * dashSpd), obj_cDiagnoal_tl) || place_meeting(x, y + (ySpd * dashSpd), obj_cDiagnoal_bl))
    {
        var plusX = 0;
        while(place_meeting(x + plusX, y + (ySpd * dashSpd), obj_parWall) && plusX <= abs(ySpd * dashSpd)|| place_meeting(x + plusX, y + (ySpd * dashSpd), obj_parNPC) && plusX <= abs(ySpd * dashSpd))
        {
            plusX += 2;
        }
        if(place_meeting(x + plusX, y + (ySpd * dashSpd), obj_parWall)|| place_meeting(x + plusX, y + (ySpd * dashSpd), obj_parNPC))
        {
            while(!place_meeting(x, y + sign(ySpd * dashSpd), obj_parWall) && !place_meeting(x, y + sign(ySpd * dashSpd), obj_parNPC))
            {
                y += sign(ySpd * dashSpd);
            }
            ySpd = 0;
        }
        else
        {
            
            x += plusX;
        }
    }
    if(place_meeting(x, y + (ySpd * dashSpd), obj_parWall)|| place_meeting(x, y + (ySpd * dashSpd), obj_parNPC))
    {
        plusX = 0;
        while(place_meeting(x - plusX, y + (ySpd * dashSpd), obj_parWall) && plusX <= abs(ySpd * dashSpd)|| place_meeting(x - plusX, y + (ySpd * dashSpd), obj_parNPC) && plusX <= abs(ySpd * dashSpd))
        {
            plusX += 1;
        }
        if(place_meeting(x - plusX, y + (ySpd * dashSpd), obj_parWall)|| place_meeting(x - plusX, y + (ySpd * dashSpd), obj_parNPC))
        {
            while(!place_meeting(x, y + sign(ySpd * dashSpd), obj_parWall) && !place_meeting(x, y + sign(ySpd * dashSpd), obj_parNPC))
            {
                y += sign(ySpd * dashSpd);
            }
            ySpd = 0;
        }
        else
        {
            
            x -= plusX;
        }
        
    }
    y += (ySpd * dashSpd);
}
