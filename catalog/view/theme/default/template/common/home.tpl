<?php echo $header; ?>

<?php

$services = array(
  array(
    'title' => 'Кровля',
    'desc' => 'Идеальная кровля – мечта заказчика, а обещания выполнить работу качественно иногда остаются обещаниями. Только наши квалифицированные мастера полностью воплотят в жизнь требования клиента!',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-1.jpg',
    'href' => HTTP_SERVER.'krovlya'
  ),
  array(
    'title' => 'Проектирование и дизайн',
    'desc' => 'Создание проекта кровли – достаточно непростая задача, в решении которой потребуются академические знания и расчеты инженеров по возведению конструкции, создать требуемый дизайн помогут наши проектировщики.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-2.jpg',
    'href' => HTTP_SERVER.'krovlya/blog_roof_project'
  ),
  array(
    'title' => 'Строительство загородных домов',
    'desc' => 'Да, это мы тоже делаем. Качественно, быстро и за разумные деньги.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-3.jpg',
    'href' => HTTP_SERVER.'stroitelstvo-kamennyh-domov'
  ),
);


$works = array (
  0 => 
  array (
    'thumb' => HTTP_SERVER.'image/cache/catalog/projects/pr1/IMG_20181225_172347-228x228.jpg',
    'name' => 'Кровля дома и гаража',
    'href' => '/works?blog_product_id=24',
  ),
  1 => 
  array (
    'thumb' => HTTP_SERVER.'image/cache/catalog/projects/pr3/3/20180910_105104-228x228.jpg',
    'name' => 'Монтаж кровли из гибкой черепицы',
    'href' => '/works?blog_product_id=23',
  ),
  2 => 
  array (
    'thumb' => HTTP_SERVER.'image/cache/catalog/projects/pr2/20180727_143848-228x228.jpg',
    'name' => 'Монтаж кровли на деревянном доме',
    'href' => '/works?blog_product_id=25',
  ),
);

$reviews_slider = array(
  array(
    'title' => 'Татьяна Викторовна',
    'text' => 'На пенсии решили с мужем приобрести дом в деревне с участком под огород и сад. При покупке не обратили внимание на крышу, когда пошли дожди, крыша стала течь. Обратились в компанию «Руфер». Приехала бригада из трех человек, со старшим договорились об условиях, цена нас устроила. Через 2 дня ребята приехали, в течение 6 часов перекрыли крышу. Стало сухо и тепло. Спасибо администрации и специалистам фирмы!',
    'img' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-1.jpg',
    'client-foto' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-1-client-foto.jpg',
    'info' => array('Тип работ: Строительство кровли', 'Адрес объекта: МО, деревня Никольское', 'Площадь кровли: 250м2', 'Стоимость работ: 900 000 Р'),
  ),
  array(
    'title' => 'Афанасий Фролов',
    'text' => 'По заранее согласованному заказу приехали специалисты компании «Руфер». Быстро и дисциплинированно принялись за работу, без всяких затянувшихся перекуров. Бригадир несколько раз задал уточняющие вопросы, пригласил посмотреть работу. После окончания специалисты компании убрали оставшийся строительный мусор, я расписался в выполнении заказа, и работники уехали. Как на Западе! Спасибо Вам!',
    'img' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-2.jpg',
    'client-foto' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-2-client-foto.jpg',
    'info' => array('Тип работ: Строительство кровли', 'Адрес объекта: г.Москва, п/с Крекшино', 'Площадь кровли: 130м2', 'Стоимость работ: 500 000 Р'),
  ),
);


?>






<section class="section section--p0 section-home-top">
  <div id="home-top-slider" class="home-top-slider">

    <div class="home-top-slider__item">
      <div class="home-top-slider__content">
        <div class="section-home-top__bg-house"><div class="cont"></div></div>
        <div class="section-home-top__bg-clouds"></div>
        <div class="section-home-top__list-bg"></div>
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-home-top__content">
                <h1 class="site-title">Монтаж и строительство<br>скатной кровли под ключ<br>в Москве и МО</h1>
                <div class="section-home-top__desc">
                  <p>Выполняем работы на загородных<br>домах и коммерческой недвижимости</p>
                  <a href="#get-consultation" class="btn btn--orange btn--dib btn--bold mf-popup" data-effect="mfp-zoom-in">получить консультацию</a>
                </div>
                <div class="section-home-top__desc" style="margin-top: 10px;">
                  <a href="https://izzi.ru/INFHbBK" class="btn btn--green btn--dib btn--bold">Написать в WhatsApp</a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="section-home-top__list">
          <div class="container">
            <div class="row">
              <div class="col-lg-9 col-lg-offset-3 ">
                <ul class="ul-list">
                  <li>Работаем с 15 сертифицированными поставщиками</li>
                  <li>Специалисты по кровле и фасаду граждане РФ и РБ, с опытом от 5 лет</li>
                  <li>Работаем с объектами жилой и коммерческой недвижимости как в черте города так и за его пределами</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <?php if (false) { ?>
    <div class="home-top-slider__item home-top-slider__item--image">
      <div class="home-top-slider__content">
        <img src="/image/catalog/ban/2019.05.09.jpg" alt="9 мая" class="home-top-slider__image">
      </div>
    </div>
    <?php } ?>


  </div>
