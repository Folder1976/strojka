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