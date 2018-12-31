<?php echo $header; ?>
<div class="section section--p0 section-home-top">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-home-top__content">
          <h1 class="site-title">Монтаж и строительство<br>скатной кровли под ключ.<br>Возведение мансард.</h1>
          <div class="section-home-top__desc">
            <p>Выполняем работы на загородных<br>домах и коммерческой недвижимости</p>
            <a href="#" class="btn btn--orange btn--dib btn--bold">получить консультацию</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section-home-top__list">
    <div class="section-home-top__list-bg"></div>
    <div class="container">
      <div class="row">
        <div class="col-md-9 col-md-offset-3">
          <ul>
            <li>Работаем с 15 сертифицированными поставщиками</li>
            <li>Специалисты по кровле и фасаду граждане РФ и РБ, с опытом от 5 лет</li>
            <li>Собственная школа монтажников. современные специалисты и технологии</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>



<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>