</section>

<section class="section section-take-test">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Выберите интересующие работы</div>
        <div class="section-subtitle text-gray">Пройдите тест за 2 минуты и узнайте стоимость работ</div>
        <div class="take-test-list">
          <a href="#popup:marquiz_5c7504e7f0e2b5004468b3ed" class="btn btn--take-test">
            <svg class="icon icon-take-test">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-works"></use>
            </svg>
            <span>кровельные работы</span>
          </a>
          <a href="#popup:marquiz_5c75026f280fbb004409731b" class="btn btn--take-test">
            <svg class="icon icon-take-test">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-binder"></use>
            </svg>
            <span>подшивка кровли</span>
          </a>
          <a href="#popup:marquiz_5c750542f0e2b5004468b3f7" class="btn btn--take-test">
            <svg class="icon icon-take-test">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#snow-guard"></use>
            </svg>
            <span>монтаж снегозадержателей</span>
          </a>
          <a href="#popup:marquiz_5c74ff41280fbb00440972d8" class="btn btn--take-test">
            <svg class="icon icon-take-test">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#gully"></use>
            </svg>
            <span>монтаж водостоков</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Marquiz script start -->
<script src="//script.marquiz.ru/v1.js" type="application/javascript"></script>
<!-- Кнопка кровельные работы -->
<script>
document.addEventListener("DOMContentLoaded", function() {
  Marquiz.init({ 
    id: '5c7504e7f0e2b5004468b3ed', 
    autoOpen: false, 
    autoOpenFreq: 'once', 
    openOnExit: false 
  });
});
</script>
<!-- Подшивка кровли -->
<script>
document.addEventListener("DOMContentLoaded", function() {
  Marquiz.init({ 
    id: '5c75026f280fbb004409731b', 
    autoOpen: false, 
    autoOpenFreq: 'once', 
    openOnExit: false 
  });
});
</script>
<!-- Монтаж снегозадержателей -->
<script>
document.addEventListener("DOMContentLoaded", function() {
  Marquiz.init({ 
    id: '5c750542f0e2b5004468b3f7', 
    autoOpen: false, 
    autoOpenFreq: 'once', 
    openOnExit: false 
  });
});
</script>
<!-- Монтаж водостоков -->
<script>
document.addEventListener("DOMContentLoaded", function() {
  Marquiz.init({ 
    id: '5c74ff41280fbb00440972d8', 
    autoOpen: false, 
    autoOpenFreq: 'once', 
    openOnExit: false 
  });
});
</script>



<section class="section section-services">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Услуги</div>
        <div class="section-subtitle">Наш профиль - это фундамент и кровля. Мы занимаемся проектированием,<br> дизайном, монтажем, обслуживанием и поставкой материала</div>
        <a href="#calc" class="btn btn--dib text-center">Точный онлайн расчёт за 20 секунд</a>
        <div class="services-list">

          <?php foreach ($services as $serv) { ?>
          
          
            <div class="services-list__item service-item">
              <?php if($serv['href'] != ''){ ?> <a href="<?php echo $serv['href']; ?>"> <?php } ?>
              <div class="service-item__img">
                <img src="<?php echo $serv['foto']; ?>" alt="<?php echo $serv['title']; ?>">
              </div>
              <div class="service-item__text">
                <div class="service-item__title"><?php echo $serv['title']; ?></div>
                <div class="service-item__desc"><?php echo $serv['desc']; ?></div>
              </div>
              <?php if($serv['href'] != ''){ ?> </a> <?php } ?>
            </div>
            
          <?php } ?>

        </div>
      </div>
    </div>
  </div>
</section>


