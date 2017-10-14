///scr_enemy_next_state();

if (waitTimer <= 0) {
    eTargetX = round(random(room_width));
    eTargetY = round(random(room_height));
    randomState = choose(st_enemy_move, st_enemy_standing);
    state_switch(randomState);
    waitTimer = room_speed * irandom_range(2,6);
}
else
{
    waitTimer--;
}
