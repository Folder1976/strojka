<?php echo $header; ?>

<div class="container">

  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-9">
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

    <div class="col-md-9 col-md-push-3">
      <h1 class="section-title text-left"><?php echo $heading_title; ?></h1>

      <?php if ($description) { ?>
        <div class="description"><?php echo $description; ?></div>
      <?php } ?>

      <?php if ($categories) { ?>
        <?php foreach ($categories as $category) { ?>
		  <li><a href="<?php echo $category['href']; ?>">
			<img class="img--cover" src="<?php echo $category['image']; ?>" alt="лого <?php echo $category['name_no_prod']; ?>">
			<?php echo $category['name_no_prod']; ?></a></li>
        <?php } ?>
      <?php } ?>

      <?php if ($products) { ?>

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

    <div class="col-md-3 col-md-pull-9">
      <?php // echo $column_left; ?>

      <div class="seller">
        <div class="seller__img">
          <img src="catalog/view/theme/default/img/tmpimg/seller-foto.jpg" alt="Анна. Менеджер отдела продаж">
        </div>
        <div class="seller__name">Анна</div>
        <div class="seller__post">Менеджер отдела продаж</div>
        <div class="seller__text">— Помогу выбрать подходящую услугу для кровли.</div>
        <p><a href="/online-calc">Калькулятор и составление КП</a></p>
        <p><a href="#get-consultation" class="mf-popup" data-effect="mfp-zoom-in">Закажите замер по Москве и МО</a></p>
      </div>
    </div>
  </div>

</div>








<?php echo $footer; ?>
