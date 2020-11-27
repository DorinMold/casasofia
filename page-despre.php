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

	<div id="primary-despre" class="content-area">
		<main id="main" class="page-despre container site-main">

		<?php
		while ( have_posts() ) :
			the_post(); 

			// get_template_part( 'template-parts/content', 'page' ); ?>

			<div class="inside-container">
				<div>
					<h3> Cateva cuvinte despre locatia noastra </h3>
					<p> Casa Sofia este o locatie frumoasa din inima Bucovinei, în asa numita tara a Dornelor. 
						De la noi este foarte usor de ajuns în Vatra Dornei, sunt doar 9 km pana la telescaun, 
						parcul central, sau pârtia de ski. Ne aflam într-un loc de poveste unde privelistea este deosebita 
						si niciodata la fel. 
					</p>
					<h3> Atractii turistice ale zonei </h3>
					<p> Puncte de atractie turistica sunt multe si vom enumera aici doar câteva pentru a va ajuta sa descoperiti 
						frumusetile zonei. 
					</p>
				</div> 

				<div class="despartitor"> </div>

				<div class="row">
					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<!-- <img class="rounded-circle" src="<?php //echo get_stylesheet_directory_uri(); ?>/assets/poze/turistice/ousorul.jpg"/> -->
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block"> Vârful Ousorul </span> 
							<span class="position-absolute"> relativ usor de ajuns - 2 km de Casa Sofia. </span> 
						</div>
					</div>
					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block"> Parcul Calimani </span> 
							<span class="position-absolute">  cu stâncile 12 Apostoli & schitul 12 Apostoli la cca 10 km de Casa Sofia </span> 
						</div>
					</div>
					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block"> Vatra Dornei </span> 
							<span class="position-absolute"> Statiunea montana la 9 km de Casa Sofia </span> 
						</div>
					</div> 
				<!-- </div> -->
				<!-- <div class="row"> -->
					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block"> Castelul Dracula </span> 
							<span class="position-absolute"> la 30 km de Casa Sofia </span> 
						</div>
					</div> 

					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block">  Lacul Colibita </span> 
							<span class="position-absolute"> la 40 km de Casa Sofia </span> 
						</div>
					</div> 

					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block">  Manastirile Bucovinei </span> 
							<span class="position-absolute"> Intr-o zi de plimbare se pot vizita Sucevita, Moldovita, Putna, Voronet </span> 
						</div>
					</div> 

					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block"> Salina Cacica  </span> 
							<span class="position-absolute"> Un loc de sanatate si/sau recreere </span> 
						</div>
					</div> 
				<!-- </div> -->
				<!-- <div class="row"> -->
					<div class="col-sm-4 col-md-3 mb-4 turistic-parent"> 
						<div class="rounded-circle turistic position-relative" >
							<span class="position-absolute d-inline-block"> Mocanita  </span> 
							<span class="position-absolute"> Incursiune în inima muntilor din Bucovina </span> 
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
