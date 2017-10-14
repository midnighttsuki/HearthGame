///scr_enemy_stall_state()
if (waitTimer1 >= 0){
    state_switch(st_enemy_standing);
}
else{
 waitTimer1--;
}
