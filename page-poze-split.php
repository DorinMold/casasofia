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
		<main id="main" class="page-pozesplit site-main">

		<?php
		while ( have_posts() ) :
			the_post(); 

			// get_template_part( 'template-parts/content', 'page' ); ?>
            
			<div class="cotainer py-5 px-3">
                <div class="row">
                    <h2 class="col-sm-12 text-center"> Exploreaza-ne </h2>
                    <h5 class="mb-5 col-sm-12 text-center"> Pe dinauntru si pe dinafara </h5>
                </div>
                
				<div class="row">
                    <br/>
                    <div class="col-sm-6 div-poze">
                        <h4 class="px-4 text-center"><a href="<?php echo site_url('/camere') ?>"  class="d-inline-block mb-4">Poze interior</a></h4>
                        <a href="<?php echo site_url('/camere') ?>"  class="d-inline-block mb-4">
                              <img src="<?php echo get_stylesheet_directory_uri(). '/assets/poze/camera 1.jpg'  ?>" alt="">
                        </a>
                    </div>
                    <div class="sandwich d-sm-none"> &nbsp; </div>
                    <div class="col-sm-6 div-poze">
                        <h4 class="px-4 text-center"><a href="<?php echo site_url('/galerie') ?>" class="d-inline-block mb-4">Poze exterior</a></h4>
                        <a href="<?php echo site_url('/camere') ?>"  class="d-inline-block mb-4">
                             <img src="<?php echo get_stylesheet_directory_uri(). '/assets/poze/curte2.jpg'  ?>" alt="">
                        </a>
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
