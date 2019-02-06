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
  responsive: [{
    breakpoint: 650,
    settings: {
      slidesToShow: 2
    }
  },{
    breakpoint: 450,
    settings: {
      slidesToShow: 1
    }
  }],
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

$('.zoom-foto').magnificPopup({
  type: 'image',
});

// $('.popup-gallery').magnificPopup({
//   delegate: 'a',
//   type: 'image',
//   tLoading: 'Loading image #%curr%...',
//   mainClass: 'mfp-img-mobile',
//   gallery: {
//     enabled: true,
//     navigateByImgClick: true,
//     preload: [0,1] // Will preload 0 - before current, and 1 after the current image
//   },
//   image: {
//     tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
//     titleSrc: function(item) {
//       return item.el.attr('title');
//     }
//   }
// });


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
    },
    range: "min"
  };

  var opt = Object.assign(opt, options);
  $( '#' + uirId ).slider(opt);
}

// range price
var uirHandlePrice = [];
var uirValPriceMin = [];
var uirValPriceMax = [];
var hsp = [];

$('.js-range-price').each(function(idx){
  var uirId = $(this).attr('id');
  if ( ! uirId ) {
    uirId = 'uir-' + idx;
    $(this).attr('id', uirId);
  }

  uirHandlePrice[uirId] = $(this).find('.ui-slider-handle');
  uirValPriceMin[uirId] = $(this).find('input.range-price__input--min');
  uirValPriceMax[uirId] = $(this).find('input.range-price__input--max');

  var options = {};
  if ( $(this).data('min') )
    options.min = parseFloat( $(this).data('min') );

  if ( $(this).data('max') )
    options.max = parseFloat ( $(this).data('max') );

  if ( $(this).data('value') )
    options.value = parseFloat ( $(this).data('value') );

  // if ( $(this).data('values') )
    // options.values = parseFloat ( $(this).data('values') );

  if ( $(this).data('value-min') && $(this).data('value-max') ) {
    options.values = [ parseFloat ( $(this).data('value-min') ), parseFloat ( $(this).data('value-max') )];
  }

  if ( $(this).data('step') )
    options.step = parseFloat ( $(this).data('step') );

  rangePriceInit(uirId, options);
});


function rangePriceInit(uirId, options = {}){
  var opt = {
    create: function() {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }

      uirValPriceMin[uirId].val( $( this ).slider( "values", 0 ) );
      // console.log( 'create: ' + $( this ).slider( "values", 0 ));
      uirValPriceMax[uirId].val( $( this ).slider( "values", 1 ) );
    },
    slide: function( event, ui ) {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }

      uirValPriceMin[uirId].val( $( this ).slider( "values", 0 ) );
      // console.log( 'slide: ' + $( this ).slider( "values", 0 ));
      uirValPriceMax[uirId].val( $( this ).slider( "values", 1 ) );
    },
    stop: function( event, ui ) {
      uirValPriceMin[uirId].val( $( this ).slider( "values", 0 ) );
      uirValPriceMax[uirId].val( $( this ).slider( "values", 1 ) );
    },
    range: true,
  };

  var opt = Object.assign(opt, options);
  // console.log(opt);
  hsp[uirId] = $( '#' + uirId ).slider(opt);
  // console.log(hsp);
  // hsp[uirId].slider('values',100, 500);
}


$('.range-price__input--min').on('change', function(){
  var rp = $(this).closest('.range-price');
  var inputMin = rp.find('.range-price__input--min');
  var inputMax = rp.find('.range-price__input--max');
  var val = parseFloat(inputMin.val());

  if(parseFloat(inputMin.val()) > parseFloat(inputMax.val())){
    val = parseFloat(inputMax.val());
    inputMin.val(val);
  }
  
  rp.slider("values",0,val);
});

$('.range-price__input--max').on('change', function(){
  var rp = $(this).closest('.range-price');
  var inputMin = rp.find('.range-price__input--min');
  var inputMax = rp.find('.range-price__input--max');
  var maxValue = parseFloat(rp.data('max'));
  var val = parseFloat(inputMax.val());

  if ( parseFloat(inputMax.val()) > maxValue ) {
    val = maxValue;
    inputMax.val(val);
  }

  if ( parseFloat(inputMin.val()) > parseFloat(inputMax.val()) ) {
    val = parseFloat(inputMin.val());
    inputMax.val(val);
  }

  rp.slider("values",1,val);
});

// toggle block
$('.js-toggle').on('click', function(e){
  e.preventDefault();
  var href = $(this).attr('href');

  $(href).toggle('300');
});


});