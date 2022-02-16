// Modal Image Gallery
function imgExpand(element) {
	document.getElementById('img01').src = element.src;
	document.getElementById('modal01').style.display = 'block';
	var captionText = document.getElementById('caption');
	captionText.innerHTML = element.alt;
}
