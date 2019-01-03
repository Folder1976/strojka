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






<?php if (false) { ?>
<div class="mobile-category">

<h1 class="list-group-caption">Категорії</h1>

<div class="list-group ">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>

</div>
<?php } ?>