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
	<br/>
	<div id="primary" class="content-area">
		<!-- <main id="main" class="<?php //if (is_page('Contact')) echo 'page-contact container' ?> site-main"> -->

		<?php
		$vizite = new WP_QUERY(array(
			'pagename' => 'casa-sofia'
		));
		while ( $vizite->have_posts() ) :
			   $vizite->the_post();
			   $id_post = get_the_ID();
			   //echo $id_post;
		endwhile;
		
		wp_reset_postdata();
		while ( have_posts() ) :
			the_post();

			echo "Numarul de vizite:";
			$vizite = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.meta_key = 'vizita'");
			echo $vizite[0];
			//$wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id IN ( $linie ) AND $wpdb->postmeta.meta_key = 'cam1st' ");
			//get_template_part( 'template-parts/content', 'page' );

			// If comments are open or we have at least one comment, load up the comment template.
			//if ( comments_open() || get_comments_number() ) :
				//comments_template();
			//endif;

		endwhile; // End of the loop. -->
		?>
		<div style="height: 30px;">
		</div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
//get_sidebar();
get_footer();
