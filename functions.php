<?php
require_once 'inc/custom_post_type.php';
require_once 'inc/acf_fields.php';

function julia_enqueue_scripts() {
	wp_enqueue_style( 'julia-style', get_stylesheet_uri() );

	wp_enqueue_style( 'fontawesome', get_template_directory_uri() . '/assets/css/fontawesome.min.css', array(), '1.0' );

	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css', array(), '1.0' );

	wp_enqueue_style( 'sm-clean', get_template_directory_uri() . '/assets/css/sm-clean.css', array(), '1.0' );

	wp_enqueue_style( 'sm-core', get_template_directory_uri() . '/assets/css/sm-core.css', array(), '1.0' );

	wp_enqueue_style( 'default', get_template_directory_uri() . '/assets/css/default.css', array(), '1.0' );

	wp_enqueue_style( 'responsive', get_template_directory_uri() . '/assets/css/responsive.css', array(), '1.0' );



	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array('jquery'), '1.0', true );

	wp_enqueue_script( 'fontawesome', get_template_directory_uri() . '/assets/js/fontawesome.min.js', array(), '1.0', true );

	wp_enqueue_script( 'smartmenus', get_template_directory_uri() . '/assets/js/smartmenus.min.js', array(), '1.0', true );

	
}
add_action( 'wp_enqueue_scripts', 'julia_enqueue_scripts' );

if ( ! function_exists( 'julia_theme_setup' ) ) :

	function julia_theme_setup() {

		load_theme_textdomain( 'julia', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );


		add_theme_support( 'title-tag' );

		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'julia' ),
			'menu-2' => esc_html__( 'Footer One', 'julia' ),
			'menu-3' => esc_html__( 'Footer Two', 'julia' ),
			'menu-4' => esc_html__( 'Footer Three', 'julia' ),
			'menu-5' => esc_html__( 'Footer Four', 'julia' ),
		) );

		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'julia_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );


		// add_theme_support( 'custom-logo', array(
		// 	'height'      => 250,
		// 	'width'       => 250,
		// 	'flex-width'  => true,
		// 	'flex-height' => true,
		// ) );
	}
endif;
add_action( 'after_setup_theme', 'julia_theme_setup' );



if( function_exists('acf_add_options_page') ) {
	
	acf_add_options_page(array(
		'page_title' 	=> 'Theme General Settings',
		'menu_title'	=> 'Theme Option',
		'menu_slug' 	=> 'theme-general-settings',
		'capability'	=> 'edit_posts',
		'redirect'		=> true
	));

}

function julia_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Footer One', 'julia' ),
		'id'            => 'footer-1',
		'description'   => esc_html__( 'Add widgets here.', 'julia' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s footer-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );

	register_sidebar( array(
		'name'          => esc_html__( 'Footer Two', 'julia' ),
		'id'            => 'footer-2',
		'description'   => esc_html__( 'Add widgets here.', 'julia' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s footer-menu-2">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );

	register_sidebar( array(
		'name'          => esc_html__( 'Footer Three', 'julia' ),
		'id'            => 'footer-3',
		'description'   => esc_html__( 'Add widgets here.', 'julia' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s footer-menu-2">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );

	register_sidebar( array(
		'name'          => esc_html__( 'Footer Four', 'julia' ),
		'id'            => 'footer-4',
		'description'   => esc_html__( 'Add widgets here.', 'julia' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s footer-menu-2">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );

}
add_action( 'widgets_init', 'julia_widgets_init' );



function hook_css() { 

	$theme_color = get_field('theme_color','option');
	?>
        <style>
            :root {
                --theme-color: <?php echo $theme_color; ?>;
            }
        </style>
    <?php
}
add_action('wp_head', 'hook_css');

?>