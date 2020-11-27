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
	<main id="main" class="page-indicatii container site-main">

		<?php
		while ( have_posts() ) :
			the_post();

			?>
			<div class="row mb-5">
				<div class="col-md-6">
					<h1> Casa Sofia - <span> indicatii acces </span></h1> 
					<p> In raport cu anumite puncte de referinta suntem la 200 km de Cluj Napoca, 
							la 80 km de Bistrita Nasaud, 9 km de Vatra Dornei sau 120 km de Suceava. </p>
					<dl>
						<dt>Suntem situati intr-o zona usor acesibila prin toate modalitatile principale de transport: </dt>
						<br/>
						<dd> - Cu autobuzul (din Vatra Dornei) </dd>
						<br/>
						<div>
							<img src="<?php echo get_template_directory_uri() . '/assets/poze/ultimele/casa/semn_sofia_patrat.jpg'; ?>" alt="Indicator Casa Sofia">
						</div>
						<br/>
						<br/>
						<p> Sunt nenumarate microbuze sau autobuze care traverseaza zona, pensiunea noastra fiind situata la 300 m 
						de drumul european E58</p>
						<!-- <p> Statia de autobuz e in paropierea pensiunii </p>
						<dd> - Cu trenul (din Vatra Dornei) </dd>
						<p> se poate ajunge si cu trenul. </p> -->
					</dl>
				</div>
				<div class="col-md-6">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5406.002360213966!2d25.236950529895708!3d47.353374917366565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4735ed203e9f215d%3A0x5e521d74bcd0deb6!2sCasa%20Sofia!5e0!3m2!1sro!2sro!4v1575565095849!5m2!1sro!2sro"
					width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="">
				</iframe>
				</div>
			</div>

			<?php
			//get_template_part( 'template-parts/content', 'rezervari' );

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
