<?php echo $header; ?>

<?php
$active_blog_category_id = 30;
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
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#house"></use>
            </svg>
          </div>
          <div class="tab-content__title">
            <div class="tab-content__title-text">Крыши</div>
            <div class="tab-content__title-subtitle">Объекты до и после</div>
          </div>
        </div>

        <?php if ($products) { ?>
        <?php foreach ($categories as $category) { ?>
           
         <h2><?php echo $category['name_no_prod']; ?></h2>
         
         
         <?php foreach ($category['products'] as $product) { ?>
         
          
          <div class="review-row">
            <div class="row">
              <div class="col-md-6">
                <div class="reviews-slider js-reviews-tab1">

                  <div class="reviews-slider__arrows">
                    <div class="reviews-slider__arrow reviews-slider__arrow--prev"></div>
                    <div class="reviews-slider__arrow reviews-slider__arrow--next"></div>
                  </div>

                  <div class="reviews-slider__list">
                    <?php foreach($product['images'] as $image){ ?>
                      <div class="reviews-slider__item">
                        <img src="<?php echo $image['image']; ?>" alt="<?php echo $category['name_no_prod']; ?>">
                      </div>
                    <?php } ?>
                  </div>
                </div> <!-- /.reviews-slider -->
              </div>

              <div class="col-md-6">
                <div class="review-tab1-block">
                  <div class="review-tab1-block__client-foto">
                    <img src="<?php echo $product['thumb']; ?>" alt="client-foto">
                  </div>
                  <div class="review-tab1-block__client-name"><b><?php echo $product['isbn']; ?></b>, <?php echo $product['jan']; ?></div>
                  <div class="review-tab1-block__text"><?php echo $product['description']; ?></div>

                  <ul class="review-tab1-block__list">

                    <?php if ( isset($product['name']) && !empty($product['name']) ) { ?>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-type"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text"><?php echo $product['name']; ?></div>
                    </li>
                    <?php } ?>

                    <?php if ( isset($product['jan']) && !empty($product['jan']) ) { ?>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-location"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text"><?php echo $product['jan']; ?></div>
                    </li>
                    <?php } ?>

                    <?php if ( isset($product['ean']) && !empty($product['ean']) ) { ?>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-area"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text"><?php echo $product['ean']; ?></div>
                    </li>
                    <?php } ?>

                    <?php if ( isset($product['price']) && !empty($product['price']) ) { ?>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-price"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text"><?php echo $product['price']; ?></div>
                    </li>
                    <?php } ?>

                  </ul>
                </div>
              </div>
            </div>
          </div>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </div>


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

    </div>

  </div>

</div>








<?php echo $footer; ?>

