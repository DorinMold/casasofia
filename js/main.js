jQuery(document).ready(function($){
	let $butMenu = $('.menu-toggle');
	let isVisible = false;
	let $mastheadTop = $('header.header-front-page').height()-180; 
	//let $siteBrandH = $('div.site-branding').height();
	let $scroll = true;
	let $frontal_tabs = $('.nav-tabs-icons li');
	let $width;
	//let $li_men_st = $('ul.meniu-stanga li:last-of-type');

	if ( $(window).width() < 1200  ) {
		$('div.site-branding').animate({height: '65px', overflow: 'visible'}, 450);
		$('div.shadow').animate({height: 64 }, 500);
	}

	$butMenu.on('click', () => {
		if(isVisible == false) {
			$('ul.nav-menu').slideDown(800).toggleClass('menu-show');
			isVisible = true; 
		} else {
			$('ul.nav-menu').slideUp(800).toggleClass('menu-show');
			isVisible = false; 
		}
	});

	if ( $('header.header-front-page').is("header") ) {
		$(window).on('scroll', function() {
			if ( $scroll && $(window).width() > 1200 && $(window).scrollTop() > $mastheadTop ) {
				//$('div.shadow').animate({height: $siteBrandH }, 500);
				$('div.site-branding').animate({height: '65px'}, 450);
				$('div.shadow').animate({height: 64 }, 500);
				$('ul.meniu-stanga').fadeOut(500);
				//$li_men_st.css({transform: 'rotateX(0deg)'});
				$scroll = false;
			} else if ( !$scroll && $(window).width() > 1200  && $(window).scrollTop() < $mastheadTop ) {
				$('div.site-branding').animate({height: 0}, 450);
				$('div.shadow').animate({height: 0 }, 500);
				$('ul.meniu-stanga').fadeIn(500);
				$scroll = true;
			}
		})
	} else {
		$('div.site-branding').animate({height: '65px'}, 450);
		$('div.shadow').animate({height: 64 }, 500);
		$('ul.meniu-stanga').css('display', 'none');
		$('#primary').animate({marginTop: 65},500);
	}

	setTimeout( () => {
		$('.continut-camere').addClass('div-camere-vizibil');
	}, 600) 

	$frontal_tabs.on('click', function(e) {
		e.preventDefault();
		$frontal_tabs.removeClass('active');
		$(this).addClass('active');
		let $hash = $(this).find('a').attr('href');
		$('.tab-pane').fadeOut(300).addClass('fade');
		$($hash).removeClass('fade').fadeIn(300);
	})

	//$("form.wpcf7-form input:not([type='submit'])").on('focus', function () {
	//	$width = $(this).width();
		//$(this).animate({width: '100%'} , 500);
	//});
	//$("form.wpcf7-form input:not([type='submit'])").on('focusout', function () {
		//$(this).animate({width: $width} , 500);
	//});

	$("form.wpcf7-form input[type='submit']").addClass('btn btn-success');

	let $top_div_cam = $('div.camere-lista');
	$("main.page-camere h2").on('hover', () => {
		//$top_div_cam.animate({scrollTop: $top_div_cam.scrollTop() + 100}, 400);
		//$("main.page-camere h4").delay(200).slideDown(600);
		if ( $(window).width() < 600 ) {
			$("main.page-camere h4").animate({ height : '180px' }, 1000);
		} else {
			$("main.page-camere h4").animate({ height : '120px' }, 1000);
		}	
	})

	var func = (function () {
		var conditie = true;
		return function() {
			if ( conditie == true ) {
					setTimeout( function(){
						$('.overlay').animate({bottom: '170px'});
						conditie = false;
					}, 1000 )
				
			} else {
				
				setTimeout( function(){
					$('.overlay').animate({bottom: 0});
					conditie = true;
				}, 0 )
				
			}
		}
		//$('.overlay').toggle('slow');
	})()

	$('button.menu-toggle').on('click', function () { func() });

	$('#date_inc_1, #date_sf_1').on('focusout', () => {
		if ( $('#date_inc_1').val().trim() == "" && $('#date_sf_1').val().trim() == "" && ($('#rezervare2').text().trim() == "" && $('#rezervare3').text().trim() == "")) {
			$('#rezervare1').html('Nu ai facut nicio rezervare').css('display', 'block');
		} else {
			if ( $('#date_inc_1').val().trim() != "" && $('#date_sf_1').val().trim() != "" ) {
				$('#rezervare1').css('display', 'block')
			} else {
				$('#rezervare1').html(' ').css('display', 'none');
			}
		}
	});

	
	$('#date_inc_2, #date_sf_2').on('focusout', () => {
		if ( $('#date_inc_2').val().trim() == "" || $('#date_sf_2').val().trim() == "" ) {
			$('#rezervare2').html('').css('display', 'none');
			if  ( $('#date_inc_1').val().trim() == "" && $('#date_inc_3').val().trim() == "" ) {
				$('#rezervare1').html('Nu ai facut nicio rezervare').css('display', 'block');
			}
		}
	});

	$('#date_inc_3, #date_sf_3').on('focusout', () => {
		if ( $('#date_inc_3').val().trim() == "" || $('#date_sf_3').val().trim() == "" ) {
			$('#rezervare3').html('').css('display', 'none');
			if  ( $('#date_inc_1').val().trim() == "" && $('#date_inc_2').val().trim() == "" ) {
				$('#rezervare1').html('Nu ai facut nicio rezervare').css('display', 'block');
			}
		}
	});

	$('.preturi, #menu-item-125').on('click', (e) => {
		e.preventDefault();
		$('.div_pret').css('top', $(window).scrollTop() + 100);
		if ( $(window).width() < 600 ) $('.div_pret').css({'left': '20px', 'width': '90%'});
		$('.div_pret').toggle(600, () => {
			if ($('.div_pret').css('display') != 'none') $('.div_pret').delay(3500).fadeOut(600);
		});
	});

	$('.fa-facebook-f').animate({top: 0}, 1000);


	$('.zile-rezervare').datepicker({
		//changeMonth: true, //se schimba lunile alfel
		monthNames: ['Ianuarie', 'Februarie', 'Martie', 'Aprilie', 'Mai', 'Iunie', 'Iulie', 'August', 'Septembrie', 'Octombrie', 'Noiembrie', 'Decembrie'],
		prevText: '<',
		nextText: '>',
		dayNamesMin: ['Du','Lun','Mar','Mie','Joi','Vin','Sam'],
		//minDate: new Date(),
		minDate: new Date(2019, 8, 20, 0, 0, 0),
		dateFormat: 'dd M yy',
		onSelect: function (date) {
			//let $date;
			//if ($('#date_inc_1').val().trim() != '') $date = 
			//if ( $(':focus').attr('id') == "date_sf_1" ) $date = $('#date_inc_1"');
			//if ( $(this).attr('id') == "date_sf_1"  && (new Date(date ) - new Date( $('#date_inc_1').val() ) )  < 0) console.log("WRONG") ;
			if ( $(this).attr('id') == "date_inc_1" ) $('#date_sf_1').datepicker('option', 'minDate', date);
			if ( $(this).attr('id') == "date_inc_2" ) $('#date_sf_2').datepicker('option', 'minDate', date);
			if ( $(this).attr('id') == "date_inc_3" ) $('#date_sf_3').datepicker('option', 'minDate', date);

			if ($('#date_sf_1').val().trim() != "" && $('#date_inc_1').val().trim() != "") {
				$('#rezervare1').html('Ai ales camera 1 - perioada: ' + $('#date_inc_1').val() + " - " + $('#date_sf_1').val());
				$('#rezervare1').css('display','block');
			} 
			if( $('#date_sf_2').val().trim() != "" ) {
				$('#rezervare2').html('Ai ales camera 2 - perioada: ' + $('#date_inc_2').val() + " - " + $('#date_sf_2').val() );
				$('#rezervare2').css('display','block');
				if( $('#rezervare1').text().indexOf('nicio') > -1 )  $('#rezervare1').css('display', 'none');
			} 
			if( $('#date_sf_3').val().trim() != "" ) {
				$('#rezervare3').html('Ai ales camera 3 - perioada: ' + $('#date_inc_3').val() + " - " + $('#date_sf_3').val());
				$('#rezervare3').css('display','block');
				if( $('#rezervare1').text().indexOf('nicio') > -1 )  $('#rezervare1').css('display', 'none');
			} 
			//console.log( document.activeElement.id );
		}
		// onSelect: function(selectedDate) {
		// 	var option = this.id == "from" ? "minDate" : "maxDate",
		// 		instance = $(this).data("datepicker"),
		// 		date = $.datepicker.parseDate(instance.settings.dateFormat || $.datepicker._defaults.dateFormat, selectedDate, instance.settings);
		// 	dates.not(this).datepicker("option", option, date);
		// }
	});

	$('form#form1').submit(function() {
		if($('#nume').val().length == 0) {
			$('#er-rezerv').text('Nu poti face rezervarea fara nume');
			$('#er-rezerv').fadeIn(300);
			return false;
		} else if ( $('#prenume').val().length == 0 ) {
			$('#er-rezerv').text('Nu poti face rezervarea fara prenume');
			$('#er-rezerv').fadeIn(300);
			return false;
		} else if ( $('#telefon').val().trim().length < 10 || $('#telefon').val().trim().length > 14 ) {
			$('#er-rezerv').text('Nu poti face rezervarea cu nr de telefon invalid');
			$('#er-rezerv').fadeIn(300);
			return false;
		}	else if ( $('#email').val().length == 0 ) {
			$('#er-rezerv').text('Nu poti face rezervarea fara adresa de e-mail');
			$('#er-rezerv').fadeIn(300);
			return false;
		} else if ( $('#date_inc_1').val().length == 0 && $('#date_inc_2').val().length == 0 && $('#date_inc_3').val().length == 0 ) {
			$('#er-rezerv').text('Nu poti face rezervarea fara alegerea unor zile');
			$('#er-rezerv').fadeIn(300);
			return false;
		} else {
			return true;
		}

   });

   (function() {
	if ( $( window ).height() < 600 ) {
		$('header.header-front-page').css('height', '120vh');
	} else if ( $( window ).height() < 700 ) {
		$('header.header-front-page').css('height', '110vh');
	} else if ( $( window ).height() < 750 ) {
		$('header.header-front-page').css('height', '100vh');
	} else {
		$('header.header-front-page').css('height', '80vh');
	}

	setInterval(() => $('.loader-wrapper').fadeOut(500), 500);
	   
	   if (typeof(document.slide) != 'undefined') {

			let i=0;
			let images = [];
			let time = 1500;

			images[0] = vars['site_url'] + '/wp-content/themes/vilasofia-child/assets/poze/tichete/up.png';
			images[1] = vars['site_url'] + '/wp-content/themes/vilasofia-child/assets/poze/tichete/edenred.png';
			images[2] = vars['site_url'] + '/wp-content/themes/vilasofia-child/assets/poze/tichete/sodexo.png';

			setInterval(function(){
				if (i <= 2) {
					document.slide.src = images[i];
				} else { i = -1 }
				i++;
			}, time);
	   }
   })();

   $('main.page-pozesplit').animate({marginTop: 0}, 1500);
   $('main.page-pozesplit h5').animate({top: 0}, 2700);

   $('main.page-pozesplit h4 a').on('click', ()=> {
	   $('main.page-pozesplit').animate({marginTop: '-550px'}, 800);
	   $('div#container-footer').animate({marginTop: '50vh'}, 800);
   })

});

function resetFields (el, event) {
	event.preventDefault();
	el.closest('form').reset();
};