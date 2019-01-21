var uirHandle = [];
var uirVal = [];

$('.js-range').each(function(idx){
  var uirId = $(this).attr('id');
  if ( ! uirId ) {
    uirId = 'uir-' + idx;
    $(this).attr('id', uirId);
  }

  uirHandle[uirId] = $(this).find('.ui-slider-handle span');
  uirVal[uirId] = $(this).find('input');

  var options = {};
  if ( $(this).data('min') )
    options.min = parseFloat( $(this).data('min') );

  if ( $(this).data('max') )
    options.max = parseFloat ( $(this).data('max') );

  if ( $(this).data('value') )
    options.value = parseFloat ( $(this).data('value') );

  if ( $(this).data('step') )
    options.step = parseFloat ( $(this).data('step') );

  rangeInit(uirId, options);
});


function rangeInit(uirId, options = {}){
  var opt = {
    create: function() {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }
      uirHandle[uirId].html( $( this ).slider( "value" ) + ' ' + units );
      uirVal[uirId].val( $( this ).slider( "value" ) );
    },
    slide: function( event, ui ) {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }
      uirHandle[uirId].html( ui.value + ' ' + units );
      uirVal[uirId].val( $( this ).slider( "value" ) );
    }
  };

  var opt = Object.assign(opt, options);
  $( '#' + uirId ).slider(opt);
}


