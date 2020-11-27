<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vilasofia
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> >
		<!-- <header class="<?php echo is_front_page() ? ' header-front-page' : '' ?> entry-header"> -->
		<?php
			if (is_page('Contact')):
				?>
				<div class="contact-details-one p-5 mb-4">
					<h4 class="mb-3"> Casa Sofia </h4>
					<span> Nr. Tel: &nbsp; +40 741 661 377 </span>
					<span> Nr. Tel: &nbsp; +40 754 843 929 </span>
					<span> Adresa email: &nbsp; raaul_0908@yahoo.co.uk </span>
				</div>
				<?php
			endif; ?>
		<header class="<?php echo is_front_page() ? ' header-front-page' : '' ?> entry-header">
			<?php
				echo is_front_page() ? "<div class='front-page-h1'>" : "";
				// echo is_front_page() ? do_shortcode('[metaslider id="59"]') : '';
			?>

			<?php if (is_page('Contact')) {
				echo "<div class='div-contact-text mb-5 px-4 pt-4 pb-2'> <p class='contact-text'> Pentru a face o 
				  <strong>solicitare de rezervare</strong>, va rugam sa completati toate campurile de mai jos</p>";
				echo "<p> O sa va contactam pentru confirmare la datele de contact specificate </p> </div>";
			}  ?>

			<div class="wrapper-front"> 
				<?php the_title( '<div><h1 class="entry-title  mt-0">', '</h1></div>' ); 
				echo is_front_page() ? "<div><i class='fa fa-star'> </i><i class='fa fa-star'> </i><i class='fa fa-star'> </i></div>" : "";
				echo "<h3 class='h3-mobil pt-4'>";
					is_front_page() ? the_content() : "";
					echo "</h3>";
					echo is_front_page() ? "<h3 class='pt-4'><span> Suntem in inima Bucovinei </span></h3>" : "";
				?>
			</div>

		</header><!-- .entry-header -->
			<?php
			if (is_page('Contact')):
				?>
				<div class="contact-details-two p-3">
					<h4 class="mb-3"> Casa Sofia </h4>
					<span> Nr. Tel: &nbsp; +40 741 661 377 </span>
					<span> Nr. Tel: &nbsp; +40 754 843 929 </span>
					<span> Adresa email: &nbsp; raaul_0908@yahoo.co.uk </span>
				</div>
				<?php
			endif; ?>

		<?php vilasofia_post_thumbnail(); ?>

		<div class="entry-content">
			<?php
			!is_front_page() ? the_content() : '';

			wp_link_pages( array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'vilasofia' ),
				'after'  => '</div>',
			) );
			?>
		</div><!-- .entry-content -->

	<!-- <?php //if ( get_edit_post_link() ) : ?>
		<footer class="entry-footer">
			<?php
			//edit_post_link(
			//	sprintf(
			//		wp_kses(
			//			/* translators: %s: Name of current post. Only visible to screen readers */
			//			__( 'Edit <span class="screen-reader-text">%s</span>', 'vilasofia' ),
			//			array(
			//				'span' => array(
			//					'class' => array(),
			//				),
			//			)
			//		),
			//		get_the_title()
			//	),
			//	'<span class="edit-link">',
			//	'</span>'
			//);
			?>
		</footer><!-- .entry-footer -->
	<?php //endif; ?>
</article><!-- #post-<?php //the_ID(); ?> -->
