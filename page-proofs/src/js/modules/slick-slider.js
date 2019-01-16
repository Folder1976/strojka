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

$('.js-slider').slick({
  dots: false,
  arrows: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  autoplay: false,
  centerPadding: '40px',
  // responsive: [{
  //   breakpoint: 768,
  //   settings: {
  //     arrows: false,
  //     centerMode: true,
  //     centerPadding: '40px',
  //     slidesToShow: 3
  //   }
  // },{
  //   breakpoint: 480,
  //   settings: {
  //     arrows: false,
  //     centerMode: true,
  //     centerPadding: '40px',
  //     slidesToShow: 1
  //   }
  // }],
});

