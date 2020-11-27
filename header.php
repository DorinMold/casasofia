<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package vilasofia
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'vilasofia' ); ?></a>

	<header id="masthead" class="site-header">
		<div class="site-branding">
			<div class="shadow">
				<?php
				the_custom_logo();
				if ( is_front_page() && is_home() ) :
					?>
					<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
					<?php
				else :
					?>
					<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
					<?php
				endif;
			//	$vilasofia_description = get_bloginfo( 'description', 'display' );
			//	if ( $vilasofia_description || is_customize_preview() ) :
			//		?>
			<!--		<p class="site-description"><?php //echo $vilasofia_description; /* WPCS: xss ok. */ ?></p>
				<?php //endif; ?> --> 

				<nav id="site-navigation" class="main-navigation">
					<!-- <button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e( 'Menu', 'vilasofia' ); ?></button> -->
					<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"> <i class="fa fa-bars"></i> </button>
					<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-1',
						'menu_id'        => 'primary-menu',
					) );
					?>
					<div class="overlay">

					</div>
				</nav><!-- #site-navigation -->
			</div><!-- .site-branding -->
		</div>
		<ul class="meniu-stanga">
		    <li><a href="<?php echo site_url('/poze-split'); ?>" title="Galerie Casa Sofia"> Galerie </a></li>
			<li> <a href="<?php echo site_url('/indicatii'); ?>"> Indicatii </a></li>
			<!-- <li> <a href="<?php echo site_url('/rezervari'); ?>"> Rezervari </a></li> -->
			<li> <a href="<?php echo site_url('/contact'); ?>"> Contact </a></li>
			<li> <a class="preturi" href="#"> Preturi </a></li>
			<li> <a href="https://www.facebook.com/Raaul0908/"> <span>Urmariti-ne pe <span>Facebook</span></span><i class="fa fa-facebook-f"></i> </a> 
			</li>
		</ul>
	</header><!-- #masthead -->

	<div class="div_pret">
	<span class="d-block span_pret1">
			Pretul unei camere este de 140 lei/camera					
	</span>
	<span class="d-block"> <strong> Pretul mentionat nu se aplica zilelor de sarbatoare publica (Craciun, Paste, Revelion) </strong> </span>
	<!-- <span class="d-block span_pret2">
			Rezervarile se pot face pe <a href="https://www.booking.com/hotel/ro/vila-sofia-dorna-candrenilor.ro.html"> 
			Booking.com </a>	si pe <a href="https://travelminit.ro/ro/cazare/casa-sofia-dorna-candrenilor"> Travelminit.ro </a>		
	</span> -->
	</div>

	<div id="content" class="site-content">
