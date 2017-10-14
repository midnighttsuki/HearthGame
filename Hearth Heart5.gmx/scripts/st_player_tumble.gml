//move
if(pStamina > 0)
{
    isDashing = true;
    pStamina--;
    staminaTimer = 0;
    
    switch(pState){
        case "UP":
        {
            xSpd = 0;
            ySpd = -pSpd;
                                  
            break;
        }
        
        case "DOWN":     
        {
            xSpd = 0;
            ySpd = pSpd;
                                             
            break;
        }
        
        case "LEFT": 
        {
            xSpd = -pSpd;
            ySpd = 0;
                              
            break;
        }
        case "RIGHT":
        {
            xSpd = pSpd;
            ySpd = 0;
                            
            break;
        }
        case "UPLEFT":
        {
            xSpd = -pSpd;
            ySpd = -pSpd;
                            
            break;
        }
        case "UPRIGHT":
        {
            xSpd = pSpd;
            ySpd = -pSpd;
                                                       
            break;
        }
        case "DOWNLEFT":
        {
            xSpd = -pSpd;
            ySpd = pSpd;
                         
            break;
        }
        case "DOWNRIGHT":
        {
            ySpd = pSpd;
            xSpd = pSpd;
                               
            break;
        }
    }
    //move
    var dash = instance_create(x, y, obj_dash);
    dash.sprite_index = sprite_index;
    dash.image_index = image_index;
    collision();
}
state_switch(st_player_standing);
