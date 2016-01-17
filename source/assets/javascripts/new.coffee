# $(document).ready ->
#   $("a[href^=\"#\"]").click ->
#     elementClick = $(this).attr("href")
#     # destination = $(elementClick).offset().top
#     destination = $(elementClick).offset.top
#     $("html").animate scrollTop: destination , 1100


$(document).ready ->
  $("html").on "click", "a", (event) ->
    #отменяем стандартную обработку нажатия по ссылке
    event.preventDefault()
    #забираем идентификатор бока с атрибута href
    id = $(this).attr("href")
    #узнаем высоту от начала страницы до блока на который ссылается якорь
    top = $(id).offset().top
    #анимируем переход на расстояние - top за 1500 мс
    $("body,html").animate scrollTop: top , 1500


