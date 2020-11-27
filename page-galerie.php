<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vilasofia
 */

get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main galerie">
			<div>
				<h1> Frumusetile Bucovinei </h1>
				<div>
					<span> </span>
				</div>
				<h3> la dispozitia ta </h3>
				<!-- <?php //echo do_shortcode('[metaslider id="49"]'); ?> -->
				<?php echo do_shortcode('[ngg_images gallery_ids="4" display_type="photocrati-nextgen_basic_slideshow" exclusions="4,6" gallery_width="800" gallery_height="500"]'); ?>

			</div>
			<h4> Aici poti auzi natura cum respira </h4>
			<div class="galerie-1">
				<div> 
					<p class="font-weight-bold mb-3"> In jurul pensiunii noastre </p>
					<p class="font-weight-bold mb-3"> este mult spatiu <span>verde</span> si multa <span>liniste</span>  </p>
				</div>	
			</div>
			<h4> Aici aerul este mai curat </h4>
			<div class="aer mb-3">
				<span class="w-75 mx-auto text-center d-block mb-1"><strong>Zona Dornelor</strong> este o zona cunoscuta pentru <strong>calitatea aerului </strong> si <strong>apelor </strong> sale</span>
				<span class="w-75 mx-auto text-center d-block mb-5">iar vizitatorii se declara mereu multumiti</span>
			</div>
			<div class="galerie-2"> 
				<div>
					<p class="font-weight-bold mb-3"> O zona de munte </p>
					<p class="font-weight-bold mb-3"> cu mult aer <span>curat</span> si <span>revigorant</span>  </p>
				</div>
			</div>	

			<h4> Aici oamenii sunt primitori </h4>
			<div class="aer mb-3">
				<span class="w-75 mx-auto text-center d-block mb-1">Oamenii acestor locuri sunt foarte <strong> ospitalieri </strong> si <strong> primitori </strong> </span>
				<span class="w-75 mx-auto text-center d-block mb-5">iar turistii sunt tratati cu caldura</span>
			</div>
			<div class="galerie-3"> 
				<div>
					<p class="font-weight-bold mb-3"> Calitatea noastra de gazde </p>
					<p class="font-weight-bold mb-3"> ne onoreaza a fi <span> bucurosi </span> de <span> oaspeti</span>  </p>
				</div>
			</div>	
			

		<!-- <?php
		// while ( have_posts() ) :
		// 	the_post();

		// 	get_template_part( 'template-parts/content', 'page' );

		// 	// If comments are open or we have at least one comment, load up the comment template.
		// 	if ( comments_open() || get_comments_number() ) :
		// 		comments_template();
		// 	endif;

		// endwhile; // End of the loop.
		?> -->

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
// get_sidebar();
get_footer();
