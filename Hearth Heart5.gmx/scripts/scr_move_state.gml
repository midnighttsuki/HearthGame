///scr_move_state
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

// Control the sprite
image_speed = .2;
if (len == 0) image_index = 0;

switch (face) {
    case LEFT:
        sprite_index = spr_player_left;
        break;    

    case RIGHT:
        sprite_index = spr_player_right;
        break;    

    case DOWN:
        sprite_index = spr_player_down;
        break;    

    case DOWN_LEFT:
        sprite_index = spr_player_down_left;
        break;    

    case DOWN_RIGHT:
        sprite_index = spr_player_down_right;
        break;    

    case UP:
        sprite_index = spr_player_up;
        break;    

    case UP_LEFT:
        sprite_index = spr_player_up_left;
        break;    
    
    case UP_RIGHT:
        sprite_index = spr_player_up_right;
        break;    
}