<?php
$home_services_list = array(
  array(
    "title" => "Монтаж",
    "name" => "Металочерепицы",
    "image" => "/image/catalog/services/serv-1.jpg",
    "price" => "190",
    "ediz" => "р/м2",
    "popap-id" => "hsl-1",
    "popap-title" => "Металочерепица",
    "popap" => array(
      array(
        "title" => "Строительство крыши",
        "items" => array("Стропильная система", "Гидроизоляция", "Контробрешетка", "Шаговая обрешетка", "Кровля с доборными элементами"),
        "price" => "900",
        "ediz" => "р/м<sup>2</sup>",
      ), array(
        "title" => "Замена кровли",
        "items" => array("Стропильная система", "Гидроизоляция", "Контробрешетка", "Шаговая обрешетка", "Кровля с доборными элементами"),
        "price" => "600",
        "ediz" => "р/м<sup>2</sup>",
      ),
    ),
  ),
  array(
    "title" => "Монтаж",
    "name" => "Мягкой черепицы",
    "image" => "/image/catalog/services/serv-2.jpg",
    "price" => "220",
    "ediz" => "р/м2",
    "popap-id" => "hsl-2",
    "popap-title" => "Мягкая черепица",
    "popap" => array(
      array(
        "title" => "Строительство крыши",
        "items" => array("Стропильная система", "Гидроизоляция", "Контробрешетка", "Шаговая обрешетка", "OSB - плита", "Подкладочный ковер", "Кровля с доборными элементами"),
        "price" => "1200",
        "ediz" => "р/м<sup>2</sup>",
      ), array(
        "title" => "Замена кровли",
        "items" => array("Стропильная система", "Гидроизоляция", "Контробрешетка", "Шаговая обрешетка", "OSB - плита", "Подкладочный ковер", "Кровля с доборными элементами"),
        "price" => "900",
        "ediz" => "р/м<sup>2</sup>",
      ),
    ),
  ),
  array(
    "title" => "Монтаж",
    "name" => "Керамочерепицы",
    "image" => "/image/catalog/services/serv-3.jpg",
    "price" => "800",
    "ediz" => "р/м2",
    // "popap-id" => "hsl-3"
  ),
  array(
    "title" => "Монтаж",
    "name" => "Водосточной системы",
    "image" => "/image/catalog/services/serv-4.jpg",
    "price" => "300",
    "ediz" => "р/п.м",
    "popap-id" => "hsl-4",
    "popap-title" => "Керамическая черепица",
    "popap" => array(
      array(
        "title" => "Строительство крыши",
        "items" => array("Стропильная система", "Гидроизоляция", "Контробрешетка", "Шаговая обрешетка", "Кровля с доборными элементами"),
        "price" => "1850",
        "ediz" => "р/м<sup>2</sup>",
      ), array(
        "title" => "Замена кровли",
        "items" => array("Стропильная система", "Гидроизоляция", "Контробрешетка", "Шаговая обрешетка", "Кровля с доборными элементами"),
        "price" => "1500",
        "ediz" => "р/м<sup>2</sup>",
      ),
    ),
  ),
  array(
    "title" => "",
    "name" => "Утепление кровли",
    "image" => "/image/catalog/services/serv-5.jpg",
    "price" => "280",
    "ediz" => "р/м2",
    "popap-id" => "hsl-5",
    "popap-title" => "Утепление кровли",
    "popap" => array(
      array(
        "title" => "Утепление кровли",
        "items" => array("Черновой потолок", "Пароизоляция", "Утепление 150мм"),
        "price" => "300",
        "ediz" => "р/м<sup>2</sup>",
      ),
    ),
  ),
  array(
    "title" => "Монтаж",
    "name" => "Мансардных окон",
    "image" => "/image/catalog/services/serv-6.jpg",
    "price" => "5000",
    "ediz" => "шт",
    // "popap-id" => "hsl-6"
  ),
  array(
    "title" => "Замена и",
    "name" => "Ремонт крыши",
    "image" => "/image/catalog/services/serv-7.jpg",
    "price" => "1000",
    "ediz" => "р/м2",
    // "popap-id" => "hsl-7"
  ),
  array(
    "title" => "Подшив",
    "name" => "Карнизов крыши",
    "image" => "/image/catalog/services/serv-8.jpg",
    "price" => "200",
    "ediz" => "р/п.м",
    // "popap-id" => "hsl-8"
  ),
);
?>



