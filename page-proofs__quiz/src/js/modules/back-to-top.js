// back-to-top button
var offset = 200;
var duration = 500;
$(window).scroll(function() {
  if ($(this).scrollTop() > offset) {
    $('.back-to-top').addClass('is-active');
  } else {
    $('.back-to-top').removeClass('is-active');
  }
});

$('.back-to-top').on('click',function(event) {
  event.preventDefault();
  $('html, body').animate({
    scrollTop: 0
  }, duration);
  return false;
});

