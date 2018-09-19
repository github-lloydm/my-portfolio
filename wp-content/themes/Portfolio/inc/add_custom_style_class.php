<?php

add_filter('body_class', function($classes){
    $classes[0] = 'w3-light-grey';
    return $classes;
});