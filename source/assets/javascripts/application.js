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
		adaptiveWidth: true,
		slideWidth: 900
  });
});


// $(document).ready(function(){

// var linkNav = document.querySelectorAll('[href^="#nav"]'),
//     V = 2;  // скорость, может иметь дробное значение через точку
// for (var i = 0; i < linkNav.length; i++) {
//   linkNav[i].addEventListener('click', function(e) {
//     e.preventDefault();
//     var w = window.pageYOffset,  // прокрутка
//         hash = this.href.replace(/[^#]*(.*)/, '$1');  // id элемента, к которому нужно перейти
//         t = document.querySelector(hash).getBoundingClientRect().top,  // отступ от окна браузера до id
//         start = null;
//     requestAnimationFrame(step);  // подробнее про функцию анимации [developer.mozilla.org]
//     function step(time) {
//       if (start === null) start = time;
//       var progress = time - start,
//           r = (t < 0 ? Math.max(w - progress/V, w + t) : Math.min(w + progress/V, w + t));
//       window.scrollTo(0,r);
//       if (r != w + t) {
//         requestAnimationFrame(step)
//       } else {
//         location.hash = hash  // URL с хэшем
//       }
//     }
//   }, false);
// }

// });

