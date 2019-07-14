<?php echo $header; ?>

<?php
$active_blog_category_id = 29;
?>

<div class="container page-reviews">

  <?php include DIR_TEMPLATE."default/template/blog_product/parts/blog_category_review__breadcrumb.tpl"; ?>

  <div class="row" id="content">
    <div class="col-md-12">
      
      <?php include DIR_TEMPLATE."default/template/blog_product/parts/blog_category_review__header.tpl"; ?>


      <div class="page-reviews__page-content">
        <div class="tab-content__top">
          <div class="tab-content__icon">
            <svg class="icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews-text"></use>
            </svg>
          </div>
          <div class="tab-content__title">
            <div class="tab-content__title-text">Текстовые отзывы</div>
          </div>
        </div>

        <?php if ($products) { ?>
        <div class="reviews-slider reviews-slider--text js-reviews-tab2">

          <div class="reviews-slider__arrows">
            <div class="reviews-slider__arrow reviews-slider__arrow--prev"></div>
            <div class="reviews-slider__arrow reviews-slider__arrow--next"></div>
          </div>

          <div class="reviews-slider__list">
            <?php foreach ($products as $product) { ?>
              <div class="reviews-slider__item">
                <div class="reviews-slider__image">
                  <img src="<?php echo $product['thumb']; ?>" alt="">
                  <svg class="icon reviews-slider__quotes">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#quote"></use>
                  </svg>
                </div>
                <div class="reviews-slider__content">
                  <div class="reviews-slider__date"><?php echo $product['date_added']; ?></div>
                  <div class="reviews-slider__name"><b><?php echo $product['isbn']; ?></b>, <?php echo $product['jan']; ?></div>
                  <div class="reviews-slider__title"><?php echo $product['name']; ?></div>
                  <div class="reviews-slider__text"><?php echo $product['description']; ?></div>
                </div>
              </div>
            <?php } ?>
          </div>
        </div> <!-- /.reviews-slider -->
      <?php } ?>

      </div>

      <?php /*
      <div class="pagination-wrap">
        <div class=""><?php echo $pagination; ?></div>
        <div class="form-group input-group input-group-sm limit-per-page">
          <label for="input-limit"><?php echo $text_limit; ?></label>
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>      

      <hr class="hr--black">
      <br>
      */ ?>

    </div>
  </div>

</div>







<?php echo $footer; ?>
