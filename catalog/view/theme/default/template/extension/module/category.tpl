<section class="section section-our-products">

  <div class="section-title">Товары</div>
  <div class="section-subtitle">За счет большой сети партнеров мы предлагаем<br>каталог материалов по выгодной цене</div>

  <div class="product-catalog">
    <?php foreach ($categories as $category) { ?>
      <div class="product-catalog__item">
        <div class="product-catalog__title"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
        <ul class="product-catalog__list">
        <?php foreach ($category['children'] as $child) { ?>
          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
        <?php } ?>
        </ul>
      </div>
    <?php } ?>
  </div>

</section>


