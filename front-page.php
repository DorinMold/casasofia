 
 <?php

get_header();
?>
	<script type="application/ld+json">
        {
          "@context": "http://schema.org",
          "@type": "Hotel",
          "address": {
            "@type": "PostalAddress",
            "addressLocality": "Dorna Candrenilor",
            "addressRegion": "Vatra Dornei, Suceava",
            "postalCode": "727190",
            "streetAddress": "Str. Principala, nr. 369"
          },
          "name": "Casa Sofia",
          "openingHours": [
            "Lu-Dum 07.00 - 22.00"
          ],
          "priceRange": "140ROM",
          "telephone": "(408) 714-1489",
        }
	</script>
	
	<div id="primary" class="content-area">
		<main id="main" class="site-main">

		<?php
		//global $post;
		//if ( $_SESSION['x'] == 0 ) update_post_meta(get_the_ID(), $_SERVER['REMOTE_ADDR'] . time(), "vizita" );
		$count = (int)get_post_meta(get_the_ID(),"vizita", true);
		
		
		if ( $count == $_SESSION['count'] ) update_post_meta(get_the_ID(), "vizita", ++$count );
		while ( have_posts() ) :
			the_post();
			//echo basename(get_permalink());
			//echo $post->post_name; ASA SE IA SLUG-ul si se poate folosi in WP_QUERY 'pagename' => slug
			// SAU (fara global $post)
			

			get_template_part( 'template-parts/content', 'page' );

			// If comments are open or we have at least one comment, load up the comment template.
			// if ( comments_open() || get_comments_number() ) :
			// 	comments_template();
			// endif;
		endwhile; // End of the loop.
		?>
		<section class="link-rezervari">
			<a class="btn btn-block btn-info h-100 position-relative" href="<?php echo site_url('/contact') ?>"> Rezervari </a>
		</section>
		
		<div class="middle-tabs">
			<div class="container">
				<ul class="nav nav-tabs-icons clearfix active_bookmark3">
					<li class="active">
						<a href="#midtab_1" data-toggle="tab" hidefocus="true" style="outline: none;">
					<i class="fa fa-info-circle"></i><span>Informatii</span>
					</a>
					</li>
					<li class="">
						<a href="#midtab_2" data-toggle="tab" hidefocus="true" style="outline: none;">
					<i class="fa fa-key"></i><span>REZERVARI</span>
					</a>
					</li>
					<!-- <li class="">
						<a href="#midtab_3" data-toggle="tab" hidefocus="true" style="outline: none;">
					<i class="fa fa-cutlery"></i><span>Recomandari restaurante</span>
					</a>
					</li> -->
					<li class="">
						<a href="#midtab_4" data-toggle="tab" hidefocus="true" style="outline: none;">
					<i class="fa fa-calendar"></i><span>Evenimente</span>
					</a>
					</li>
				</ul>

				<div class="tab-content clearfix">

					<div id="midtab_1" class="clearfix tab-pane in active">
						<div class="midtab_left">
							<img src="<?php echo get_stylesheet_directory_uri() . "/assets/poze/400 x 300/curte-ousor.jpg" ?>" alt="" class="midtab_img_left" /> 
								<div class="midtab_info_left">
									<p> Casa Sofia este situata in imediata apropiere a ceea ce in zona este cunoscut sub numele de Varful Ousoru.  
										Este plasata la o distanta confortabila de artere rutiere intens circulate ceea ce ofera linistea dupa care multi oraseni tanjesc atat de mult  <br>
									</p>
									<p> Lasati-va patrunsi de acest calm si serenitate pentru a va putea relaxa intr-un ambient montan deosebit.<br>
									<p>	Sunteti bineveti ca familie, cuplu sau grup.</p> Chiar si singur puteti sa ne vizitati pentru a va bucura de aceste locuri minunate. </p>
									<div class="block-meta">
										<!-- <a href="https://www.palladiohotelspa.com/spa" hidefocus="true" style="outline: none;">Discover our TREATMENT</a> -->
										<p></p>
									</div>
								</div>
							</div>
						<div class="midtab_right">
							<div class="fields_wrap">
								<div class="midtab_right_title">
									<h3 class="text-center">Casa Sofia si ambientul</h3>
									<p> <span class="subtitle">Casa Sofia este o unitate de cazare clasata la standardul de trei stele.</span> Este o pensiune noua, intr-o cladire 
									  renovata complet in anii 2017-18 dar care are suficiente elemente rustice pentru a va face sa va simtiti intr-un ambient cat mai natural.
									</p>
								</div>
								<!-- <div class="midtab_right_title">
									<span class="subtitle">This handsome building was a sixteenth-century convent designed by the greatest Renaissance architect, Andrea Palladio.</span>
								</div> -->
								<div class="midtab_right_title">
									<p class="odd-color"><span class="subtitle">
										Aici, departe de forfota innebunitoare a orasului sau de frenezia turistilor 
										din hoteluri sau statiuni aglomerate, va puteti bucura de natura. </span></p>
									<p><span class="subtitle"> Daca doriti sa respirati un aer foarte curat, sa va bucurati 
										de verdele cel mai natural, sa beti o cafea privind muntele sau sa calcati iarba 
										pe roua diminetii, Casa Sofia este locul ideal.
									</span></p>
									<p class="odd-color"><span class="subtitle"> Avem un foisor bine gândit în asa fel încât sa puteti face gratare, 
										ceaun, soba cu plita, o masa din lemn masiv, pentru 10 persoane. </span></p>
								</div>
							</div>
							<!-- <p><a class="midtab_big_btn" href="<?php //site_url('/Rezervari'); ?>" hidefocus="true" style="outline: none;"> -->
							<p><a class="midtab_big_btn" href="<?php echo site_url('/rezervari') ?>" hidefocus="true" style="outline: none;">
								<span class="icon-greater-than">
									<!-- <i class="icon-circle icon-stack-base"></i>
									<i class="icon-angle-right"></i> -->
									<i class="fa fa-chevron-right"></i>
								</span> <span>REZERVARI </span>
								</a>
							</p>
						</div>
					</div>
			<!--  al 2-lea calup   -->
					<div id="midtab_2" class="clearfix tab-pane fade">
						<div class="midtab_left">
							<img src="#" alt="" class="midtab_img_left">
							<div class="midtab_info_left">
								<!-- <p> 
									<a href="/hotel-2/architecture-and-history" hidefocus="true" style="outline: none;"><img src="#" alt=""> </a>
								</p> -->
								<div class="info_text">
									<!-- <h2><a href="/hotel-2/architecture-and-history" hidefocus="true" style="outline: none;"></a></h2> -->
									<h2> Cum se fac rezervarile </h2>
									<p> Rezervarea unei camere se face fie direct la noi pe site, fie prin contact telefonic sau prin folosirea site-ului Turistinfo.ro (aici puteti vedea mai multe amanunte, incluzand evaluari ale clientilor </p>
									<p> Pretul nostru de rezervare a unei camere este de <span>140 lei\camera </span> cu exceptia sarbatorilor de Paste, Craciun si Revelion  </p>
									<p> Pentru efectuarea rezervarii si pentru alte informatii utile va rugam sa folositi unul din linkurile urmatoare <br/> <a class="btn btn-warning mt-4" href="<?php echo site_url('/contact') ?>" target="_blank" title="Rezervari Casa Sofia">  Rezervari  </a> 
										<br/> <a class="btn btn-warning mt-4" href="https://www.turistinfo.ro/dorna_candrenilor/cazare-dorna_candrenilor/casa_sofia-c109507.html" target="_blank" title="Rezervari Casa Sofia"> Turistinfo.ro </a>
										<!-- <br/> <a class="btn btn-warning mt-4" href="https://travelminit.ro/ro/cazare/casa-sofia-dorna-candrenilor" target="_blank" title="Rezervari Casa Sofia">  Travelminit.ro  </a> -->
										
									</p>

									</p>
									<!-- <div class="post-more">
										<a href="/hotel-2/architecture-and-history" class="link-more" hidefocus="true" style="outline: none;">Read More<i class="icon-angle-right"></i></a>
									</div> -->
									<p></p>
								</div>
							</div>
						</div>
						<div class="midtab_right">
							<div class="fields_wrap">
								<div class="midtab_right_title">
									<h3>Ce veti primi in schimbul rezervarii</h3>
									<ul>
										<li> Asternuturi curate </li>
										<li> Prosoape curate </li>
										<li> Obiecte de igiena personala </li>
										<li> Apa calda si caldura </li>
										<li> Bucatarie utilata </li>
										<li> Loc de joaca pentru cei mici </li>

									</ul>
								</div>
								<!-- <div class="midtab_right_title">
									<span class="subtitle">Rezervarea unei camere implica urmatoarele</span>
								</div> -->
								<div class="midtab_right_title">
									<span class="odd-color subtitle d-inline-block">In cazul in care una dintre conditiile mentionate mai sus nu e pe deplin indeplinita va rugam sa ne 
										aduceti acest lucru la cunostinta si vom remedia situatia pe loc</span>
								</div>
							</div>
								<!-- <p><a class="midtab_big_btn" href="https://bit.ly/2l7XtnM" hidefocus="true" style="outline: none;"> -->
								<p><a class="midtab_big_btn" href="<?php echo site_url('/rezervari') ?>" hidefocus="true" style="outline: none;">
									<span class="icon-greater-than">
										<!-- <i class="icon-circle icon-stack-base"></i>
										<i class="icon-angle-right"></i> -->
										<i class="fa fa-chevron-right"></i>
									</span> <span>REZERVARI </span>
									</a></p>
						</div>
					</div>
					<!--  al 3-lea calup   -->
					<!-- <div id="midtab_3" class="clearfix tab-pane fade">
						<div class="midtab_left">
							<img src="#" alt="" class="midtab_img_left">
							<div class="midtab_info_left">
								<p><a href="/all-amenity-list/restaurant-lulivo" hidefocus="true" style="outline: none;">
								   <img src="#" alt="cheesecake fichi dragoncello" width="265px" height="155"></a>
								</p>
								<div class="info_text">
									<h2><a href="/all-amenity-list/restaurant-lulivo" hidefocus="true" style="outline: none;">Restaurant L’Ulivo</a></h2>
										<p>Open for lunch and dinner L’Ulivo serves light and tasty dishes, prepared with organic local produce, with a variety of 
											choice also for those looking for vegetarian, vegan or gluten free proposals.</p>
									<div class="post-more"><a href="/all-amenity-list/restaurant-lulivo" class="link-more" hidefocus="true" style="outline: none;">
											View the Menu 
										<i class="icon-angle-right"></i></a>
									</div>
									<p></p>
								</div>
							</div>
						</div>
						<div class="midtab_right">
							<div class="fields_wrap">
								<div class="midtab_right_title">
									<h3>L’Ulivo Restaurant</h3>
									<p> <span class="subtitle">Found on Giudecca island, L’Ulivo is the main restaurant of the exclusive Il Palladio oasis resort.</span>
									</p>
								</div>
								<div class="midtab_right_title">
									<span class="subtitle">Its menu focuses on light and savoury dishes made with organic ingredients, fresh seafood from local markets,
										 the freshest, ripest seasonal fruit used in the delicious homemade cakes.</span>
								</div>
								<div class="midtab_right_title">
									<span class="subtitle">At L’Ulivo, guests may choose whether to dine in the dining room, with its charming open kitchen, 
										   or outdoors on the patio, nestled in the beautiful backdrop of the gardens.</span>
								</div>
							</div>
							<p><a href="/all-amenity-list/restaurant-lulivo" class="midtab_big_btn" hidefocus="true" style="outline: none;">
							<span class="icon-stack">
								<i class="icon-circle icon-stack-base"></i><i class="icon-angle-right"></i>
							</span> FIND OUT MORE</a></p>
						</div>
					</div> -->
					<!--   al 4-lea -->
					<div id="midtab_4" class="clearfix tab-pane fade">
						<div class="midtab_left">
							<!-- <img src="https://www.palladiohotelspa.com/wp-content/uploads/2013/11/Pasqua2-670x318.jpg" alt="" class="midtab_img_left"> -->
							<div class="midtab_info_left">
								<h3>Traditii, obiceiuri si evenimente in zona Dornelor</h3>
								<p>Zona Bucovinei si zona Dornelor sunt locuri bogate in traditii
									iar asta cu siguranta poate da un farmec deosebit zilelor petrecute in aceasta zona
								</p>
								<p>Te poti bucura de niste sarbatori pascale cu totul deosebite</p>
								<p>Perioada Craciunului, Anului Nou si Bobotezei sunt perioade pline de magie
								Pe 28 decembrie are loc Festivalul International de Datini si Obiceiuri de Iarna Porniti Plugul Feti 
								Frumosi. </p>
								<p>Nu ratati nici Serbarile Zapezii care se desfasoara in fiecare week-end din ianuarie si februarie.</p>
								<p> Pe timpul verii sunt o paleta de evenimente care te vor tine "ocupat": Festivalul Dorna Art, Dorna Kayak Fest, Caravana Zilele Filmului Românesc și Bucovina Acoustic Park. La cele patru se adaugă și Caravana Filmelor NexT la Vatra Dornei. </p>
							</div>
						</div>

						<div class="midtab_right">
							<div class="fields_wrap">
								<div class="midtab_right_title">
									<h3>Aer tare si bucurii</h3>
									<p> 
										<span class="subtitle">Indiferent de sezon o sa gasesti ceva interesant in zona Dornelor</span>
									</p>
								</div>
								<div class="midtab_right_title">
									<div class="text-center p-3 mb-0"> <i class="fa fa-heart-o"></i> </div>
									<span class="odd-color subtitle d-inline-block mt-0">Iubesti Pastele? Atunci o sa iubesti Festivalul National al Oualeor Incondeiate</span>
							    </div>
								<div class="midtab_right_title">
									<span class="subtitle">Iubesti Craciunul? In preajma acestei sarbatori minunate se itampla o pleiada de evenimente:
										concerte de colinde, revelion in aer liber, oameni primitori peste tot. 
										</span>
								</div>
								<div class="text-center mt-4"> <i class="fa fa-snowflake-o"></i> </div>
								<div class="midtab_right_title">
									<span class="subtitle odd-color d-inline-block">Iubesti iarna? Zapada de care ne bucuram an de an in zona Dornelor te va incanta din plin.
										</span>
								</div>
								<div class="text-center mt-4"> <i class="fa fa-sun-o"></i> </div>
								<div class="midtab_right_title pb-3">
									<span class="subtitle">Iubesti soarele? Toate sezoanele au un amestec special de aer si soare de cea mai buna calitate.
										</span>
								</div>
								<div class="midtab_right_title rafting"> 
									<span class="subtitle">Una dintre cele mai apreciate variante de agrement este "easy rafting". Peisaje superbe, 
									miscare, adrenalina si distractie in echipa!
									Centre de inchiriere si informare:
									Dorna Adventure
									Tel. +40 744.332.378
									+40 726 686 687
									+40 748 848 515
									<strong> dornaadventure@yahoo.com </strong>
									river rafting, plimbări cu bărcile pe Dorna sau Bistriţa, drumeţii montane, închirieri biciclete, tiroliana, via ferrata, team building,
									Persoana de contact: Petru Ariciuc 
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="middle noblog full_width" style="background:#edeef0">
			<div class="container ">
				<div class="content tf_room_types_reservations">
					<article class="post-detail">
						<div class="entry clearfix">
							<div class="block-list promo-list clearfix">
								<div class="block-item">
									<div class="block-image">
										<!-- <img src="<?php //echo get_template_directory_uri(). '/assets/poze/300 x 238/casasofiaiarna.jpg'; ?>" alt=""><p></p> -->
										<img src="<?php echo get_stylesheet_directory_uri(). '/assets/poze/300 x 238/CasaSofiaFrontal.jpg'; ?>" alt=""><p></p>
										<div class="block-caption">
											<h2 style="">Despre Casa Sofia</h2>
										</div>
									</div>
									<div class="block-aside">
										<h3> Va punem la dispozitie </h3>
										<div class="list-minimal clearfix">
											<ul>
												<li>3 camere cochete</li>
												<li>Baie proprie</li>
												<li>Bucatarie utilata</li>
												<li>Foisor cu gratar si ceaun</li>
												<li>Parcare in curte</li>
												<li>Cablu TV, Wi-Fi</li>
												<li>Loc de joaca copii</li>
												<li>Curatenie si bun gust</li>
											</ul>
										</div>
								</div>
								<div class="block-meta">
									<a href="<?php echo site_url('/despre') ?>" hidefocus="true" style="outline: none;">AFLA MAI MULT</a>
								</div>
								<p class="shadow-p"></p>
								</div>
								<div class="block-item">
									<div class="block-image">
										<img src="<?php echo get_stylesheet_directory_uri() . '/assets/poze/300 x 238/harta.png' ?>" alt=""><p></p>
										<div class="block-caption">
											<h2>Transport</h2>
										</div>
									</div>
									<p></p>
									<div class="block-aside">
										<h3> Cum ajungeti la noi</h3>
										<p> Suntem situati la o distanta de 9 km de Vatra Dornei intr-o zona usor accesibila cu masina. Pentru cei care vin cu trenul sau autobuzul 
											se poate organiza contra-cost preluarea din Vatra Dornei</p>
									</div>
									<div class="block-meta">
										<a href="/vilasofia/indicatii" hidefocus="true" style="outline: none;">INFORMATII ACCES</a>
									</div>
									<p class="shadow-p"></p>
								</div>
								<div class="block-item omega">
									<div class="block-image">
									<img name="slide" src="<?php echo get_stylesheet_directory_uri().'/assets/poze/tichete/edenred.png' ?>" alt=""><p></p>
									<!-- <img src='assets/poze/300 X 238/edenred.png' alt=""><p></p> -->
									<div class="block-caption">
										<h2 style="color: #fff">Tichete de vacanta</h2>
									</div>
								</div>
								<div class="block-aside">
									<h3>Acceptam tichete de vacanta</h3>
									<p> Suntem bucurosi sa primim tichete de vacanta daca doriti sa le folositi pentru a acoperi costul sejurului</p>
									<p>Tichetele de vacanta pe care le puteti folosi: Sodexo, Edenred si Up</p>
								</div>
								<!-- <div class="block-meta">
									<a href="/spa" hidefocus="true" style="outline: none;">AFLA MAI MULT</a>
								</div> -->
								<div class="block-meta">
									<a href="/">TICHETE DE VACANTA</a>
								</div>
								<p></p>
							</div>
						</div>
					</div>	
					</article>
					<div id="lean_overlay">

					</div>
					<a class="btn btn-block btn-primary mb-4 w-50 text-center mx-auto" href="https://www.webcamromania.ro/webcam-partii-de-schi/webcam-partia-veverita-vatra-dornei/" target="_blank" alt="Camera Vatra Dornei"> 
						Camera LIVE 
					</a> 
				</div>
			</div>
		</div>

		

		</main><!-- #main -->
	</div><!-- #primary -->
<?php
//get_sidebar();
get_footer();