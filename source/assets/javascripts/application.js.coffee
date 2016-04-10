# = require jquery
# = require Materialize
# = require bxslider-4/dist/jquery.bxslider.js
# = require_tree .

$(document).ready ->
  # $(".bxslider").bxSlider
  #   auto: true
  #   wrapperClass: "bx-wrapper"
  #   mode: "fade"
  #   captions: true
  #   pagerCustom: "#bx-pager"
  #   adaptiveHeight: true
  #   # adaptiveWidth: true
  #   slideWidth: 900

  # $("html").on "click", "a", (event) ->
  #   event.preventDefault()
  #   id = $(this).attr("href")
  #   top = $(id).offset().top
  #   $("body,html").animate scrollTop: top , 1500


  # yandex metrika
  ((d, w, c) ->
    (w[c] = w[c] or []).push ->
      try
        w.yaCounter34798345 = new (Ya.Metrika)(
          id: 34798345
          clickmap: true
          trackLinks: true
          accurateTrackBounce: true
          webvisor: true
          trackHash: true)
      catch e
      return
    n = d.getElementsByTagName('script')[0]
    s = d.createElement('script')

    f = ->
      n.parentNode.insertBefore s, n
      return

    s.type = 'text/javascript'
    s.async = true
    s.src = 'https://mc.yandex.ru/metrika/watch.js'
    if w.opera == '[object Opera]'
      d.addEventListener 'DOMContentLoaded', f, false
    else
      f()
    return
  ) document, window, 'yandex_metrika_callbacks'


