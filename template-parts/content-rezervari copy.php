<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vilasofia
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php
		// if ( is_singular() ) :
		// 	the_title( '<h1 class="entry-title">', '</h1>' );
		// else :
			//the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		// endif;

		if ( 'post' === get_post_type() ) :
			?>
			<div class="entry-meta">
				<?php
				vilasofia_posted_on();
				vilasofia_posted_by();
				?>
			</div><!-- .entry-meta -->
		<?php endif; ?>

	</header><!-- .entry-header -->

	<?php vilasofia_post_thumbnail(); ?>

	<section class="section-rezervare">

		<div> 
		
			<?php 

			// function get_meta_values () {
			// 	global $wpdb;
			// 	$cam1_days = $pdb->get_results
			// }

			// get_meta_values();

			$azi = strtotime(date("Y-m-d"));

			$cam_days = new WP_Query([
				'post_type' => 'rezervare',
				'meta_query' => array(
					'relation' => 'OR',
					array(
						'key'     => 'cam1sf',
						'value'   => $azi,
						'compare' => '>=',
						'type'    => 'numeric'
					),
					array(
						'key'     => 'cam2sf',
						'value'   => $azi,
						'compare' => '>=',
						'type'    => 'numeric'
					),
					array(
						'key'     => 'cam3sf',
						'value'   => $azi,
						'compare' => '>=',
						'type'    => 'numeric'
					)
				)]);
			
			// var_dump($cam_days);
			// wp_reset_postdata();

			// $g = date('d M Y', get_post_meta(144,'cam1sf')[0]);
			// $g = get_post_meta(146,'cam1sf');

			
			// var_dump($g);
			// var_dump($azi);
			// var_dump($cam_days);
			
			$rezerv_id = [];
			$zile_cam1st = [];
			$zile_cam1sf = [];
			$zile_cam2st = [];
			$zile_cam2sf = [];
			$zile_cam3st = [];
			$zile_cam3sf = [];


			while ($cam_days->have_posts()) {
				$cam_days->the_post();
				?>
					<!-- <h1> <?php //the_content();  ?> </h1>
					<h1> <?php //the_ID();  ?> </h1> -->
					<?php array_push($rezerv_id, get_the_ID() );  ?>

				<?php
			}

			wp_reset_postdata();

			$linie = implode(',', $rezerv_id);

			// foreach ( $rezerv_id as $id ) :

				$zile_cam1st = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id IN ( $linie ) AND $wpdb->postmeta.meta_key = 'cam1st' ");
				$zile_cam1sf = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id IN ( $linie ) AND $wpdb->postmeta.meta_key = 'cam1sf' ");

				$zile_cam2st = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id IN ( $linie ) AND $wpdb->postmeta.meta_key = 'cam2st' ");
				$zile_cam2sf = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id IN ( $linie ) AND $wpdb->postmeta.meta_key = 'cam2sf' ");

				$zile_cam3st = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id IN ( $linie ) AND $wpdb->postmeta.meta_key = 'cam3st' ");
				$zile_cam3sf = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id IN ( $linie ) AND $wpdb->postmeta.meta_key = 'cam3sf' ");

				// $zile_cam1st = array_merge($zile_cam1st, $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id = $id AND $wpdb->postmeta.meta_key = 'cam1st' "));
				// $zile_cam1sf = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id = $id AND $wpdb->postmeta.meta_key = 'cam1sf' ");

				// $zile_cam2st = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id = $id AND $wpdb->postmeta.meta_key = 'cam2st' ");
				// $zile_cam2sf = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id = $id AND $wpdb->postmeta.meta_key = 'cam2sf' ");

				// $zile_cam3st = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id = $id AND $wpdb->postmeta.meta_key = 'cam3st' ");
				// $zile_cam3sf = $wpdb->get_col("SELECT $wpdb->postmeta.meta_value FROM $wpdb->postmeta WHERE $wpdb->postmeta.post_id = $id AND $wpdb->postmeta.meta_key = 'cam3sf' ");

			// endforeach;

			function telefon ($val) {
				return preg_replace('/[^0-9]/', '', $val);
			}
			
			$adresa = get_site_url("/Casa Sofia");
				// $nume = esc_html($_POST['nume']);
				// $prenume = esc_html($_POST['prenume']);
				// $tel = esc_html($_POST['telefon']);
				// $cam1st = esc_html($_POST['date_inc_1']);
				// $cam1sf = esc_html($_POST['date_sf_1']);
				// $cam2st = esc_html($_POST['date_inc_2']);
				// $cam2sf = esc_html($_POST['date_sf_2']);
				// $cam3st = esc_html($_POST['date_inc_3']);
				// $cam3sf = esc_html($_POST['date_sf_3']);
				// $coment = esc_html($_POST['comentarii']);
				// $email = esc_html($_POST['email']);


				$values = filter_input_array(INPUT_POST, array(
					'nume' => FILTER_SANITIZE_STRING,
					'prenume' => FILTER_SANITIZE_STRING,
					'telefon' => array( 'filter' => FILTER_CALLBACK,
										'options' => 'telefon' ),
					'date_inc_1' => FILTER_SANITIZE_STRING,
					'date_sf_1' => FILTER_SANITIZE_STRING,
					'date_inc_2' => FILTER_SANITIZE_STRING,
					'date_sf_2' => FILTER_SANITIZE_STRING,
					'date_inc_3' => FILTER_SANITIZE_STRING,
					'date_sf_3' => FILTER_SANITIZE_STRING,
					'comentarii' => FILTER_SANITIZE_STRING,
					'email' => FILTER_VALIDATE_EMAIL
				));


				// if ( trim($cam1st) != "" ) { $content = "<p>Camera 1: " . $cam1st . " - " . $cam1sf . "</p>"; };
				// if ( trim($cam2st) != "" ) { $content .= "<p> Camera 2: " . $cam2st . " - " . $cam2sf . "</p>"; };
				// if ( trim($cam3st) != "" ) { $content .= "<p> Camera 3: " . $cam3st . " - " . $cam3sf . "</p>";};
				// if ( trim($coment) != "" ) { $content .= "Camentariu:" . $coment; };

				if ( trim($values['date_inc_1']) != "" ) { $content = "<p> Camera 1: " . $values['date_inc_1'] . " - " . $values['date_sf_1'] . "</p>"; };
				if ( trim($values['date_inc_2']) != "" ) { $content .= "<p> Camera 2: " . $values['date_inc_2'] . " - " . $values['date_sf_2'] . "</p>"; };
				if ( trim($values['date_inc_3']) != "" ) { $content .= "<p> Camera 3: " . $values['date_inc_3'] . " - " . $values['date_sf_3'] . "</p>";};
				if ( trim($values['comentarii']) != "" ) { $content .= "Comentariu:" . $values['comentarii'] ; };
				$content .= "<br/> <strong> Telefon: ". $values['telefon'] . "</strong>";

		
					if ( trim($values['nume']) != "" ) $id = wp_insert_post(array(
						'post_type' => 'rezervare',
						//'post_title' => $nume . " " . $prenume,
						'post_title' => $values['nume'] . " " . $values['prenume'],
						'post_content' => $content,
						'post_status' => 'publish',
						//'post_status' => 'draft',
					));

					update_post_meta($id, 'nume', $values['nume']);
					update_post_meta($id, 'prenume', $values['prenume']);
					update_post_meta($id, 'telefon', $values['telefon']);
					if ( $values['date_inc_1'] ) update_post_meta($id, 'cam1st', strtotime($values['date_inc_1']));
					if ( $values['date_sf_1'] ) update_post_meta($id, 'cam1sf', strtotime($values['date_sf_1']));
					if ( $values['date_inc_2'] ) update_post_meta($id, 'cam2st', strtotime($values['date_inc_2']));
					if ( $values['date_sf_2'] ) update_post_meta($id, 'cam2sf', strtotime($values['date_sf_2']));
					if ( $values['date_inc_3'] ) update_post_meta($id, 'cam3st', strtotime($values['date_inc_3']));
					if ( $values['date_sf_3'] ) update_post_meta($id, 'cam3sf', strtotime($values['date_sf_3']));
					if ( $values['comentarii'] ) update_post_meta($id, 'coment', $values['comentarii']);
					update_post_meta($id, 'email', $email);

			if ( $_POST )	{
				echo "<br/> <br/> <br/> <br/> <h3> Iti multumim " . $values['prenume'] . "! </h3> <br/><br/> <strong>Ai facut rezervarea: </strong> " . $content;
				echo "<br/> <br/> <br/> <strong style='color: red'> Te vom contacta pentru confirmare la numarul de telefon " . $values['telefon'] . "</strong>";
				echo "<br/><br/>";
				?> 
					<a href="<?php echo site_url() ?>" class='btn btn-primary'> Intoarce-te la prima pagina </a>
				<?php
			} else {

			?> 
			
			<h3 class="py-3 mb-5"> Selecteaza zilele de rezervare </h3>

			<form id="form1" action="<?php $_SERVER['PHP_SELF'] ?> " method="POST">

				<div class="row">
					<div class="col-sm-6"> <label> Nume * &nbsp; <input type="text" id="nume" name="nume"/> </label> </div>
					<div class="col-sm-6"> <label> Prenume *<input type="text" id="prenume" name="prenume"/> </label> </div>
				</div>
				<div class="row">
					<div class="col-sm-6 text-align-center"> <label> Telefon *<input type="text" id="telefon" name="telefon"/> </label></div>
					<div class="col-sm-6 text-align-center"> <label> Adresa E-mail *<input type="email" id="email" name="email"/> </label></div>
				</div>

				<hr/>
				
				<div class="form-group"> 
					<span class="first-col"></span>
					<span class="text-center font-weight-bold text-primary"> Prima zi </span>
					<span class="text-center font-weight-bold text-primary"> Ultima zi </span>
				</div>


				<div class="form-group"> 
					<?php 

					$j = 0;
					$cond = 0;

					foreach ($zile_cam1st as $cazare ) :
					
						if ($zile_cam1sf[$j] > time() ) :

							$cond++;

							echo ($cond == 1) ? "<h6 style='background-color: yellow; padding: 10px; float: left;'> Perioade Camera 1 deja rezervate  </h6>" : "" ;

							echo "<span class='perioade'>" . date('d M Y', $cazare) . "-" . date('d M Y', $zile_cam1sf[$j]) . "</span>" ;

						endif;

						$j++;

					endforeach;
					?>
					<div class="clearfix"> </div>
					<span class="first-col"><strong>Camera unu</strong></span>
					<span> <input type="text" id="date_inc_1" class="zile-rezervare form-control" name="date_inc_1" /> </span>
					<span> <input type="text" id="date_sf_1" class="zile-rezervare form-control" name="date_sf_1" /> </span>
				</div>

				<div class="form-group">

					<?php 

						$j = 0;
						$cond = 0;

						foreach ($zile_cam2st as $cazare ) :

							if ( $zile_cam2sf[$j] > time() ) :

								$cond++;

								if ($cond == 1) echo "<h6 style='background-color: yellow; padding: 10px; float: left;'> Perioade Camera 2 deja rezervate  </h6>" ;
							
								// echo "<span class='perioade'> $cazare - $zile_cam2sf[$j]; </span>"  ;
								echo "<span class='perioade'>" . date('d M Y', $cazare) . "-" . date('d M Y', $zile_cam2sf[$j]) . ";</span>"  ;

							endif;

							$j++;

						endforeach;

					?>

				<div class="clearfix"> </div>
					<span class="first-col"><strong>Camera doi</strong></span>
					<span> <input type="text" id="date_inc_2" class="zile-rezervare form-control"  name="date_inc_2" /> </span>
					<span> <input type="text" id="date_sf_2" class="zile-rezervare form-control" name="date_sf_2" /> </span>
				</div>
				<div class="form-group">

					<?php 

						$j = 0;
						$cond = 0;

						foreach ( $zile_cam3st as $cazare ) :

							if ( $zile_cam3sf[$j] > time() ) :

								$cond++;

								if ($cond == 1) echo "<h6 style='background-color: yellow; padding: 10px; float: left;'> Perioade Camera 3 deja rezervate  </h6>";
							
								// echo "<span class='perioade'> $cazare - $zile_cam3sf[$j]; </span>"  ;
								echo "<span class='perioade'>" . date('d M Y', $cazare) . "-" . date('d M Y', $zile_cam3sf[$j]) . ";</span>"  ;
							
							endif;

							$j++;

						endforeach;

					?>

				<div class="clearfix"> </div>
					<span class="first-col"><strong>Camera trei</strong></span>
					<span> <input type="text" id="date_inc_3" class="zile-rezervare form-control" name="date_inc_3" /> </span>
					<span> <input type="text" id="date_sf_3" class="zile-rezervare form-control" name="date_sf_3" /> </span>
				</div>

				<div id="rezervare1"> Nu ai facut nicio rezervare </div>
				<div id="rezervare2">  </div>
				<div id="rezervare3">  </div>


				<p id="er-rezerv">    </p>

				<div class="row">
					<div class="col-sm-8"> <label> Mesaj suplimentar <textarea cols="30" rows="5" name="comentarii"> </textarea> </label> </div>
					<div class="col-sm-4">
						<button class="btn btn-primary"> Finalizare </button>
					</div>
				</div>	
			</form>
			<?php } ?>
		</div>
	</section>

	<!-- <footer class="entry-footer">
		<?php //vilasofia_entry_footer(); ?>
	</footer>.entry-footer -->
</article><!-- #post-<?php the_ID(); ?> -->
