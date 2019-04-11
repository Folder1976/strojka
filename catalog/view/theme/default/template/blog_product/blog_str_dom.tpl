<?php echo $header; ?>

<div class="container-fluid">
  <div class="row">
    <div class="project-slider-big js-project-slider-big">
      <div id="content" class="project-single-info">
        <div class="psblider__arrows">
          <div class="psblider__arrow psblider__arrow--prev"></div>
          <div class="psblider__arrow psblider__arrow--next"></div>
        </div>

        <div class="psblider__cursor">
          <svg class="psblider__cursor-icon">
            <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#slide-prev"></use>
          </svg>
        </div>

        <div class="project-slider-big__list">
          <?php foreach ($images as $image) { ?>
            <div class="img--cover" data-image="<?php echo $image['popup']; ?>"><img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>
            <?php } ?>
        </div>

        <div class="project-single-info__header">
          <a href="#get-consultation" class="project-single-info__header-call mf-popup" data-effect="mfp-zoom-in">Заказать звонок</a>
          <h1 class="section-title text-left"><?php echo $heading_title; ?></h1>
          <a href="<?php echo $breadcrumbs[count($breadcrumbs)-2]['href']; ?>" class="project-single-info__header-back">< Назад</a>
        </div>

        <div class="project-single-info__footer">
          <ul class="project-single-info__parameters">
            <?php if ( $ean ) { ?>
            <li>
              <svg class="icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#project-area"></use>
              </svg>
              <span><?php echo $ean; ?> м<sup>2</sup></span>
            </li>
            <?php } ?>

            <?php if ( $jan ) { ?>
            <li>
              <svg class="icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#floor"></use>
              </svg>
              <span><?php echo $jan; ?></span>
            </li>
            <?php } ?>

            <?php if ( $isbn ) { ?>
            <li>
              <svg class="icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#bed"></use>
              </svg>
              <span><?php echo $isbn; ?></span>
            </li>
            <?php } ?>
          </ul>

          <div class="project-single-info__footer-btns">
            <button class="btn btn--black btn--bdrs0 js-psb-goto" data-plan="<?php echo $minimum-1; ?>">Планировка</button>
            <a href="#get-call" class="btn btn--orange btn--bdrs0 uptocall-mini-phone2" data-effect="mfp-zoom-in">Хочу такой дом</a>
          </div>
        </div>
      </div>
      <div class="project-slider-big__nav">
        <div class="pslider__dots"></div>
      </div>
    </div>
  </div>
</div>

<div class="container">
  <div class="row text-center" style="margin: 5rem auto 3rem">
    <a href="#get-call" class="btn btn--dib btn--black btn--bdrs0 uptocall-mini-phone2 btn--ttn" data-effect="mfp-zoom-in">Узнать стоимость проекта</a>
  </div>
</div>



<?php if ($products) { ?>
  <div class="project-list" id="content">
    <div class="container-fluid">
      <div class="row">
        <h2 class="section-title">похожие проекты</h2>
        <?php foreach ($products as $product) { ?>
        <div class="col-sm-6 col-xs-12">
          <div class="project-list__item">
            <a href="<?php echo $product['href']; ?>" class="project-info">
              <div class="project-info__icon">
                <svg class="icon">
                  <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#project-info"></use>
                </svg>
              </div>
              <div>
                <h2 class="project-info__title"><?php echo $product['name']; ?></h2>
                <p class="project-info__sub-title"><?php echo $product['description']; ?></p>
              </div>
              <ul class="project-info__parameters">

                <?php if ( $product['ean'] ) { ?>
                <li>
                  <svg class="icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#project-area"></use>
                  </svg>
                  <span><?php echo $product['ean']; ?> м<sup>2</sup></span>
                </li>
                <?php } ?>

                <?php if ( $product['jan'] ) { ?>
                <li>
                  <svg class="icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#floor"></use>
                  </svg>
                  <span><?php echo $product['jan']; ?></span>
                </li>
                <?php } ?>

                <?php if ( $product['isbn'] ) { ?>
                <li>
                  <svg class="icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#bed"></use>
                  </svg>
                  <span><?php echo $product['isbn']; ?></span>
                </li>
                <?php } ?>

              </ul>
            </a>
            <div class="pslider js-project-slider">
              <div class="pslider__arrows">
                <div class="pslider__arrow pslider__arrow--prev"></div>
                <div class="pslider__arrow pslider__arrow--next"></div>
              </div>

              <div class="pslider__list pslider-item">          
                <?php foreach ($product['images'] as $image) { ?>
                  <div class="pslider__item pslider-item">

                    <div class="pslider-item__img img--cover"><img src="<?php echo $image['image']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>
                  </div>
                <?php } ?>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
<?php } ?>




<?php echo $footer; ?>

