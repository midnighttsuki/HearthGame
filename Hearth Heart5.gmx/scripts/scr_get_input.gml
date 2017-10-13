///scr_get_input
/*
// Get the axis
xaxis = (d_key - a_key);
yaxis = (s_key - w_key);
}*/
///check_input();
///checks input for what key
if(Input.up_key) 
{
    ///sets players state to direction then switchs state too player walk
    obj_player.face = "UP";
    state_change(scr_move_state);
}
if(Input.down_key) 
{    
    obj_player.face = "DOWN";
    state_change(scr_move_state);
}
if(Input.left_key)
{    
    obj_player.face = "LEFT";
    state_change(scr_move_state);
}
if(Input.right_key)
{    
    obj_player.face = "RIGHT";
    state_change(scr_move_state);
}
if(Input.up_key && Input.left_key)
{   
    obj_player.face = "UPLEFT";
    state_change(scr_move_state);
}
if(Input.up_key && Input.right_key)
{    
    obj_player.face = "UPRIGHT";
    state_change(scr_move_state);
}
if(Input.down_key && Input.left_key)
{    
    obj_player.face = "DOWNLEFT";
    state_change(scr_move_state);
}
if(Input.down_key && Input.right_key)
{    
    obj_player.face = "DOWNRIGHT";
    state_change(scr_move_state);
}
if(!Input.up_key && !Input.down_key && !Input.left_key && !Input.right_key)
{
    ///if no keys are pressed player is set to IDLE
    obj_player.face = "IDLE";
    state_change(scr_standing_state);
}
