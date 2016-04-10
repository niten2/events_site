// $(document).ready(function () {

// $('.bxslider').bxSlider({
//   adaptiveWidth: true,
//   adaptiveHeight: true,
//   minSlides: 1,
//   maxSlides: 1,
//   slideWidth: 670,
//   responsive: true
//   // slideMargin: 10
// });

// });

// Can also be used with $(document).ready()
// $(document).ready(function () {
//   $('.flexslider').flexslider({
//     animation: "slide"
//   });
// });


$(function(){
  SyntaxHighlighter.all();
});
$(window).load(function(){
  $('.flexslider').flexslider({
    animation: "slide",
    start: function(slider){
      $('body').removeClass('loading');
    }
  });
});
