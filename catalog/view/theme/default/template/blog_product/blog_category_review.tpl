<?php echo $header; ?>

<?php
$active_blog_category_id = 30;
?>

<div class="container page-reviews">

  <?php include DIR_TEMPLATE."default/template/blog_product/parts/blog_category_review__breadcrumb.tpl"; ?>

  <div class="row" id="content">
    <div class="col-md-12">
      
      <?php include DIR_TEMPLATE."default/template/blog_product/parts/blog_category_review__header.tpl"; ?>


      <div id="tab-1" class="tab__content tab-content is-active">
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

        <?php if ( $categories[30]['products'] ) { ?>
        <?php $products = $categories[30]['products']; ?>
        <?php foreach ($products as $product) { ?>
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
                  <img src="/image/<?php echo $product['image']; ?>" alt="client-foto">
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


        <?php if (false) { ?>
        <div class="row">
          <div class="col-md-4 col-md-offset-4">
            <a href="#" class="btn">Загрузить ещё</a>
          </div>
        </div>
        <?php } ?>

      </div>



      <div id="tab-2" class="tab__content tab-content">
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

        <?php if ( $categories[29]['products'] ) { ?>
        <?php $products = $categories[29]['products']; ?>
        <div class="reviews-slider reviews-slider--text js-reviews-tab2">

          <div class="reviews-slider__arrows">
            <div class="reviews-slider__arrow reviews-slider__arrow--prev"></div>
            <div class="reviews-slider__arrow reviews-slider__arrow--next"></div>
          </div>

          <div class="reviews-slider__list">
            <?php foreach ($products as $product) { ?>
              <div class="reviews-slider__item">
                <div class="reviews-slider__image">
                  <img src="/image/<?php echo $product['image']; ?>" alt="">
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




      <div id="tab-3" class="tab__content tab-content">
        <div class="tab-content__top">
          <div class="tab-content__icon">
            <svg class="icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews-video"></use>
            </svg>
          </div>
          <div class="tab-content__title">
            <div class="tab-content__title-text">Видеоотзывы</div>
          </div>
        </div>

        <?php if ( $categories[28]['products'] ) { ?>
        <?php $products = $categories[28]['products']; ?>
          <div class="row review-video-list">
            <?php foreach ($products as $product) { ?>
              <div class="col-md-6 review-video-item">
                <?php $product['description'] = str_replace('https://youtu.be/', 'https://www.youtube.com/embed/', $product['description']); ?>

                <div class="iframe__container">
                  <iframe src="<?php echo $product['description']; ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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




      <div id="tab-4" class="tab__content tab-content">
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


        <?php if ( $categories[27]['products'] ) { ?>
        <?php $products = $categories[27]['products']; ?>
          <div class="row review-audio-list">
            <?php foreach ($products as $product) { ?>

              <div class="col-md-6">
                <div class="review-audio-item">
                  <div class="review-audio-item__foto">
                    <img src="/image/<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>">
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

