<?php echo $header; ?>

<?php
$foundation_types = array(
  array(
    'title' => 'Ленточный фундамент',
    'img' => '/catalog/view/theme/default/img/foto/ft-1.jpg',
    'price1' => 'РАБОТА: от 1500 р/м.п.',
    'price2' => 'РАБОТА и МАТЕРИАЛ: от 3200 р/м.п.',
    'link' => 'http://fundament77.com/lentochnyy-fundament/'
  ),
  array(
    'title' => 'Фундаментная плита',
    'img' => '/catalog/view/theme/default/img/foto/ft-2.jpg',
    'price1' => 'Работа: от 1200 р/м2',
    'price2' => 'Работа и материал: от 3800р/м2',
    'link' => 'http://fundament77.com/lentochnyy-fundament/'
  ),
  array(
    'title' => 'Плита с нижним ростверком',
    'img' => '/catalog/view/theme/default/img/foto/ft-3.jpg',
    'price1' => 'Работа: от 1200 р/м2',
    'price2' => 'Работа и материал: от 3800р/м2',
    'link' => 'http://fundament77.com/lentochnyy-fundament/'
  ),
  array(
    'title' => 'Плита с верхним ростверком',
    'img' => '/catalog/view/theme/default/img/foto/ft-4.jpg',
    'price1' => 'Работа: от 1500 р/м.п.',
    'price2' => 'Работа и материал: от 3200 р/м.п.',
    'link' => 'http://fundament77.com/lentochnyy-fundament/'
  ),
  array(
    'title' => 'Монолитное перекрытие',
    'img' => '/catalog/view/theme/default/img/foto/ft-5.jpg',
    'price1' => 'Работа: от 1500 р/м.п.',
    'price2' => 'Работа и материал: от 3200 р/м.п.',
    'link' => 'http://fundament77.com/lentochnyy-fundament/'
  ),
  array(
    'title' => 'Утепленная шведская плита',
    'img' => '/catalog/view/theme/default/img/foto/ft-6.jpg',
    'price1' => 'Работа: от 1200 р/м2',
    'price2' => 'Работа и материал: от 3800р/м2',
    'link' => 'http://fundament77.com/lentochnyy-fundament/'
  ),
);


$popular_prices = array(
  array(
    'title' => 'Плита 10х12 для бани',
    'price' => '620 907 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для гаража',
    'price' => '526 668 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для бани',
    'price' => '620 907 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для гаража',
    'price' => '526 668 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для бани',
    'price' => '620 907 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для гаража',
    'price' => '526 668 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для бани',
    'price' => '620 907 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для гаража',
    'price' => '526 668 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для бани',
    'price' => '620 907 руб.',
    'link' => '#',
  ),
  array(
    'title' => 'Плита 10х12 для гаража',
    'price' => '526 668 руб.',
    'link' => '#',
  ),
);

?>


<section class="section section--bg-img section-fund-top">
  <div class="bg-img" style="background-image: url(/catalog/view/theme/default/img/bg/bg-fund-foto.jpg);"></div>
  <div class="container">
    <div class="section-fund-top__content fund-banner">
      <div class="fund-banner__row">
        <div class="fund-banner__col fund-banner__col--yellow">
          <h1 class="section-fund-top__title">Фундаменты под ключ</h1>
          <h2 class="section-fund-top__subtitle">По лучшим ценам в Москве!</h2>
          <p class="section-fund-top__desc">Без посредников, с гарантией 15 лет!</p>
        </div>
      </div>
      <div class="fund-banner__row">
        <div class="fund-banner__col fund-banner__col--small fund-banner__col--white">
          <div class="fund-banner__col-title1">Мы строим следующие<br>типы фундаментов:</div>
          <ul class="ul-list ul-list--square text-bold">
            <li>Ленточный фундамент</li>
            <li>Монолитный фундамент (Плита)</li>
            <li>УШП (УТтепленная шведская плита)</li>
            <li>Фундамент с цокольным этажем</li>
          </ul>
        </div>
        <div class="fund-banner__col fund-banner__col--gray">
          <div class="fund-banner__col-title2">При заказе фундамента — IP-камера в подарок!</div>
          <img class="flr fund-banner__img" src="/catalog/view/theme/default/img/foto/web-cam.png" alt="Веб камера">
          <ul class="ul-list ul-list--square ul-list--white">
            <li>Закажи фундамент до конца недели и получи в  подарок камеру видеонаблюдения!</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>



