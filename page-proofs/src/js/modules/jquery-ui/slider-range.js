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
    },
    stop: function( event, ui ) {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }
      uirHandle[uirId].html( ui.value + ' ' + units );
      uirVal[uirId].val( $( this ).slider( "value" ) );
    },
    change: function( event, ui ) {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }
      uirHandle[uirId].html( ui.value + ' ' + units );
      uirVal[uirId].val( $( this ).slider( "value" ) );
    },
    range: "min"
  };

  var opt = Object.assign(opt, options);
  $( '#' + uirId ).slider(opt);
}

// range price
var uirHandlePrice = [];
var uirValPriceMin = [];
var uirValPriceMax = [];
var hsp = [];

$('.js-range-price').each(function(idx){
  var uirId = $(this).attr('id');
  if ( ! uirId ) {
    uirId = 'uir-' + idx;
    $(this).attr('id', uirId);
  }

  uirHandlePrice[uirId] = $(this).find('.ui-slider-handle');
  uirValPriceMin[uirId] = $(this).find('input.range-price__input--min');
  uirValPriceMax[uirId] = $(this).find('input.range-price__input--max');

  var options = {};
  if ( $(this).data('min') )
    options.min = parseFloat( $(this).data('min') );

  if ( $(this).data('max') )
    options.max = parseFloat ( $(this).data('max') );

  if ( $(this).data('value') )
    options.value = parseFloat ( $(this).data('value') );

  // if ( $(this).data('values') )
    // options.values = parseFloat ( $(this).data('values') );

  if ( $(this).data('value-min') && $(this).data('value-max') ) {
    options.values = [ parseFloat ( $(this).data('value-min') ), parseFloat ( $(this).data('value-max') )];
  }

  if ( $(this).data('step') )
    options.step = parseFloat ( $(this).data('step') );

  rangePriceInit(uirId, options);
});


function rangePriceInit(uirId, options = {}){
  var opt = {
    create: function() {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }

      uirValPriceMin[uirId].val( $( this ).slider( "values", 0 ) );
      // console.log( 'create: ' + $( this ).slider( "values", 0 ));
      uirValPriceMax[uirId].val( $( this ).slider( "values", 1 ) );
    },
    slide: function( event, ui ) {
      var units = '';
      if ( $(this).data('units') ) {
        units = $(this).data('units');
      }

      uirValPriceMin[uirId].val( $( this ).slider( "values", 0 ) );
      // console.log( 'slide: ' + $( this ).slider( "values", 0 ));
      uirValPriceMax[uirId].val( $( this ).slider( "values", 1 ) );
    },
    stop: function( event, ui ) {
      uirValPriceMin[uirId].val( $( this ).slider( "values", 0 ) );
      uirValPriceMax[uirId].val( $( this ).slider( "values", 1 ) );
    },
    range: true,
  };

  var opt = Object.assign(opt, options);
  // console.log(opt);
  hsp[uirId] = $( '#' + uirId ).slider(opt);
  // console.log(hsp);
  // hsp[uirId].slider('values',100, 500);
}


$('.range-price__input--min').on('change', function(){
  var rp = $(this).closest('.range-price');
  var inputMin = rp.find('.range-price__input--min');
  var inputMax = rp.find('.range-price__input--max');
  var val = parseFloat(inputMin.val());

  if(parseFloat(inputMin.val()) > parseFloat(inputMax.val())){
    val = parseFloat(inputMax.val());
    inputMin.val(val);
  }
  
  rp.slider("values",0,val);
});

$('.range-price__input--max').on('change', function(){
  var rp = $(this).closest('.range-price');
  var inputMin = rp.find('.range-price__input--min');
  var inputMax = rp.find('.range-price__input--max');
  var maxValue = parseFloat(rp.data('max'));
  var val = parseFloat(inputMax.val());

  if ( parseFloat(inputMax.val()) > maxValue ) {
    val = maxValue;
    inputMax.val(val);
  }

  if ( parseFloat(inputMin.val()) > parseFloat(inputMax.val()) ) {
    val = parseFloat(inputMin.val());
    inputMax.val(val);
  }

  rp.slider("values",1,val);
});
