<?php echo $header; ?>

<div class="project-cat-header">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <h1 class="section-title">проекты</h1>
        <!-- <a href="#"><svg class="icon project-cat-header-location"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#location2"></use></svg><span class="project-cat__link"> На карте</span></a> -->
      </div>
      <div class="col-md-6">
        <?php if ( isset($categories) && count($categories) > 0 ) { ?>
        <ul class="project-cat-filter-type">
          <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name_no_prod']; ?></a></li>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <div class="col-md-3 text-right-md text-right-lg">
        <a href="#get-consultation" class="project-cat__link uptocall-mini-phone2" data-effect="mfp-zoom-in">Заказать звонок</a>
      </div>
    </div>
  </div>
</div>

<?php if ( isset($categories1) && count($categories1) > 0 ) { ?>
<div class="project-cat-header2">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <ul class="project-cat-filter-floor">
          <?php foreach ($categories1 as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name_no_prod']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
    </div>
  </div>
</div>
<?php } ?>


<?php if ($products) { ?>
  <div class="project-list" id="content">
    <div class="container-fluid">
      <div class="row">
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


