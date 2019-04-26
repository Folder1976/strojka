// Accordion

$('.accordion').on('click', '.accordion__title', function(){
  let panel = $(this).next('.accordion__panel');

  $(this).toggleClass('is-active');
  panel.toggleClass('is-active');
  if ( panel.hasClass('is-active') ){
    panel.css('max-height', panel.prop('scrollHeight') + "px");
  } else {
    panel.css('max-height', 0);
  }

});
