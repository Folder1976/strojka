<div class="filter" id="filter">
<div id="filter-mob" class="filter-mob">
<div class="filter__close"><i class="fa fa-times" aria-hidden="true"></i></div>
<form method=GET action="<?php echo $action; ?>" class="filter__form">
  <div class="widget-title"><?php echo $heading_title; ?></div>
  <div class="list-group">


    <?php if(isset($prices) AND count($prices) > 1){ ?>
      <a class="filter-group__title">Цена</a>
      <div class="filter-group__content">
        <div id="filter-group-price" class="js-range-price range-price" data-min="<?php echo $prices['min_price']; ?>" data-max="<?php echo $prices['max_price']; ?>" data-value-min="<?php echo $prices['min_price']; ?>" data-value-max="<?php echo $prices['max_price']; ?>" data-step="0.01">
          <div class="range-price__input-wrap">
            <input type="text" id="min_price" name="min_price" class="range-price__input range-price__input--min" value="<?php echo $prices['min_price']; ?>"  />
            <input type="text" id="max_price" name="max_price" class="range-price__input range-price__input--max" value="<?php echo $prices['max_price']; ?>" " />
          </div>

          <span class="range-price__text range-price__text--min"><?php echo $prices['min_price']; ?></span>
          <span class="range-price__text range-price__text--max"><?php echo $prices['max_price']; ?></span>

          <div class="ui-slider-handle range-price__handle range-price__handle--min"></div>
          <div class="ui-slider-handle range-price__handle range-price__handle--max"></div>
          
        </div>
      </div>
    <?php } ?>

		<?php if(isset($filter_manufactures) AND count($filter_manufactures) > 1){ ?>
				<a class="filter-group__title"><?php echo $manufacture_title; ?></a>
				<div class="filter-group__content">
					<div id="filter-group-manufacture">
       		<?php foreach ($filter_manufactures as $filter) { ?>
            <?php if(isset($filter['manufacturer_id'])){ ?>
						<div class="filter-item">
								<?php if (in_array($filter['manufacturer_id'], $ffilter_manufacturer)) { ?>
								<input class="checkbox" type="checkbox" id="filter_manufacturer_<?php echo $filter['manufacturer_id']; ?>" name="manufacturer_id[]" value="<?php echo $filter['manufacturer_id']; ?>" checked="checked" />
								<?php } else { ?>
								<input class="checkbox" type="checkbox" id="filter_manufacturer_<?php echo $filter['manufacturer_id']; ?>" name="manufacturer_id[]" value="<?php echo $filter['manufacturer_id']; ?>" />
								<?php } ?>
                <label for="filter_manufacturer_<?php echo $filter['manufacturer_id']; ?>"><?php echo $filter['name']; ?></label>
						</div>
            <?php } ?>
						<?php } ?>
					</div>
				</div>
		<?php } ?>




	  <?php foreach ($filter_options as $option_id => $option_info) { ?>
    
        <?php if(isset($option_info['values']) AND count($option_info['values']) > 1){ ?>
           
						<a class="filter-group__title"><?php echo $option_info['name']; ?></a>
            <div class="filter-group__content">
              <div id="filter-option<?php echo $option_info['option_id']; ?>">
								

                <?php foreach ($option_info['value'] as $filter) { ?>
                <div class="filter-item">
                    <?php if (isset($ofilter[$filter_group_id]) AND in_array($filter, $ofilter[$filter_group_id])) { ?>
                    <input class="checkbox" type="checkbox" id="ofilter_<?php echo $filter_group_id.'-'.$filter; ?>" name="ofilter[<?php echo $filter_group_id; ?>][]" value="<?php echo $filter; ?>" checked="checked" />
                    <?php } else { ?>
                    <input class="checkbox" type="checkbox" id="ofilter_<?php echo $filter_group_id.'-'.$filter; ?>" name="ofilter[<?php echo $filter_group_id; ?>][]" value="<?php echo $filter; ?>" />
                    <?php } ?>
                    <label for="ofilter_<?php echo $filter_group_id.'-'.$filter; ?>"><?php echo $filter; ?></label>
                </div>
                <?php } ?>

              </div>
            </div>
        <?php } ?>
    <?php } ?>





	  <?php foreach ($filter_attribute_groups as $filter_group_id => $filter_group) { ?>
    
        <?php if(isset($filter_attributes[$filter_group_id]) AND count($filter_attributes[$filter_group_id]) > 1){ ?>
           
					 <?php //sort($filter_attributes[$filter_group_id]); ?>
						
						<a class="filter-group__title"><?php echo $filter_group['name']; ?></a>

            <?php if ($filter_group_id == 16) { ?>
            <div class="filter-group__content filter-group__content--2col">
            <?php } else { ?>
            <div class="filter-group__content">
            <?php } ?>

              <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">

                <?php foreach ($filter_attributes[$filter_group_id] as $filter) { ?>
                <?php if ($filter_group_id == 16) { ?>
                <div class="filter-item filter-item--img">
                <?php } else { ?>
                <div class="filter-item">
                <?php } ?>
                    <?php if (isset($ffilter[$filter_group_id]) AND in_array($filter, $ffilter[$filter_group_id])) { ?>
                    <input class="checkbox" type="checkbox" id="ffilter_<?php echo $filter_group_id.'-'.$filter; ?>" name="ffilter[<?php echo $filter_group_id; ?>][]" value="<?php echo $filter; ?>" checked="checked" />
                    <?php } else { ?>
                    <input class="checkbox" type="checkbox" id="ffilter_<?php echo $filter_group_id.'-'.$filter; ?>" name="ffilter[<?php echo $filter_group_id; ?>][]" value="<?php echo $filter; ?>" />
                    <?php } ?>
                    <label for="ffilter_<?php echo $filter_group_id.'-'.$filter; ?>"><?php echo $filter; ?></label>
                </div>
                <?php } ?>

              </div>
            </div>
        <?php } ?>
    <?php } ?>



  </div>
  <div class="filter__btn-group text-center">
    <button type="submit" id="button-ffilter" class="btn filter__btn filter__btn-submit"><?php echo $button_filter; ?></button>
    <button type="reset" id="button-reset" class="btn filter__btn filter__btn-reset">Сбросить</button>
  </div>
</form>
</div>
<script type="text/javascript"><!--
$('#button-ffilter1111').on('click', function() {
	ffilter = [];

	$('input[name^=\'ffilter\']:checked').each(function(element) {
		ffilter.push(this.value);
	});

	location = '<?php echo $action; ?>&ffilter=' + ffilter.join(',');
});

$('.filter-group__title').on('click', function(){
  $(this).toggleClass('is-open').next().toggle('300');
});

$('#button-reset').on('click', function(){
  // var rp = $('#filter-group-price');
  // var min = parseFloat( rp.data('min') );
  // var max = parseFloat( rp.data('max') );

  // rp.slider("values", 0, min);
  // rp.slider("values", 1, max);

  location = '<?php echo $action; ?>';
});
//--></script>

</div>
