///check_inputs();
if(Input.tumble)
{
    state_switch(st_player_tumble);
}
if(Input.attack)
{
    //state_switch(st_player_attack);
}
if(Input.up) 
{
    ///sets players state to direction then switchs state too player walk
    pState = "UP";
    state_switch(st_player_move);
}
if(Input.down) 
{    
    pState = "DOWN";
    state_switch(st_player_move);
}
if(Input.left)
{    
    pState = "LEFT";
    state_switch(st_player_move);
}
if(Input.right)
{    
    pState = "RIGHT";
    state_switch(st_player_move);
}
if(Input.up && Input.left)
{   
    pState = "UPLEFT";
    state_switch(st_player_move);
}
if(Input.up && Input.right)
{    
    pState = "UPRIGHT";
    state_switch(st_player_move);
}
if(Input.down && Input.left)
{    
    pState = "DOWNLEFT";
    state_switch(st_player_move);
}
if(Input.down && Input.right)
{    
    pState = "DOWNRIGHT";
    state_switch(st_player_move);
}
if(!Input.up && !Input.down && !Input.left && !Input.right && !Input.tumble)
{
    ///if no keys are pressed player is set to IDLE
    pState = "IDLE";
    state_switch(st_player_standing);
}
