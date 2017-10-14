///scr_find_player();
if (instance_exists(obj_player)) {

    var playerDistance = point_distance(x, y, obj_player.x, obj_player.y);
    
    if (playerDistance <= eSight)
    {
        eTargetX = obj_player.x;
        eTargetY = obj_player.y;
        state_switch(st_enemy_chase);
    } 
    else {
        scr_enemy_next_state();
    }
} else {
    scr_enemy_next_state();
}
