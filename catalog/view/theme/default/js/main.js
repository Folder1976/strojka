$(document).ready(function() {
"use strict"; 
// debugger;


// init page
// modules/init-page.js


// slicknav mobile menu
// modules/slicknav.js


// fixed header after scroll
// modules/fixed-header.js


// back-to-top button
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


// маска для телефона
// modules/maskedinput.js


// Slick slider
// modules/slick-slider.js


// tabs
// modules/tabs.js


// accordion
// modules/accordion.js


// Magnific popup
// modules/magnific-popup.js


});