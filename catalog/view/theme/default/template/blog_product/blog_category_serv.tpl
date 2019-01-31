<?php echo $header; ?>

<?php
$categories = array (
  0 => 
  array (
    'name' => 'Водосточные системы',
    'children' => 
    array (
      0 => 
      array (
        'name' => 'Медный водосток AQUASYSTEM (Россия) (0)',
        'href' => 'http://strojka.localhost/vodostochnye-sistemy/aquasystem-copper',
      ),
      1 => 
      array (
        'name' => 'Металлические (531)',
        'href' => 'http://strojka.localhost/vodostochnye-sistemy/metallicheskie',
      ),
      2 => 
      array (
        'name' => 'Пластиковые (273)',
        'href' => 'http://strojka.localhost/vodostochnye-sistemy/plastikovye',
      ),
    ),
    'column' => 1,
    'href' => 'http://strojka.localhost/vodostochnye-sistemy',
  ),
  1 => 
  array (
    'name' => 'Дымоходы',
    'children' => 
    array (
      0 => 
      array (
        'name' => 'Schiedel PERMETER (0)',
        'href' => 'http://strojka.localhost/dimoxody/schiedel-permeter',
      ),
      1 => 
      array (
        'name' => 'Schiedel Uni (0)',
        'href' => 'http://strojka.localhost/dimoxody/schiedel-uni',
      ),
      2 => 
      array (
        'name' => 'Вентиляционные блоки VENT (0)',
        'href' => 'http://strojka.localhost/dimoxody/vent',
      ),
    ),
    'column' => 1,
    'href' => 'http://strojka.localhost/dimoxody',
  ),
  2 => 
  array (
    'name' => 'Комплектующие для кровли',
    'children' => 
    array (
      0 => 
      array (
        'name' => 'Комплектующие для гибкой черепицы (0)',
        'href' => 'http://strojka.localhost/komplektuyushchie-dlya-krovli/komplektuyushchie-dlya-gibkoy-cherepitsy',
      ),
      1 => 
      array (
        'name' => 'Комплектующие для натуральной черепицы (0)',
        'href' => 'http://strojka.localhost/komplektuyushchie-dlya-krovli/komplektuyushchie-dlya-naturalnoy-cherepitsy',
      ),
      2 => 
      array (
        'name' => 'Кровельная вентиляция (180)',
        'href' => 'http://strojka.localhost/komplektuyushchie-dlya-krovli/krovelnaya-ventilyatsiya',
      ),
      3 => 
      array (
        'name' => 'Элементы безопасности кровли (0)',
        'href' => 'http://strojka.localhost/komplektuyushchie-dlya-krovli/elementy-bezopasnosti-krovli',
      ),
    ),
    'column' => 1,
    'href' => 'http://strojka.localhost/komplektuyushchie-dlya-krovli',
  ),
  3 => 
  array (
    'name' => 'Кровельные материалы',
    'children' => 
    array (
      0 => 
      array (
        'name' => 'Битумный волнистый лист (4)',
        'href' => 'http://strojka.localhost/krovlya/bitumnyy-volnistyy-list',
      ),
      1 => 
      array (
        'name' => 'Гибкая черепица (405)',
        'href' => 'http://strojka.localhost/krovlya/gibkaya-cherepitsa',
      ),
      2 => 
      array (
        'name' => 'Керамическая черепица (181)',
        'href' => 'http://strojka.localhost/krovlya/keramicheskaya-cherepitsa',
      ),
      3 => 
      array (
        'name' => 'Композитная черепица (262)',
        'href' => 'http://strojka.localhost/krovlya/kompozitnaya-cherepitsa',
      ),
      4 => 
      array (
        'name' => 'Металлочерепица (430)',
        'href' => 'http://strojka.localhost/krovlya/metallocherepitsa',
      ),
      5 => 
      array (
        'name' => 'Фальцевая кровля (179)',
        'href' => 'http://strojka.localhost/krovlya/faltsevaya',
      ),
      6 => 
      array (
        'name' => 'Цементно-песчаная черепица (25)',
        'href' => 'http://strojka.localhost/krovlya/tsementno-peschanaya',
      ),
    ),
    'column' => 1,
    'href' => 'http://strojka.localhost/krovlya',
  ),
  4 => 
  array (
    'name' => 'Мансардные окна',
    'children' => 
    array (
      0 => 
      array (
        'name' => 'FAKRO (Польша) (239)',
        'href' => 'http://strojka.localhost/mansardnye-okna/fakro',
      ),
      1 => 
      array (
        'name' => 'VELUX (Дания) (484)',
        'href' => 'http://strojka.localhost/mansardnye-okna/velux',
      ),
    ),
    'column' => 1,
    'href' => 'http://strojka.localhost/mansardnye-okna',
  ),
);
?>



<div class="container">

  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-9">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

  <div class="row" id="content">

    <div class="col-md-9 col-md-push-3">
      <!-- <h1 class="section-title text-left"><?php echo $heading_title; ?></h1> -->
      <br>

      <?php if ( isset($categories) && count($categories) > 0 ) { ?>
      <div class="list-category">

        <?php foreach ($categories as $category) { ?>
        <div class="list-category__item list-category-item">
          <div class="list-category-item__title"><a href="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a></div>
          
          <?php if ( isset($category['children']) && count($category['children']) > 0 ) { ?>
          <?php foreach ($category['children'] as $child) { ?>
            <ul class="list-category-item__list">
              <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
            </ul>
          <?php } ?>
          <?php } ?>

        </div>
        <?php } ?>

      </div>
      <?php } ?>

      <br>
      <br>
      <br>

    </div>

    <aside id="column-left" class="col-md-3 col-md-pull-9">
      <?php // echo $column_left; ?>

      <div class="seller">
        <div class="seller__img">
          <img src="catalog/view/theme/default/img/tmpimg/seller-foto.jpg" alt="Иннокентий Гаврилов. Менеджер отдела продаж">
        </div>
        <div class="seller__name">Иннокентий Гаврилов</div>
        <div class="seller__post">Менеджер отдела продаж</div>
        <div class="seller__text">— Помогу выбрать подходящую услугу для кровли.</div>
        <p><a href="#">Калькулятор и составление КП</a></p>
        <p><a href="#">Закажите замер по Москве и МО</a></p>
      </div>
    </aside>
  </div>

</div>






<?php if (false) { ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row">
        <div class="col-md-2 col-sm-6 hidden-xs">
          <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="form-group">
            <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
          </div>
        </div>
        <div class="col-md-4 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="col-md-3 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
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
      </div>
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php } ?>


<?php echo $footer; ?>
