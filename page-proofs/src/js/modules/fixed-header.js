// fixed header after scroll
$(window).on('scroll', function() {
  if ($(window).scrollTop() > 200) {
    $('.header').addClass('header--fixed');
  } else {
    $('.header').removeClass('header--fixed');
  }
});

