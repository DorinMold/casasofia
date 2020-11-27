<?php
/**
 * Template part for displaying a message that posts cannot be found
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package vilasofia
 */

?>

<!-- <div class="card" style="width: 18rem;">
  
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div> -->
<br/>
	<div class="col-md-4 pb-3">
		<div class="card h-100">
			<!-- <header class=" page-header">
			<h1 class="page-title"><?php //esc_html_e( 'Nothing Found', 'vilasofia' ); ?></h1> 
			<h1 class="mb-0"><a href="<?php //the_permalink(); ?>"><?php //the_title(); ?> </a></h1>
			<small class=" mt-0 text-secondary"> Petrecut: <?php //the_time('d M y');  ?> </small>
			<?php 
			
				?>
			</header>.page-header -->
			<img class="card-img-top" src="<?php if (has_post_thumbnail()) echo get_the_post_thumbnail_url();  ?>" alt="Card image cap" />
			<div class="card-body">
				<h5 class="card-title mb-0"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
				<small><?php the_time('d M y'); ?></small>
				<br/><br/>
				<p class="card-text"><?php echo wp_trim_words(get_the_content(), 15, '...'); ?></p>
				<a href="<?php the_permalink();  ?>" class="btn btn-primary">Citeste</a>
			</div>
		<!-- <div class="page-content">
			<?php
			//if (has_post_thumbnail()):
			?>
				<a href="<?php //the_permalink(); ?>"><?php //the_post_thumbnail(); ?> </a>
			<?php
				//the_content();
			//endif;
			?>
		</div>.page-content -->
		</div>
	</div>

