parallax = ->
  scrollPosition = $(window).scrollTop()
  $("#grid").css "top", (0 - (scrollPosition * .2)) + "px"
  $("#pictures").css "top", (0 - (scrollPosition * .5)) + "px"
  
$(document).ready ->
  $(window).bind "scroll", (e) ->
    parallax()

$("a.premier").click ->
  $("html, body").animate scrollTop: 0, 1000, ->
    parallax()
  false
   
$("a.one").click ->
  $("html, body").animate scrollTop: $('#one').offset().top, 1000, ->
    parallax()
  false

  $("a.two").click ->
  $("html, body").animate scrollTop: $('#two').offset().top, 1000, ->
    parallax()
  false

  $("a.tree").click ->
  $("html, body").animate scrollTop: $('#tree').offset().top, 1000, ->
    parallax()
  false

  $("a.four").click ->
  $("html, body").animate scrollTop: $('#four').offset().top, 1000, ->
    parallax()
  false
