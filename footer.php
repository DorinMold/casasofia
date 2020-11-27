<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package vilasofia
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer">

	<div class="loader-wrapper">
		<span class="loader">
			<span class="loader-inner">
			</span>
		</span>
	</div>

		<div class="site-info">
			<!-- <a href="<?php //echo esc_url( __( 'https://wordpress.org/', 'vilasofia' ) ); ?>"> -->

			<div class="container_wrap footer_color" id="container-footer">

					<div class="container">
						<div class="row">
						
							<div class="col-sm-3 footer_column">
								<div>
									<h6> Diverse </h6>
									<ul>
										<li> <a href="https://www.booking.com/hotel/ro/vila-sofia-dorna-candrenilor.ro.html" target="_blank"><span>Rezervari</span></a> </li>
										<li> <a href="<?php echo site_url(); ?>/contact/"><span>Contact</span></a> </li>
										<!-- <li> <a href="/virtual-tour/"><span>Virtual Tour</span></a> </li> -->
								<!--<li>[menu name="main-menu"]</li>-->
									</ul>
                                </div>

							</div>

							<div class="col-sm-3 footer_column">
								<div>
									<h6> Link-uri utile </h6>
									<ul>
										<!-- <li> <a href="https://taradornelor.ro/" target="_blank"><span>Despre Dorna</span></a> </li> -->
										<li><a href="https://www.facebook.com/caiibucovinei/"> Caii Bucovinei </a> </li>
										<li><a href="https://www.facebook.com/salvamontdorna"> Salvamont Vatra Dornei </a> </li>
										<li> <a href="http://www.vatra-dornei.ro/"><span>Primaria Vatra Dornei</span></a> </li>
										<li> <a href="http://primaria-dornacandrenilor.ro/"><span>Primaria Dorna Candrenilor</span></a> </li>
										<li> <a href="https://anpc.ro/"><span>Protectia consumatorului</span></a> </li>
								<!--<li>[menu name="main-menu"]</li>-->
									</ul>
                                </div>

							</div>

							<div class="col-sm-3 footer_column">
								<h5> CASA SOFIA </h5>
								<div><i class='fa fa-star'> </i><i class='fa fa-star'> </i><i class='fa fa-star'> </i></div>
							</div>

							<div class="col-sm-3 footer_column">
								<ul class="">
									<li>Casa Sofia</li>
									<li>Dorna Candrenilor</li>
									<li>Suceava, Romania</li>
									<li> Tel: +40 741 661 377 </li>
									<li> Tel: +40 754 843 929</li>
									<li>raaul_0908@yahoo.co.uk</li>
								</ul>
							</div>
						</div>
						
					</div>
					<!-- ####### END FOOTER CONTAINER ####### -->
					<div id="footer-copyright"> Copyright &copy; 2019 Casa Sofia </div>
						<?php
						/* translators: %s: CMS name, i.e. WordPress. */
						//printf( esc_html__( 'Proudly powered by %s', 'vilasofia' ), 'WordPress' );
						?>
					<!-- </a> -->
					<!-- <span class="sep"> | </span> -->
							<?php
							/* translators: 1: Theme name, 2: Theme author. */
							//printf( esc_html__( 'Theme: %1$s by %2$s.', 'vilasofia' ), 'vilasofia', '<a href="http://underscores.me/">Underscores.me</a>' );
							?>

		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
