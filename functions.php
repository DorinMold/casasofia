<?php

// function register_session() {
//     static $x = null;

//     if ($x === null) {
//        $x = (int)get_post_meta(9,"vizita", true);
//     }
// }

function register_my_session(){
    if( ! session_id() ) {
        session_start();
        if ( $_SESSION['count'] === null ) {
            $_SESSION['count'] = (int)get_post_meta(9,"vizita", true);
        }
    }
}

add_action('init', 'register_my_session');



/**
 * Enqueue scripts and styles.
 */
function vilasofia_child_scripts() {
	
	wp_enqueue_style('bootstrap', get_stylesheet_directory_uri() . "/assets/bootstrap.min.css" );
	
	wp_enqueue_style( 'vilasofia-style', get_stylesheet_uri() );

	wp_enqueue_style('jquery-ui_css', get_stylesheet_directory_uri() . "/assets/jquery-ui.min.css");
	wp_enqueue_style('jquery-str-ui_css', get_stylesheet_directory_uri() . "/assets/jquery-ui.structure.min.css");
	wp_enqueue_style('jquery-ui-theme_css', get_stylesheet_directory_uri() . "/assets/jquery-ui.theme.min.css");

	wp_enqueue_script( 'vilasofia-main', get_stylesheet_directory_uri() . '/js/main.js', array('jquery'),  '20151215', true );
	//wp_enqueue_script('jquery-ui', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js', array('jquery'), '1.8.6');
	wp_enqueue_script('jquery-ui', get_stylesheet_directory_uri() . '/js/jquery-ui.min.js', array('jquery'), '1.8.6');

	wp_localize_script('vilasofia-main', 'vars', array(
		'site_url' => get_site_url()
		)
	);
}
add_action( 'wp_enqueue_scripts', 'vilasofia_child_scripts' );



function customPostType(){
    
    $labels = array(
        'name' => 'Rezervari',
        'singular_name' => 'Rezervare',
        'add_new' => 'Adauga Rezervare',
    );

    $details = array(
        'labels' => $labels,
        'show_ui' => true,
        'show_in_rest' => true,
        'description' => 'Rezervare',
        'public' => true,
        'supports' => array('title','author','post-formats','custom-fields','editor')
    );

    register_post_type("rezervare", $details);
    
    // register_post_type("stars", array(
    //      'labels' => array('name' => 'stars',
    //                        'singular_name' => "Star",
    //                       ),
    //      'show_ui' => true,
    //      'show_in_rest' => true,
    //      'description' => 'Number of stars given',
    //      'public' => true,
    //      'suports' => array('title','editor')
    //     ));
        
}


add_action('init','customPostType');

function test($x) {
    static $count;
    $count = $count + $x;
}
//add_action( 'after_setup_theme', 'test' );

