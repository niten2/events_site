# = require jquery
# = require bxslider-4/dist/jquery.bxslider.js

$(document).ready ->
  $(".bxslider").bxSlider
    auto: true
    wrapperClass: "bx-wrapper"
    mode: "fade"
    captions: true
    pagerCustom: "#bx-pager"
    adaptiveHeight: true
    adaptiveWidth: true
    slideWidth: 900

  $("html").on "click", "a", (event) ->
    event.preventDefault()
    id = $(this).attr("href")
    top = $(id).offset().top
    $("body,html").animate scrollTop: top , 1500

