$('.mob-menu__btn').on('click', function(){
  $(this).toggleClass('is-open');
  $('.js-mob-menu').toggleClass('mob-menu-is-open');
});