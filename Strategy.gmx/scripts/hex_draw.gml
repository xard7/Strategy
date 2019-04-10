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

if(m_carry_level > 0)
{
    var p2 = (m_type & MAP_TERRAIN_TYPE.player_2) != 0;
    
    if(p2)
    {
        shader_set(hex_players_sh);
    }
    else
    {
        shader_set(hex_player_1_sh);
    }
    
    draw_sprite(hex_select, m_carry_level, x, y);
    shader_reset();
}
else if(m_carry_level < 0)
{
    var carry_level = 12 + m_carry_level;
    var p1 = (m_type & MAP_TERRAIN_TYPE.player_1) != 0;
    
    if(p1)
    {
        shader_set(hex_players_sh);
    }
    else
    {
        shader_set(hex_player_2_sh);
    }
    
    draw_sprite(hex_select, carry_level, x, y);
    shader_reset();
}
    
if(DEBUG_MODE == true)
{
    draw_text_ext_transformed(x - 70, y - 50, string(m_x_in_grid) + ", " + string(m_y_in_grid), 1000, 500, 4, 4, 0);
}

