///state_process(state)
if(state == 0){
    state = argument[0];
}

script_execute(state);

if(!state_changed){
    state_timer++;
}

state_changed = false;
