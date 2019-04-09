/// hex_draw()

if(m_selected)
{
    shader_set(hex_selected_sh);
}
draw_self();
if(m_selected)
{
    shader_reset();
}

if(m_carry_level != 0)
{
    shader_set(hex_player_sh);
    draw_sprite(hex_select, 12, x, y);
    shader_reset();
}
    
if(DEBUG_MODE == true)
{
    draw_text_ext_transformed(x - 70, y - 50, string(m_x_in_grid) + ", " + string(m_y_in_grid), 1000, 500, 4, 4, 0);
}

