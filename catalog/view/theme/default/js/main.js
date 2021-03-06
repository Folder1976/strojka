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
$(".input--phone").mask("+79999999999");


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
    asNavFor: '.popup-slider',
    focusOnSelect: true,
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

  $('.popup-slider').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    appendArrows: '.popup-slider .slider__arrows',
    prevArrow: '.popup-slider .slider__arrow--prev',
    nextArrow: '.popup-slider .slider__arrow--next',
    // fade: true,
    asNavFor: '#' + sId + ' .slider__list',
  });

  $('#' + sId).find('.slider__list').on('click', 'img', function(){
    $.magnificPopup.open({
      items: {
        src: $('#mf-popup-slider'),
      },
      callbacks: {
        open: function() {
          console.log('open...');
          $('.mfp-bg').addClass('mfp-bg--op1');
        }
      }
    });
  });

  $('#mf-popup-slider .slider__arrow--prev').on('click', function(){
    $('#' + sId).find('.slider__list').slick('slickPrev');
  });
  $('#mf-popup-slider .slider__arrow--next').on('click', function(){
    $('#' + sId).find('.slider__list').slick('slickNext');
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


/*
 * слайдер для страницы /stroitelstvo-kamennyh-domov
 */
function sliderProjectInit(sId){
  $('#' + sId).find('.pslider__list').slick({
    dots: false,
    appendArrows: '#' + sId + ' .pslider__arrows',
    prevArrow: '#' + sId + ' .pslider__arrow--prev',
    nextArrow: '#' + sId + ' .pslider__arrow--next',
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: false,
  });
}


$('.js-project-slider').each(function(idx){
  var sId = $(this).attr('id');
  if ( ! sId ) {
    sId = 'jsp-' + idx;
    $(this).attr('id', sId);
  }

  sliderProjectInit(sId);
});


/*
 * большой слайдер для страници /stroitelstvo-kamennyh-domov
 */
$('.js-project-slider-big .project-slider-big__list').slick({
  dots: true,
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: false,
  infinite: true,
  // adaptiveHeight: true,
  // asNavFor: '.project-slider-big__nav',
  appendArrows: '.psblider__arrows',
  prevArrow: '.psblider__arrow--prev',
  nextArrow: '.psblider__arrow--next',
  appendDots: '.pslider__dots',
  customPaging: function (slider, i) {
    var image = $(slider.$slides[i]).data('image');
    return '<a class="pslider__dot"><img src="'+image+'" alt="" /><svg class="icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#eye"></use></svg></a>';
  },
});

// переключаем на слайд с "планировкой"
$('.js-psb-goto').on('click', function(){
  var num = $(this).data('plan');
  $('.js-project-slider-big .project-slider-big__list')[0].slick.slickGoTo(parseInt(num));
});

// стрелка для листания слайдов
$('.project-slider-big__list').mousemove(function(e){
  var cursor = $('.psblider__cursor');

  // положение элемента
  var pos = $(this).offset();
  var elem_left = pos.left;
  var elem_top = pos.top;
  // положение курсора внутри элемента
  var Xinner = e.pageX - elem_left;
  var Yinner = e.pageY - elem_top;
  // console.log("X: " + Xinner + " Y: " + Yinner); // вывод результата в консоль
  // console.log($(this).width(), $(this).width()/2);

  cursor.css({'top': Yinner, 'left': Xinner });

  // меняем направление стрелки в зависимости от положения
  if ( Xinner > $(this).width()/2) {
    cursor.addClass('psblider__cursor--next')
  } else {
    cursor.removeClass('psblider__cursor--next')
  }
});

// переключение слайдов при клике на стрелку
$('.psblider__cursor').on('click', function(e){
  var parent = $('.project-slider-big__list');
  var slider = $('.js-project-slider-big .project-slider-big__list')[0].slick;
  // положение элемента
  var pos = parent.offset();
  var elem_left = pos.left;
  var elem_top = pos.top;
  // положение курсора внутри элемента
  var Xinner = e.pageX - elem_left;
  var Yinner = e.pageY - elem_top;

  // зависимости от положения "курсора" переключаем слайд
  if ( Xinner > parent.width()/2) {
    slider.slickNext(e);
  } else {
    slider.slickPrev(e);
  }
});




/*
 * слайдер для главной страницы
 */
$('#home-top-slider').slick({
  dots: false,
  arrows: false,
  slidesToShow: 1,
  slidesToScroll: 1,
  // centerMode: true,
  autoplay: true,
  fade: true,
  autoplaySpeed: 7000,
});


/*
 * слайдер для страницы "Отзывы"
 */
var rtsList = [];

// (вкладка "Крыши ДО и ПОСЛЕ")
function reviewsSliderTab1(sId){
  rtsList[sId] = $('#' + sId).find('.reviews-slider__list').slick({
    dots: false,
    appendArrows: '#' + sId + ' .reviews-slider__arrows',
    prevArrow: '#' + sId + ' .reviews-slider__arrow--prev',
    nextArrow: '#' + sId + ' .reviews-slider__arrow--next',
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: false,
  });
}

$('.js-reviews-tab1').each(function(idx){
  var sId = $(this).attr('id');
  if ( ! sId ) {
    sId = 'rts-' + idx;
    $(this).attr('id', sId);
  }

  reviewsSliderTab1(sId);
});

// (вкладка "Текстовые отзывы")
function reviewsSliderTab2(sId){
  rtsList[sId] = $('#' + sId).find('.reviews-slider__list').slick({
    dots: true,
    appendArrows: '#' + sId + ' .reviews-slider__arrows',
    prevArrow: '#' + sId + ' .reviews-slider__arrow--prev',
    nextArrow: '#' + sId + ' .reviews-slider__arrow--next',
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: false,
    adaptiveHeight: true,
  });
}

$('.js-reviews-tab2').each(function(idx){
  var sId = $(this).attr('id');
  if ( ! sId ) {
    sId = 'rts2-' + idx;
    $(this).attr('id', sId);
  }

  reviewsSliderTab2(sId);
});

// если на вкладке есть слайдер, то обновляем его
$('.tabs').on('click', '.tab__link', function(){
  var tabId = $(this).data('tab');
  var slider = $('#' + tabId).find('.reviews-slider');
  if ( slider.length > 0 ) {
    var sId = slider.attr('id');
    rtsList[sId][0].slick.slickGoTo( 1 );
    rtsList[sId][0].slick.slickGoTo( 0 );
  }
  $( window ).resize();
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
    stop: function( event, ui ) {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }
      uirHandle[uirId].html( ui.value + ' ' + units );
      uirVal[uirId].val( $( this ).slider( "value" ) );
    },
    change: function( event, ui ) {
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

  var tt = $(this).data('toggle-text');
  if ( tt != '' ) {
    var tmp = $(this).text();
    $(this).data('toggle-text', tmp);
    $(this).text(tt);
  }

  $(href).toggle('300');
});


});