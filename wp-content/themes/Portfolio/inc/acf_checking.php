<?php

function isacf_plugin_active(){
    if(function_exists('get_field')){
        return true;
    }
    return false;
}



function get_field_acf($name){
    global $post; 
    if( isacf_plugin_active() ):
        return get_field($name, 'option');
    else:
        return 'You need to download ACF or activate.';
    endif;
}

function is_field_empty($name){
    if( !empty(get_field_acf($name)) ){
        return true;
    }
    return false;
}