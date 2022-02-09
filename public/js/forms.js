$(function () {
	$('#photo_fileName').on('change', function (event) {
		$('#fileName-container').show();
	});
	$('#photo_fileName').on('change', function (event) {
		let inputFile = event.currentTarget;
		$('#fileName-container').html(
			'Foto seleccionada: ' + inputFile.value.substr(12)
		);
	});
});
