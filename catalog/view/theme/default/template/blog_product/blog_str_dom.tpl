<?php echo $header; ?>

<?php
$tmp_images = [
  '/catalog/view/theme/default/img/tmpimg/projects/foto-1.jpg',
  '/catalog/view/theme/default/img/tmpimg/projects/foto-2.jpg',
  '/catalog/view/theme/default/img/tmpimg/projects/foto-3.jpg',
  '/catalog/view/theme/default/img/tmpimg/projects/foto-4.jpg',
  '/catalog/view/theme/default/img/tmpimg/projects/foto-5.jpg',
  '/catalog/view/theme/default/img/tmpimg/projects/foto-5.jpg',
];
?>


<?php if ( count($images) <= 3 ) { ?>
<style>
.project-slider-big__nav .slick-track {
    transform: none !important;
}
</style>
<?php } ?>


<div class="container-fluid">
  <div class="row">
    <div class="project-slider-big js-project-slider-big">
      <div class="project-slider-big__nav">
        <div class="pslider__dots"></div>
        
        <?php // foreach ($tmp_images as $image) { ?>
        <!-- <div class="img--cover"><img src="<?php echo $image; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div> -->
        <?php //} ?>
      </div>
      <div id="content" class="project-single-info">
        <div class="project-slider-big__arrows">
          <div class="pslider__arrow pslider__arrow--prev"></div>
          <div class="pslider__arrow pslider__arrow--next"></div>
        </div>

        <div class="project-slider-big__list">
          <?php foreach ($tmp_images as $image) { ?>
            <div class="img--cover" data-image="<?php echo $image; ?>"><img src="<?php echo $image; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>
            <?php } ?>
        </div>

        <div class="project-single-info__header">
          <h1 class="section-title text-left"><?php echo $heading_title; ?></h1>
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
        </div>
      </div>
    </div>
  </div>
</div>




<div class="container">
  <div class="row" id="content">

    <div class="col-md-12">
      <h1 class="section-title text-left"><?php echo $heading_title; ?></h1>

      <div class="company-review-date"><?php echo $date_added; ?></div>
      <div class="company-review-author">Автор: <?php echo $isbn; ?></div>

      <?php if ($popup) { ?>
        <div class="company-review-thumb"><img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></div>
      <?php } ?>

      <div class="company-review-info">
        <?php if ($upc) { ?>
        <div class="company-review-info__time"><svg class="icon company-review-info__icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#clock-circular"></use></svg>Срок: <?php echo $upc; ?></div>
        <?php } ?>

        <?php if ($ean) { ?>
        <div class="company-review-info__area"><svg class="icon company-review-info__icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#area"></use></svg>Площадь: <?php echo $ean; ?></div>
        <?php } ?>

        <?php if ($jan) { ?>
        <div class="company-review-info__location"><svg class="icon company-review-info__icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#location"></use></svg>Место: <?php echo $jan; ?></div>
        <?php } ?>
      </div>

      <?php if ($description) { ?>
        <div class="description"><?php echo $description; ?></div>
      <?php } ?>


      <br>
      <br>

      <?php if ( $images ) { ?>
        <?php foreach ($images as $image) { ?>
          <div class="img-stages">
            <div class="img-stages__title"><?php echo $image['text1']; ?></div>
            <div class="img-stages__img">
              <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
            </div>
            <div class="img-stages__text"><?php echo $image['text2']; ?></div>
          </div>
        <?php } ?>
      <?php } ?>

      <br>
      <br>
      <?php if ( $products && count($products) > 0 ) { ?>
        <div class="h3-title">Еще отзывы</div>

        <ul class="company-works-list">
          <?php foreach ($products as $pr) { ?>
            <li>
              <a href="<?php echo $pr['href']; ?>"><?php echo $pr['date_added'].' '.$pr['isbn']; ?></a>
            </li>
          <?php } ?>
        </ul>
      <?php } ?>

    </div>

  </div>

</div>


<?php echo $footer; ?>
