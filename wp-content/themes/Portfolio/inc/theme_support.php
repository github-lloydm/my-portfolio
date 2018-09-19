<?php 
/*
*	THEME SUPPORT
**/

class theme_support{


	public function __construct(){
		
		add_action( 'after_setup_theme', array($this, 'init_') );

		
		$this->init_();
	}

	public function init_(){
		if( function_exists('acf_add_options_page') ) {
    

		    if(is_super_admin()){
				acf_add_options_page(array(
		            'page_title'    => 'Portfolio Settings',
		            'menu_title'    => 'Portfolio Settings',
		            'menu_slug'     => 'theme-general-settings',
		            'capability'    => 'edit_posts',
		            'redirect'      => false
				));
				
				
                acf_add_options_sub_page(array(
		            'page_title'    => 'Header Settings',
		            'menu_title'    => 'Header',
		            'parent_slug'   => 'theme-general-settings',
                ));
                
		        acf_add_options_sub_page(array(
		            'page_title'    => 'Footer Settings',
		            'menu_title'    => 'Footer',
		            'parent_slug'   => 'theme-general-settings',
		        ));

		        
		    }    
		}

		/**
		 * Sets up theme defaults and registers support for various WordPress features.
		 *
		 * Note that this function is hooked into the after_setup_theme hook, which
		 * runs before the init hook. The init hook is too late for some features, such
		 * as indicating support for post thumbnails.
		 */
		if ( ! function_exists( 'ishizakicorp_theme_setup' ) ) {
			/*
			 * Make theme available for translation.
			 * Translations can be filed in the /languages/ directory.
			 * If you're building a theme based on ishizakicorp-theme, use a find and replace
			 * to change 'ishizakicorp-theme' to the name of your theme in all the template files.
			 */
			load_theme_textdomain( 'ishizakicorp-theme', get_template_directory() . '/languages' );

			// Add default posts and comments RSS feed links to head.
			add_theme_support( 'automatic-feed-links' );

			/*
			 * Let WordPress manage the document title.
			 * By adding theme support, we declare that this theme does not use a
			 * hard-coded <title> tag in the document head, and expect WordPress to
			 * provide it for us.
			 */
			add_theme_support( 'title-tag' );

			/*
			 * Enable support for Post Thumbnails on posts and pages.
			 *
			 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
			 */
			add_theme_support( 'post-thumbnails' );

			// This theme uses wp_nav_menu() in one location.
			register_nav_menus( array(
				'menu-1' => esc_html__( 'Primary', 'ishizakicorp-theme' ),
			) );

			/*
			 * Switch default core markup for search form, comment form, and comments
			 * to output valid HTML5.
			 */
			add_theme_support( 'html5', array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
			) );

			// Set up the WordPress core custom background feature.
			add_theme_support( 'custom-background', apply_filters( 'ishizakicorp_theme_custom_background_args', array(
				'default-color' => 'ffffff',
				'default-image' => '',
			) ) );

			// Add theme support for selective refresh for widgets.
			add_theme_support( 'customize-selective-refresh-widgets' );

			/**
			 * Add support for core custom logo.
			 *
			 * @link https://codex.wordpress.org/Theme_Logo
			 */
			add_theme_support( 'custom-logo', array(
				'height'      => 250,
				'width'       => 250,
				'flex-width'  => true,
				'flex-height' => true,
			) );
		}

	}//end of function init_()

}


new theme_support;
