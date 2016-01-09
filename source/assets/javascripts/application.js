// = require jquery
// = require bxslider-4/dist/jquery.bxslider.js
// = require_tree .

$(document).ready(function(){
	$('.bxslider').bxSlider({
		auto: true,
		wrapperClass: "bx-wrapper",
		mode: 'fade',
		captions: true,
		pagerCustom: '#bx-pager',
		adaptiveHeight: true,
		slideWidth: 900
});
});