<section class="section section-foundation-types">
  <div class="container">
    <h3 class="section-title">Посмотрите цены на фундамент и выберите какой нужен вам</h3>
    <div class="ft-list">

      <?php foreach ($foundation_types as $ft) { ?>
        <div class="ft-list__item ft-item">
          <div class="ft-item__img"><img src="<?php echo $ft['img']; ?>" alt="<?php echo $ft['title']; ?>"></div>
          <div class="ft-item__title"><?php echo $ft['title']; ?></div>
          <div class="ft-item__price">
            <p><?php echo $ft['price1']; ?></p>
            <p><?php echo $ft['price2']; ?></p>
          </div>
          <div class="ft-item__btn"><a class="btn btn--hover-orange btn--bdrs0" href="<?php echo $ft['link']; ?>">Подробнее</a></div>
        </div>
      <?php } ?>

    </div>
  </div>
</section>




<section class="section section-economize-banner">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h3 class="section-economize-banner__title">Узнайте сколько Вы сможете сэкономить, если обратитесь к нам!</h3>
        <h3 class="section-economize-banner__subtitle">Расчет стоимости фундамента в день обращения!</h3>
        <p>Пришлите проект вашего строения и мы:</p>
        <ul>
          <li>1. Пришлем Вам стоимость всех работ и материалов!</li>
          <li>2. Зафиксируем стоимость до конца работ!</li>
          <li>3. Согласуем срок изготовления и график работ!</li>
        </ul>
      </div>
      <div class="col-md-6 hidden-sm hidden-xs">
        <img src="/catalog/view/theme/default/img/bg/bg-scheme.jpg" alt="img">
      </div>
    </div>
  </div>
</section>



<section class="section section-popular-prices">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h3 class="section-title">популярные сметы на фундаменты</h3>
      </div>
      <div class="col-md-10 col-md-offset-1">
        <div class="popular-prices-list">
    
          <?php foreach ($popular_prices as $pp) { ?>
            <div class="popular-prices-list__item pp-item">
              <div class="pp-item__img"><img src="/catalog/view/theme/default/img/foto/price-item.jpg" alt="<?php echo $pp['title'].$pp['price']; ?>"></div>
              <div class="pp-item__title"><?php echo $pp['title']; ?></div>
              <div class="pp-item__price"><?php echo $pp['price']; ?></div>
            </div>
          <?php } ?>

        </div>
      </div>
    </div>
  </div>
</section>







<section class="section section-text-2-col">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Фундаментные работы под ключ</div>
        <div class="content-style">
          <p>Хорошее решение заказывать кровельные работы под ключ. И дело тут не только в том, что это удобно для клиента — весь процесс он доверяет одному коллективу и получает уже готовую крышу. Услуга «под ключ» стоит дешевле.</p>
          <p>Компании выгодно получить весь заказ, и мы готовы делать скидки. Еще один плюс такого варианта – уменьшение сроков работ.</p>
          <p>Каждый сотрудник занимается своим делом: конструктор разрабатывает проект, водители подвозят материалы, кровельщики осуществляют монтаж, прораб контролирует каждый этап работ.</p>
          <p>Если вас интересует ремонт крыши, такую услугу тоже выполняет «Строй кровля» быстро и недорого.</p>
        </div>
      </div>
    </div>
  </div>
</section>





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

