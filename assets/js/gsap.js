$(window).scroll(function() {
  var scroll = $(window).scrollTop();
  
	$(".parallax-one").css({
		top: 150 + (scroll/250)
	});
});

$(window).scroll(function() {
  var scroll = $(window).scrollTop();
	$(".parallax-two").css({
		top: 10 + (scroll/2)
	});
});