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



