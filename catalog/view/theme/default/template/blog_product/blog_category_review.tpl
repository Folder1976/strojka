<?php echo $header; ?>

<!-- <pre><?php var_dump($categories); ?></pre> -->

<div class="container page-reviews">

  <div class="row">
    <div class="col-md-12">
      <ul class="breadcrumb" itemscope itemtype="https://schema.org/BreadcrumbList">
        <?php $ListItem_pos = 1; ?>
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li itemprop="itemListElement" itemscope
        itemtype="https://schema.org/ListItem"><a href="<?php echo $breadcrumb['href']; ?>" itemprop="item"><span itemprop="name"><?php echo $breadcrumb['text']; ?></span></a><meta itemprop="position" content="<?php echo $ListItem_pos++; ?>" /></li>
        <?php } ?>
      </ul>
    </div>
  </div>

  <div class="row" id="content">

    <div class="col-md-12">
      <h1 class="section-title text-left"><svg class="icon section-title__icon">
          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews"></use>
        </svg> <?php echo $heading_title; ?></h1>


      <?php if ($categories) { ?>
      <div class="tabs tabs--review">
        <ul class="tabs__links">
          <?php foreach ($categories as $category) { ?>
            <?php if ($category['blog_category_id'] != 26 ) { ?>

            <?php
            switch ($category['blog_category_id']) {
              case 30: // Крыши ДО и ПОСЛЕ
                $icon = 'house';
                break;

              case 29: // Текстовые отзывы
                $icon = 'reviews-text';
                break;

              case 28: // Видеоотзывы
                $icon = 'reviews-video';
                break;

              case 27: // Отдел качества
                $icon = 'review-quality-dep';
                break;

              default:
                $icon = 'reviews';
                break;
            }
            ?>

            <li class="tab__link" data-tab="tab-$category['blog_category_id']">
              <a href="<?php echo $category['href']; ?>">
                <svg class="icon tab__link-icon">
                  <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#<?php echo $icon; ?>"></use>
                </svg>
                <div class="tab__link-text"><?php echo $category['name_no_prod']; ?></div>
              </a>
            </li>
            <?php } ?>
          <?php } ?>
        </ul>

        <div id="tab-1" class="tab__content tab-content is-active"></div>
        <div id="tab-2" class="tab__content tab-content"></div>
        <div id="tab-3" class="tab__content tab-content"></div>
        <div id="tab-4" class="tab__content tab-content"></div>

      </div>
      <?php } ?>



















      <?php if (false){//($products) { ?>
	  

	  
        <div class="news-list news-list--blog">
          <?php foreach ($products as $product) { ?>
            <div class="news-list__item news-item">
              <div class="news-item__img">
                <a href="<?php echo $product['href']; ?>"><img class="img--cover" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"></a>
              </div>
              <div class="news-item__desc">
                <div class="news-item__date"><?php echo $product['sku']; ?></div>
                <div class="news-item__date"><?php echo $product['upc']; ?></div>
                <div class="news-item__date"><?php echo $product['ean']; ?></div>
                <div class="news-item__date"><?php echo $product['jan']; ?></div>
                <div class="news-item__date"><?php echo $product['isbn']; ?></div>
                <div class="news-item__date"><?php echo $product['name']; ?></div>
                 <div class="news-item__date"><?php echo $product['description']; ?></div>
                 <div class="news-item__date"><?php echo $product['price']; ?></div>
                 <div class="news-item__date"><?php echo $product['quantity']; ?></div>
                <div class="news-item__title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				
				<?php foreach($product['images'] as $image){ ?>
					<img class="img--cover" src="<?php echo $image['image']; ?>" alt="лого <?php echo $category['name_no_prod']; ?>">
				<?php } ?>
              </div>
            </div>
          <?php } ?>
        </div>
      <?php } ?>

     <!--  <div class="pagination-wrap">
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
