$(document).ready(function() {
"use strict"; 
// debugger;


// init page
// init page
$('.header__menu .menu__item:first-child').addClass('is-active');


// slicknav mobile menu
// modules/slicknav.js


// fixed header after scroll
// fixed header after scroll
$(window).on('scroll', function() {
  if ($(window).scrollTop() > 200) {
    $('.header').addClass('header--fixed');
  } else {
    $('.header').removeClass('header--fixed');
  }
});


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
// маска для телефона
$(".input--phone").mask("+99 (999) 999-99-99");


// Slick slider
/*
slick slider documentation:   https://github.com/kenwheeler/slick
or                            http://kenwheeler.github.io/slick/
*/

$('.slider').slick({
  // dots: true,
  slidesToShow: 5,
  slidesToScroll: 1,
  centerMode: true,
  // autoplay: true,
  autoplaySpeed: 2000,
});


// tabs
// Tabs

$('.tabs').on('click', '.tab__link', function(){
  let tabId = $(this).data('tab');

  $(this).addClass('is-active').siblings().removeClass('is-active');
  $('#' + tabId).addClass('is-active').siblings('.tab__content').removeClass('is-active');
});


// accordion
// Accordion

$('.accordion').on('click', '.accordion__title', function(){
  let panel = $(this).next('.accordion__panel');

  $(this).toggleClass('is-active');
  panel.toggleClass('is-active');
  if ( panel.hasClass('is-active') ){
    panel.css('max-height', panel.prop('scrollHeight') + "px");
  } else {
    panel.css('max-height', 0);
  }

});


// Magnific popup
// github:         https://github.com/dimsemenov/Magnific-Popup
// site:           http://dimsemenov.com/plugins/magnific-popup/
// documentation:  http://dimsemenov.com/plugins/magnific-popup/documentation.html


$('.mf-popup').magnificPopup({
  type: 'inline',
  preloader: true,
  removalDelay: 100,

  callbacks: {
    beforeOpen: function() {
       this.st.mainClass = this.st.el.attr('data-effect');
    }
  },

});


});