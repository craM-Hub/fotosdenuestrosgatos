$(function () {
	// Formulario envio fotos, muestra foto seleccionada
	$('#photo_fileName').on('change', function (event) {
		$('#fileName-container').show();

		let inputFile = event.currentTarget;
		$('#fileName-container').html(
			'Foto seleccionada: ' + inputFile.value.substr(12)
		);
	});

	// Scroll top
	$("a[href='#top']").click(function () {
		$('html, body').animate({ scrollTop: 0 }, 'slow');
		return false;
	});

	// cambio a tema oscuro
	let flag = false;
	$('#cambiarTema').click(function () {
		if (!flag) {
			flag = !flag;
			$('body, html').css('background-color', '#121212');
			$('.gradient').css(
				'background-image',
				'linear-gradient(to bottom, rgba(0, 0, 0, 0), #121212)'
			);
			$('.gradient-top').css(
				'background-image',
				'linear-gradient(to top, rgba(0, 0, 0, 0), #121212)'
			);
		} else {
			flag = !flag;
			$('body, html').css('background-color', 'floralwhite');
			$('.gradient').css(
				'background-image',
				'linear-gradient(to bottom, rgba(0, 0, 0, 0), floralwhite)'
			);
			$('.gradient-top').css(
				'background-image',
				'linear-gradient(to top, rgba(0, 0, 0, 0), floralwhite)'
			);
		}
	});

	// cargar historia diaria desde txt por obligación de Mati
	$('#about').click(function () {
		$('#about').load('/data/dailyStory.html.twig');
	});
});
