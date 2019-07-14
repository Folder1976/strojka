<?php echo $header; ?>

<?php
$active_blog_category_id = 27;
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
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#review-quality-dep"></use>
            </svg>
          </div>
          <div class="tab-content__title">
            <div class="tab-content__title-text">Отдел качества</div>
            <div class="tab-content__title-subtitle">нам важно ваше мнение</div>
          </div>
          <div class="tab-content__desc">
            Наша компания стремится к совершенствованию, поэтому мы тщательно следим за качеством работ. Наши сотрудники узнают у клиентов, что им понравилось в работе, а что следует улучшить.
          </div>
        </div>

        <?php if ($products) { ?>
          <div class="row review-audio-list">
            <?php foreach ($products as $product) { ?>
              <div class="col-md-6">
                <div class="review-audio-item">
                  <div class="review-audio-item__foto">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                  </div>
                  <div class="review-audio-item__date"><?php echo $product['date_added']; ?></div>

                  <?php if ( isset($product['rating']) && is_int($product['rating']) ) { ?>
                    <div class="review-audio-item__rating">
                      <span class="review-audio-item__rating-title">Оценка компании: </span>
                      <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                        <?php } ?>
                      </div>
                    </div>
                  <?php } ?>
                  
                  <div class="review-audio-item__audio">
                    <?php foreach($product['downloads'] as $download){ ?>
                      <audio controls="controls">
                        <source src="<?php echo $download['href']; ?>" type="audio/mpeg">
                      </audio>
                    <?php } ?>
                  </div>
                  <!-- <pre><?php var_dump($product); ?></pre> -->
                </div>
              </div>
            <?php } ?>
          </div>
        <?php } ?>

        <?php if ( count($products) > 15 ) { ?>
        <div class="row">
          <div class="col-md-4 col-md-offset-4">
            <a href="#" class="btn">Загрузить ещё</a>
          </div>
        </div>
        <?php } ?>
      </div>

    </div>
  </div>

</div>

<?php echo $footer; ?>
