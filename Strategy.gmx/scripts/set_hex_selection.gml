/// set_hex_selection(obj)

var obj = argument[0];

with(obj)
{
    var hex_inst = get_hex_xy(x, y - (global.HEX_Y_OFFSET * 4), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    
    hex_inst = get_hex_xy(x - (global.HEX_X_OFFSET * 2), y - (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x - global.HEX_X_OFFSET, y - (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x, y - (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x + global.HEX_X_OFFSET, y - (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x + (global.HEX_X_OFFSET * 2), y - (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    
    hex_inst = get_hex_xy(x - (global.HEX_X_OFFSET * 2), y, hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x - global.HEX_X_OFFSET, y - global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x + global.HEX_X_OFFSET, y - global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x + (global.HEX_X_OFFSET * 2), y, hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    
    hex_inst = get_hex_xy(x - (global.HEX_X_OFFSET * 2), y + (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x - global.HEX_X_OFFSET, y + global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x, y + (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
    
    hex_inst = get_hex_xy(x + global.HEX_X_OFFSET, y + global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
                            
    hex_inst = get_hex_xy(x + (global.HEX_X_OFFSET * 2), y + (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
                            
                            
    hex_inst = get_hex_xy(x - global.HEX_X_OFFSET, y + (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
                            
    hex_inst = get_hex_xy(x, y + (global.HEX_Y_OFFSET * 4), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
                            
    hex_inst = get_hex_xy(x + global.HEX_X_OFFSET, y + (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone) hex_set_select(hex_inst, true);
    ds_list_add(m_selected_inst, hex_inst);
}
