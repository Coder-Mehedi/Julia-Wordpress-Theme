<?php 

function cptui_register_my_cpts() {

	/**
	 * Post Type: Blog Posts.
	 */

	$labels = array(
		"name" => __( "Blog Posts", "julia" ),
		"singular_name" => __( "Blog Post", "julia" ),
	);

	$args = array(
		"label" => __( "Blog Posts", "julia" ),
		"labels" => $labels,
		"description" => "",
		"public" => true,
		"publicly_queryable" => true,
		"show_ui" => true,
		"delete_with_user" => false,
		"show_in_rest" => true,
		"rest_base" => "",
		"rest_controller_class" => "WP_REST_Posts_Controller",
		"has_archive" => false,
		"show_in_menu" => true,
		"show_in_nav_menus" => true,
		"exclude_from_search" => false,
		"capability_type" => "post",
		"map_meta_cap" => true,
		"hierarchical" => false,
		"rewrite" => array( "slug" => "blog", "with_front" => true ),
		"query_var" => true,
		"supports" => array( "editor", "thumbnail" ),
	);

	register_post_type( "blog", $args );
}

add_action( 'init', 'cptui_register_my_cpts' );
