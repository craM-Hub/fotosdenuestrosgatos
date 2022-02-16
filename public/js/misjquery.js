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
});
