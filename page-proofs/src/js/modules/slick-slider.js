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


// слайдер для страници /stroitelstvo_domov
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


// большой слайдер для страници /stroitelstvo_domov
// $('.js-project-slider-big .project-slider-big__list').slick({
//   dots: false,
//   slidesToShow: 1,
//   slidesToScroll: 1,
//   autoplay: false,
//   infinite: false,
//   asNavFor: '.project-slider-big__nav',
//   appendArrows: '.pslider__arrows',
//   prevArrow: '.pslider__arrow--prev',
//   nextArrow: '.pslider__arrow--next',
// });

// $('.js-project-slider-big .project-slider-big__nav').slick({
//   dots: false,
//   slidesToShow: 6,
//   slidesToScroll: 1,
//   autoplay: false,
//   infinite: false,
//   vertical: true,
//   asNavFor: '.project-slider-big__list',
// });

$('.js-project-slider-big .project-slider-big__list').slick({
  dots: true,
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: false,
  infinite: false,
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

$('.js-psb-goto').on('click', function(){
  var num = $(this).data('plan');
  $('.js-project-slider-big .project-slider-big__list')[0].slick.slickGoTo(parseInt(num));
});



