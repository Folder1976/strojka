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

      <p>Работаем в официальном партнерстве с 27 производителями строительных материалов. Проверяем качество и наличие сертификатов и лицензий на продукцию.</p>


      <?php if ($categories) { ?>
      <div class="manufacturer__list">
      <?php foreach ($categories as $category) { ?>
      
      <?php if ($category['manufacturer']) { ?>
      <?php foreach ($category['manufacturer'] as $manufacturer) { ?>

        <?php if ($manufacturer['name'] != '' ) {?>
        <div class="manufacturer__list-item manufacturer__brand"><a href="<?php echo $manufacturer['href']; ?>">
          <div class="manufacturer__brand-img"><img src="<?php echo $manufacturer['img']; ?>" alt="<?php echo $manufacturer['name']; ?>" class=""></div>
          <span class="manufacturer__brand-name"><?php echo $manufacturer['name']; ?></span></a></div>
        <?php } ?>
        <?php } ?>

      <?php } ?>
      <?php } ?>
      </div>


      <?php if ( isset($pagination) ) { ?>
      <div class="pagination-wrap">
        <div class=""><?php echo $pagination; ?></div>
        <div class="form-group input-group input-group-sm limit-per-page">
          <!--label for="input-limit"><?php echo $text_limit; ?></label>
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select-->
        </div>
      </div>
      <?php } ?>

      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
    </div>

    <aside id="column-left" class="col-md-3 col-md-pull-9">
      <?php echo $column_left; ?>

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
    </aside>
  </div>

</div>



<?php if (false) { ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
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
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($categories) { ?>
      <p><strong><?php echo $text_index; ?></strong>
        <?php foreach ($categories as $category) { ?>
        &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
      </p>
      <?php foreach ($categories as $category) { ?>
      <h2 id="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></h2>
      <?php if ($category['manufacturer']) { ?>
      <?php foreach (array_chunk($category['manufacturer'], 4) as $manufacturers) { ?>
      <div class="row">
        <?php foreach ($manufacturers as $manufacturer) { ?>
        <div class="col-sm-3"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php } ?>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php } ?>


<?php echo $footer; ?>