<section class="section section-home-services">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h3 class="section-title">Наши цены</h3>
      </div>

      <div class="col-md-12">
        <div class="service-home-list">
        <?php foreach ($home_services_list as $service) { ?>
          <div class="service-home-item">
            <div class="service-home-item__image-wrap img--cover">
              <img src="<?php echo $service['image']; ?>" alt="<?php echo $service['title'].' '.$service['name']; ?>" class="service-home-item__image">
            </div>
            <div class="service-home-item__header">
              <div class="service-home-item__title"><?php echo $service['title']; ?></div>
              <div class="service-home-item__name"><?php echo $service['name']; ?></div>
            </div>
            <div class="service-home-item__footer">
              <div class="service-home-item__price">От <span><?php echo $service['price']; ?></span> <?php echo $service['ediz']; ?></div>
              <?php if ( isset($service['popap-id']) && $service['popap-id'] != '' ) { ?>
                <a href="#<?php echo $service['popap-id']; ?>" class="service-home-item__link-more mf-popup" data-effect="mfp-zoom-in">Подробнее</a>
              <?php } ?>
            </div>

            <?php if ( isset($service['popap-id']) && $service['popap-id'] != '' ) { ?>
              <div class="service-home-item__popap service-home-item-popap">
                <div id="<?php echo $service['popap-id']; ?>" class="mf-popup-block mf-home-services mfp-hide mfp-with-anim">

                  <?php if ( isset($service['popap-title']) && $service['popap-title'] != '' ) { ?>
                    <h3 class="mf-title"><?php echo $service['popap-title']; ?></h3>
                  <?php } ?>

                  <?php if ( isset($service['popap']) && count($service['popap']) > 0 ) { ?>
                  <div class="service-home-item-popap__list">
                    <?php foreach ($service['popap'] as $value) { ?>
                      <div class="service-home-item-popap__item">
                        <div class="service-home-item-popap__title"><?php echo $value['title']; ?></div>

                        <?php if ( isset($value['items']) && count($value['items'])>0 ) { ?>
                        <ul class="service-home-item-popap__items">
                          <?php foreach ($value['items'] as $v) { ?>
                            <li><?php echo $v; ?></li>
                          <?php } ?>
                        </ul>
                        <?php } ?>

                        <div class="service-home-item-popap__price">
                          <svg class="icon service-home-item-popap__price-icon">
                            <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#coins"></use>
                          </svg>
                          Стоимость: <?php echo $value['price']; ?><span><?php echo $value['ediz']; ?></span>
                        </div>
                      </div>
                    <?php } ?>
                  </div>
                  <?php } ?>

                </div>
              </div>
            <?php } ?>

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
        <div class="section-title">Кровельные работы под ключ</div>
        <div class="content-style">
          <p>Заказать весь объем работ по кровле от разработки концепции до окончательного монтажа в одной компании – оптимальное решение для заказчика. Это не только значительно облегчит функции контроля над порядком, качеством и сроками выполнения работ, но и снизит сметную затратность проекта. Ведь с одним исполнителем легче вести предметный разговор.</p>
          <p><br></p>
          <p>Заинтересованы в большем объеме работ и компании, ведь при этом задействуются весь штат специалистов, что может повлечь за собой скидки при определении полной стоимости контракта. Но главное – при этом облегчается функция контроля за качеством произведенных работ.</p>
          <p>Компания «Руфер» готова предоставить такие условия своим заказчикам!</p>
        </div>
      </div>
    </div>
  </div>
</section>

<?php if (false) { ?>
<section class="section section-home-actions">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-home-actions__content">
          <h3 class="section-title section-home-actions__title">Акция</h3>
          <img src="/image/catalog/ban/2019.05.09.jpg" alt="9 мая">
        </div>
      </div>
    </div>
  </div>
</section>
<?php } ?>


<section class="section section-calc">
  <div class="container">
    <div class="row">
        <?php echo $calculator; ?>
    </div>
  </div>
</section>


<section class="section section-our-team">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Наша команда</div>
        <div class="section-subtitle text-gray">Опытные специалисты, прорабы с опытом от 9 лет.<br> Наши менеджерды проконсультирую вас по выбору услуги.</div>

        <div class="team-list">

          <?php foreach ($commandos as $key => $value) { ?>
            <div class="team-list__item team-member">
              <div class="team-member__foto">
                <img src="<?php echo $value['thumb']?>" alt="<?php echo $value['name'].' '.$value['description']; ?>">
              </div>
              <div class="team-member__name"><?php echo $value['name']?></div>
              <div class="team-member__position"><?php echo $value['description']?></div>
            </div>
          <?php } ?>
        </div>

        <div class="btn-wrap text-center">
          <a href="<?php echo $commandos_href; ?>" class="btn btn--dib btn--orange">Подробнее о нашей команде</a>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-our-work">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Наши работы</div>

        <div class="work-list">

          <?php foreach ($works as $work) { ?>
            <div class="work-list__item work-item">
              <div class="work-item__img img--cover">
                <img src="<?php echo $work['thumb']; ?>" alt="<?php echo $work['name']; ?>">
              </div>
              <div class="work-item__title"><a href="<?php echo $work['href']; ?>"><?php echo $work['name']; ?></a></div>
            </div>
          <?php } ?>

        </div>

        <div class="btn-wrap text-center">
          <a href="<?php echo $map_info_href; ?>" class="btn btn--dib btn--black">посмотреть все наши работы</a>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-our-advantages">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Преимущества работы с нами</div>
        <div class="section-subtitle">Строим кровлю более 7 лет, за этот период произвели монтаж более 1 млн. кв. метров покрытия. Нам хорошо известны тонкости монтажных работ, досконально изучены особенности всех видов кровельных материалов, их достоинства и недостатки.</div>

        <div class="advantages-list">
          <div class="advantages-list__item advantage-item">
            <div class="advantage-item__icon-wrap">
              <svg class="icon advantage-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#legal-guarantee"></use>
              </svg>
            </div>
            <div class="advantage-item__title">Правовое сопровождение контрактов</div>
            <div class="advantage-item__text">Для проведения всего комплекса работ составляется договор, где оговорены сроки, стоимость и качество проведимых монтажных работ. По окончанию заказчику предоставляется сертификат соответствия по выполненным работам.</div>
          </div>
          <div class="advantages-list__item advantage-item">
            <div class="advantage-item__icon-wrap">
              <svg class="icon advantage-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#supplier"></use>
              </svg>
            </div>
            <div class="advantage-item__title">Наши контрагенты</div>
            <div class="advantage-item__text">При приобретении стройматериалов у наших поставщиков заказчик получает демпинговую скидку от 20 до 23 процентов стоимости приобретаемого материала.</div>
          </div>
          <div class="advantages-list__item advantage-item">
            <div class="advantage-item__icon-wrap">
              <svg class="icon advantage-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#expert"></use>
              </svg>
            </div>
            <div class="advantage-item__title">Специалисты с опытом от 5 лет</div>
            <div class="advantage-item__text">В бригаду на объект назначаются опытные специалисты, имеющие свыше 5 лет стажа работы с кровлей, прошедшие учебные сборы и инструктаж. Бригадир- опытный монтажник, имеющий за плечами не менее 10 лет производственного опыта по монтажу кровли.</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="section section--p0 section-our-map">
  <div class="section-title">География работ Москва и Московская область</div>
  <div id="map_wrapper" class="map">
    <script src="https://api-maps.yandex.ru/2.1/?apikey=a6a2b87d-952f-4e7b-871c-95370511aff0&lang=ru_RU" type="text/javascript"></script>
    <div id="map_y" style="width: 100%; height: 400px"></div>
  </div>
</section>

<!--section class="section section--p0 section-our-map">
  <div id="map" class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2251.8891984676925!2d37.639178315644166!3d55.63874168052294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x414ab306f0d13c69%3A0x596d52dd0829983e!2z0JrQsNC90YLQtdC80LjRgNC-0LLRgdC60LDRjyDRg9C7LiwgNzEsINCc0L7RgdC60LLQsCwg0KDQvtGB0ZbRjywgMTE1NDc3!5e0!3m2!1suk!2sua!4v1535544776690" frameborder="0" style="border:0" allowfullscreen></iframe>
    <div class="map__info map-info">
      <div class="map-info__title">1 500 000 м<sup>2</sup></div>
      <div class="map-info__subtitle">Кровли смонтированно нашими специалистами за время существования компании.</div>
      <div class="map-info__list-item map-info-list-item">
        <div class="map-info-list-item__text">
          <div class="map-info-list-item__title">Сэкономили</div>
          <div class="map-info-list-item__desc">клиентам на материалах</div>
        </div>
        <div class="map-info-list-item__number">11 млн.</div>
      </div>
      <div class="map-info__list-item map-info-list-item">
        <div class="map-info-list-item__text">
          <div class="map-info-list-item__title">Выполнили</div>
          <div class="map-info-list-item__desc">заказов в 5 городах</div>
        </div>
        <div class="map-info-list-item__number">1589</div>
      </div>
      <div class="map-info__list-item map-info-list-item">
        <div class="map-info-list-item__text">
          <div class="map-info-list-item__title">Работников компании</div>
        </div>
        <div class="map-info-list-item__number">80+</div>
        <div class="map-info-list-item__desc"></div>
      </div>
      <div class="btn-wrap text-center">
        <a href="<?php echo $map_info_href; ?>" class="btn btn--dib btn--black">посмотреть все наши работы</a>
      </div>
  </div>
</section-->
<script type="text/javascript">
    // Функция ymaps.ready() будет вызвана, когда
    // загрузятся все компоненты API, а также когда будет готово DOM-дерево.
    ymaps.ready(init);
  function init() {
      var myMap = new ymaps.Map("map_y", {
              center: [55.76, 37.64],
              zoom: 8
          }, {
              searchControlProvider: 'yandex#search'
          });
  
      myMap.geoObjects
        <?php foreach($map_info as $map){ ?>
          .add(new ymaps.Placemark([<?php echo $map['location']; ?>], {
              balloonContent: '<a target="_blank" href="<?php echo $map['href']; ?>" class="infoblock-entry"><span class="object-service"><?php echo $map['name']; ?></span><span class="object-link"><img src="<?php echo $map['image']; ?>" alt="<?php echo $map['name']; ?>"></span><span class="object-features"><span class="feature-row"><i>Год:</i> <?php echo $map['sku']; ?></span><span class="feature-row"><i>Стоимость:</i> <?php echo $map['price']; ?></span><span class="feature-row"><i>Срок монтажа:</i> <?php echo $map['srok']; ?></span><span class="feature-row"><i>Площадь:</i> <?php echo $map['ploshad']; ?><sup>2</sup></span></span></a>'
          }, {
              preset: 'islands#greenDotIconWithCaption',
              iconColor: '#960000'
          }))
        <?php } ?>
          ;
  }

</script>


<?php
$rev_audio = array(
  array(
    'title' => '«Отзыв»',
    'author' => 'Евгений',
    'iframe' => '<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/621967221&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>'
  ),
  array(
    'title' => '«Отзыв»',
    'author' => 'Евгения',
    'iframe' => '<iframe width="100%" height="166" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/621967224&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"></iframe>'
  ),
);
?>



<section class="section section-reviews-audio">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Что о нас говорят наши клиенты</div>
        <div class="section-subtitle text-gray">Более 350 пложительных отзывов, вот некоторые из них</div>

        <div class="section-reviews-audio__list">
        <?php foreach ($rev_audio as $ra) { ?>
          <div class="section-reviews-audio__item">
            <div class="section-reviews-audio__title"><?php echo $ra['title'] ?> <span>— <?php echo $ra['author'] ?></span></div>
            <div class="section-reviews-audio__iframe-wrap"><?php echo $ra['iframe'] ?></div>
          </div>
        <?php } ?>
        </div>

        <hr class="hr--black">
      </div>
    </div>
  </div>
</section>

<?php if (false) { ?>
<section class="section section-reviews">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Отзывы</div>
        <div class="section-subtitle text-gray">Более 350 пложительных отзывов, вот некоторые из них</div>

        <div class="reviews-slider js-reviews-slider">
          <?php foreach ($reviews_slider as $slide) { ?>
            <div class="reviews-slider__item reviews-slide">
              <div class="reviews-slide__row">
                <div class="reviews-slide__img">
                  <img src="<?php echo $slide['img']; ?>" alt="<?php echo $slide['title']; ?>">
                </div>
                <div class="reviews-slide__review">
                  <div class="reviews-slide__title"><?php echo $slide['title']; ?></div>
                  <div class="reviews-slide__text"><?php echo $slide['text']; ?></div>
                </div>
                <div class="reviews-slide__client-foto">
                  <img src="<?php echo $slide['client-foto']; ?>" alt="<?php echo $slide['title']; ?>">
                </div>
              </div>
              <div class="reviews-slide__info-list">
                <?php for ($i=0; $i < count($slide['info']); $i++) { ?>
                  <div><?php echo $slide['info'][$i]; ?></div>
                  <?php if ( $i != count($slide['info'])-1 ) { ?>
                    <div class="delimiter">|</div>
                  <?php } ?>
                <?php } ?>
              </div>
            </div>
          <?php } ?>
        </div>

        <hr class="hr--black">
      </div>
    </div>
  </div>
</section>
<?php } ?>



<div class="container">
  <div class=""><?php echo $column_left; ?>
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
