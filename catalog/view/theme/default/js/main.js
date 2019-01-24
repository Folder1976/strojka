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
// маска для телефона
$(".input--phone").mask("+99 (999) 999-99-99");


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

function sliderInit(sId){
  $('#' + sId).find('.slider__list').slick({
    dots: false,
    appendArrows: '#' + sId + ' .slider__arrows',
    prevArrow: '#' + sId + ' .slider__arrow--prev',
    nextArrow: '#' + sId + ' .slider__arrow--next',
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplay: false,
    centerPadding: '40px',
    responsive: [{
      breakpoint: 1200,
      settings: {
        slidesToShow: 3
      }
    },{
      breakpoint: 500,
      settings: {
        slidesToShow: 2
      }
    },{
      breakpoint: 340,
      settings: {
        slidesToShow: 1
      }
    }],
  });
}

$('.js-slider').each(function(idx){
  var sId = $(this).attr('id');
  if ( ! sId ) {
    sId = 'jsl-' + idx;
    $(this).attr('id', sId);
  }

  sliderInit(sId);
});


// $('.js-slider').slick({
//   dots: false,
//   appendArrows: '#' + wsId + ' .slider__arrows',
//   prevArrow: '#' + wsId + ' .slider__arrow--prev',
//   nextArrow: '#' + wsId + ' .slider__arrow--next',
//   slidesToShow: 4,
//   slidesToScroll: 1,
//   autoplay: false,
//   centerPadding: '40px',
//   // responsive: [{
//   //   breakpoint: 768,
//   //   settings: {
//   //     arrows: false,
//   //     centerMode: true,
//   //     centerPadding: '40px',
//   //     slidesToShow: 3
//   //   }
//   // },{
//   //   breakpoint: 480,
//   //   settings: {
//   //     arrows: false,
//   //     centerMode: true,
//   //     centerPadding: '40px',
//   //     slidesToShow: 1
//   //   }
//   // }],
// });


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


// jQuery-ui
var uirHandle = [];
var uirVal = [];

$('.js-range').each(function(idx){
  var uirId = $(this).attr('id');
  if ( ! uirId ) {
    uirId = 'uir-' + idx;
    $(this).attr('id', uirId);
  }

  uirHandle[uirId] = $(this).find('.ui-slider-handle span');
  uirVal[uirId] = $(this).find('input');

  var options = {};
  if ( $(this).data('min') )
    options.min = parseFloat( $(this).data('min') );

  if ( $(this).data('max') )
    options.max = parseFloat ( $(this).data('max') );

  if ( $(this).data('value') )
    options.value = parseFloat ( $(this).data('value') );

  if ( $(this).data('step') )
    options.step = parseFloat ( $(this).data('step') );

  rangeInit(uirId, options);
});


function rangeInit(uirId, options = {}){
  var opt = {
    create: function() {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }
      uirHandle[uirId].html( $( this ).slider( "value" ) + ' ' + units );
      uirVal[uirId].val( $( this ).slider( "value" ) );
    },
    slide: function( event, ui ) {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }
      uirHandle[uirId].html( ui.value + ' ' + units );
      uirVal[uirId].val( $( this ).slider( "value" ) );
    }
  };

  var opt = Object.assign(opt, options);
  $( '#' + uirId ).slider(opt);
}

// toggle block
$('.js-toggle').on('click', function(e){
  e.preventDefault();
  var href = $(this).attr('href');

  $(href).toggle('300');
});


});