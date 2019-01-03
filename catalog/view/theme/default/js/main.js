$(document).ready(function() {
"use strict"; 
// debugger;


// init page
// modules/init-page.js


// slicknav mobile menu
// modules/slicknav.js

// mob-menu
$('.mob-menu__btn').on('click', function(){
  $(this).toggleClass('is-open');
  $('.js-mob-menu').toggleClass('mob-menu-is-open');
});

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
/*
slick slider documentation:   https://github.com/kenwheeler/slick
or                            http://kenwheeler.github.io/slick/
*/

// $('.slider').slick({
//   // dots: true,
//   slidesToShow: 5,
//   slidesToScroll: 1,
//   centerMode: true,
//   // autoplay: true,
//   autoplaySpeed: 2000,
// });


$('.js-reviews-slider').slick({
  dots: true,
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 3000,
  arrows: false,
  adaptiveHeight: true,
});

$('.js-featured').slick({
  dots: true,
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 3000,
});


// tabs
// Tabs

$('.tabs').on('click', '.tab__link', function(){
  let tabId = $(this).data('tab');

  $(this).addClass('is-active').siblings().removeClass('is-active');
  $('#' + tabId).addClass('is-active').siblings('.tab__content').removeClass('is-active');
});


// accordion
// modules/accordion.js


// Magnific popup
// modules/magnific-popup.js


});