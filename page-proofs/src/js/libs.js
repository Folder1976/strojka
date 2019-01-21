$(document).ready(function() {

/*************************************************************/
// Для того, чтобы проверить тег на содержание в нем атрибута
// расширяем jQuery методом hasAttr
$.fn.hasAttr = function(name) {
   return this.attr(name) !== undefined;
};

/*************************************************************/

// Slick nav моб. меню
// ../../node_modules/slicknav/dist/jquery.slicknav.min.js

// Magnific popup
//= ../../node_modules/magnific-popup/dist/jquery.magnific-popup.min.js

// MaskedInput
//= ../../node_modules/jquery.maskedinput/src/jquery.maskedinput.js

// Slick slider
//= ../../node_modules/slick-carousel/slick/slick.min.js

// jquery-ui. Range. https://jqueryui.com/slider/#range
//= libs/jquery-ui-1.12.1.custom/jquery-ui.min.js

});
