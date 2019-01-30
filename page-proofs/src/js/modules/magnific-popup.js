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