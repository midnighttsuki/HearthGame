///scr_get_input
a_key = keyboard_check(ord('A'));
d_key = keyboard_check(ord('D'));
w_key = keyboard_check(ord('W'));
s_key = keyboard_check(ord('S'));
dash_key = keyboard_check_pressed (vk_lshift);
attack_key = mouse_check_button_pressed(mb_left)

// Get the axis
xaxis = (d_key - a_key);
yaxis = (s_key - w_key);

// Check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh)
    yaxis = gamepad_axis_value(0, gp_axislv)
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
}
