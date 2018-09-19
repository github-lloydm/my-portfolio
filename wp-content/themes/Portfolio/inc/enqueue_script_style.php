<?php

class header_script{
    public function __construct(){
        add_action('wp_enqueue_scripts', array($this, 'style_script'));
    }

    public function style_script(){
        wp_enqueue_style( 'w3-portfolio-style', STYLE_DIRECTORY_URI.'/style/w3.css' , false);
        wp_enqueue_style( 'font-roboto-style', 'https://fonts.googleapis.com/css?family=Roboto'  ,false);
        wp_enqueue_style( 'font-awesome-portfolio-style', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css', array(),  '4.7.0' ,false);
        //wp_enqueue_style( 'font-awesome-portfolio-style', STYLE_DIRECTORY_URI.'/style/font-awesome.min.css'  ,false); 
    }

}

new header_script;