<?php echo $header; ?>

<?php
$active_blog_category_id = 28;
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
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews-video"></use>
            </svg>
          </div>
          <div class="tab-content__title">
            <div class="tab-content__title-text">Видеоотзывы</div>
          </div>
        </div>

        <?php if ($products) { ?>
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



<!--       <div class="pagination-wrap">
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
 -->
    </div>
  </div>

</div>





<?php echo $footer; ?>
