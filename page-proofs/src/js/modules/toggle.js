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