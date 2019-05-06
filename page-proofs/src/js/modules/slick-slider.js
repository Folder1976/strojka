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
 * слайдер для страницы /stroitelstvo_domov
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
 * большой слайдер для страници /stroitelstvo_domov
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





