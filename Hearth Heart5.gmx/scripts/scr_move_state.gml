/*///scr_move_state
scr_get_input();

if (dash_key && obj_player_stats.stamina >= DASH_COST) {
    state = scr_dash_state;
    alarm[0] = room_speed/12;
    obj_player_stats.stamina -= DASH_COST
    obj_player_stats.alarm[0] = room_speed;
}

if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}
// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get the length
if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

*/
///st_player_walk()
///Checks what direction key was pressed then moves player proper direction.
switch(face) 
{
    case "UP":
    {
        image_speed = anime; ///sets the speed on player animation
        sprite_index = playerSprite[0]; ///sets players direction sprite
        hspd = 0; ///set x axis to 0
        vspd = -spd; /// using the player's speed moves player up or down
        p_direction = 90; ///sets players direction
        ///lets player keep moving unless talking to a npc.
                     
        scr_get_input();
        break;
    }
    
    case "DOWN": 
    {
        image_speed = anime;
        sprite_index = playerSprite[1];
        hspd = 0;
        vspd = spd;
        p_direction = 270;
                
                     
        scr_get_input();
        break;
    }
    
    case "LEFT": 
    {
        image_speed = anime;
        sprite_index = playerSprite[2];
        hspd = -spd;
        vspd = 0;
        p_direction = 180;
                      
        scr_get_input();
        break;
    }
    case "RIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[3];
        hspd = spd;
        vspd = 0;
        p_direction = 0;

                     
        scr_get_input();
        break;
    }
    case "UPLEFT":
    {
        image_speed = anime;
        sprite_index = playerSprite[4];
        hspd = -spd;
        vspd = -spd;
        p_direction = 135;
        
                     
        scr_get_input();
        break;
    }
    case "UPRIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[5];
        hspd = spd;
        vspd = -spd;
                        
                     
        scr_get_input();
        break;
    }
    case "DOWNLEFT":
    {
        image_speed = anime;
        sprite_index = playerSprite[6];
        hspd = -spd;
        vspd = spd;
        p_direction = 225;

                     
        scr_get_input();
        break;
    }
    case "DOWNRIGHT":
    {
        image_speed = anime;
        sprite_index = playerSprite[7];
        hspd = spd;
        vspd = spd;
        p_direction = 315;
                           
        scr_get_input();
        break;
    }
}
//collision(); ///After setting the players vel it then checks the collision and moves the player
