///HP stat Control
if(pHP <= 0)
{
    state_switch(st_player_dead);   
}

///Stamina Control
if(pStamina < pMaxStamina && staminaTimer == 5 * room_speed)
{
    pStamina++;
    staminaTimer /= 2;
}
else if(pStamina == pMaxStamina)
{
    staminaTimer = 0;
}
else{
    staminaTimer++;
}
