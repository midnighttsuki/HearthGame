///st_player_move();
switch(pState) 
{
    case "UP":
    {
        image_speed = anime; ///sets the speed on player animation
        sprite_index = playerSprite[0]; ///sets players direction sprite
        xSpd = 0; ///set x axis to 0
        ySpd = -pSpd; /// using the player's speed moves player up or down    
        pDirection = 90; ///sets players direction
        
        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }
        else{            
            check_inputs();
        }
        break;
    }
    
    case "DOWN": 
    {
        image_speed = anime;
        sprite_index = playerSprite[1];
        xSpd = 0;
        ySpd = pSpd;
        pDirection = 270;
                                         
        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }   
        else{            
            check_inputs();
        }
        break;
    }
    
    case "LEFT": 
    {
        image_speed = anime;
        sprite_index = playerSprite[2];
        xSpd = -pSpd;
        ySpd = 0;
        pDirection = 180;                 
    
        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }   
        else{            
            check_inputs();
        }
        break;
    }
    case "RIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[3];
        xSpd = pSpd;
        ySpd = 0;
        pDirection = 0;                

        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }  
        else{            
            check_inputs();
        }
        break;
    }
    case "UPLEFT":
    {
        image_speed = anime;
        sprite_index = playerSprite[4];
        xSpd = -pSpd;
        ySpd = -pSpd;
        pDirection = 135;        
        
        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }
        else{            
            check_inputs();
        }
        break;
    }
    case "UPRIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[5];
        xSpd = pSpd;
        ySpd = -pSpd;     
        
        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }
        else{            
            check_inputs();
        }
        break;
    }
    case "DOWNLEFT":
    {
        image_speed = anime;
        sprite_index = playerSprite[6];
        xSpd = -pSpd;
        ySpd = pSpd;
        pDirection = 225;
                     
        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }
        else{            
            check_inputs();
        }
        break;
    }
    case "DOWNRIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[7];
        xSpd = pSpd;
        ySpd = pSpd;      
        pDirection = 315;
                           
        if(Input.tumble)
        {
            state_switch(st_player_tumble);
        }
        else{            
            check_inputs();
        }
        break;
    }
}
collision(); ///After setting the players vel it then checks the collision and moves the player
