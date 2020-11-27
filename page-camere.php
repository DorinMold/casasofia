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
		<main id="main" class="page-camere container site-main">

		<?php
		while ( have_posts() ) :
			the_post(); 

			// get_template_part( 'template-parts/content', 'page' ); ?>

			<div class="cotainer">
				<div class="continut-camere">
					<h2> Casa Sofia dispune de 3 camere cu dotari identice </h2>
					<h4 class="mt-5 px-5 py-3 text-center"> Camerele sunt de tip "camere de familie 2+1" - Tariful este de asemenea acelasi, adica 140 Ron\noapte </h4>
					<div class="camere-lista mb-5">
						<div>
							<!-- <img class="w-100" src="<?php echo get_template_directory_uri() ?>/assets/poze/400 x 300/camera 1.jpg" > -->
							<?php echo do_shortcode('[ngg_images gallery_ids=1 display_type=photocrati-nextgen_basic_thumbnails disable_pagination=1 images_per_page=1 show_all_in_lightbox=1]'); ?>
							<h6>Apasa poza pentru galerie</h6>
						</div>
						<div>
							<p> Camerele sunt spatioase si au in dotare un <span>pat matrimonial </span></p>
							<p> Exista de asemenea un <span> televizor </span> in fiecare camera </p>
						</div>
					</div>
				</div>
				<div>
					<div class="camere-lista my-5">
						<div>
							<!-- <img class="w-100" src="<?php echo get_template_directory_uri() ?>/assets/poze/400 x 300/toaleta.jpg" > -->
							<?php echo do_shortcode('[ngg_images gallery_ids=3 display_type=photocrati-nextgen_basic_thumbnails disable_pagination=1 images_per_page=1 show_all_in_lightbox=1]'); ?>
							<h6>Apasa poza pentru galerie</h6>
						</div>
						<div>
							<p> Camerele sunt dotate fiecare cu o toaleta moderna in conditii foarte bune </p>
							<p> Oferim o <span> curatenie impecabila </span> </p>
						</div>
					</div>
				</div>
				<div>
					<div class="camere-lista my-5">
						<div>
						<?php echo do_shortcode('[ngg_images gallery_ids=2 display_type=photocrati-nextgen_basic_thumbnails disable_pagination=1 images_per_page=1 show_all_in_lightbox=1]'); ?>
							<!-- <img class="w-100" src="<?php echo get_template_directory_uri() ?>/assets/poze/400 x 300/hol.jpg" > -->
							<h6>Apasa poza pentru galerie</h6>
						</div>
						<div>
							<p> Spatiul din coridoare este <span> bine luminat </span> </p>
							<p> si este mentinut <span> mereu curat </span></p>
						</div>
					</div>
				</div>
				<div>
					<div class="camere-lista my-5">
						<div>
							<!-- <img class="w-100" src="<?php echo get_template_directory_uri() ?>/assets/poze/400 x 300/bucatarie.jpg" > -->
							<?php echo do_shortcode('[ngg_images gallery_ids=2 display_type=photocrati-nextgen_basic_thumbnails disable_pagination=1 images_per_page=1 show_all_in_lightbox=1]'); ?>
							<h6>Apasa poza pentru galerie</h6>
						</div>
						<div>
							<p> Bucataria pensiunii este <span> bine utilata </span> cu un frigider, aragaz, cafetiera, aparat de prajit paine, vesela curata </p>
							<p> Si acest spatiu esential este <span> mereu curat </span></p>
							<p> Atunci cand vremea o permite puteti servi masa in foisor</p>
						</div>
					</div>
				</div>
			</div>

			<?php
			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;
		
			endwhile; // End of the loop.
		?>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php
//get_sidebar();
get_footer();
