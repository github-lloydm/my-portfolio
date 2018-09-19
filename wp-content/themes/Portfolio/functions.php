<?php

define('STYLE_DIRECTORY_URI', get_stylesheet_directory_uri());

/*
    header script and styling 
*/

require_once 'inc/enqueue_script_style.php';

/*
    add filter for custom css class
*/

require_once 'inc/theme_support.php';

/*
    add filter for custom css class
*/

require_once 'inc/add_custom_style_class.php';

/*
    ACF extensions code for avoiding errors
*/

require_once 'inc/acf_checking.php';

