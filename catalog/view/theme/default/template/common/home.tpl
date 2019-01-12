<?php echo $header; ?>

<?php

$services = array(
  array(
    'title' => 'Кровля',
    'desc' => 'Заказчик часто сталкивается с неквалифицированными мастерами, лишь на словах обещающими качественный монтаж.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-1.jpg',
  ),
  array(
    'title' => 'Проектирование и дизайн',
    'desc' => 'Проектирование — сложная работа, требующяя обширных знаний в области строительства крыши и учета множества важных факторов.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-2.jpg',
  ),
  array(
    'title' => 'Строительство загородных домов',
    'desc' => 'Да, это мы тоже делаем. Качественно, быстро и за разумные деньги.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-3.jpg',
  ),
);

$team = array(
  array(
    'foto' => 'catalog/view/theme/default/img/tmpimg/team-1.jpg',
    'name' => 'Алексей Иванов',
    'position' => 'Технический директор'
  ),
  array(
    'foto' => 'catalog/view/theme/default/img/tmpimg/team-2.jpg',
    'name' => 'Максимилиан Пак',
    'position' => 'Прораб'
  ),
  array(
    'foto' => 'catalog/view/theme/default/img/tmpimg/team-3.jpg',
    'name' => 'Александра Попович',
    'position' => 'Cпециалист отдела сбыта'
  ),
  array(
    'foto' => 'catalog/view/theme/default/img/tmpimg/team-4.jpg',
    'name' => 'Иннокентий Гаврилов',
    'position' => 'Начальник службы доставки'
  ),
);

$works = array(
  array(
    'img' => 'catalog/view/theme/default/img/tmpimg/work-1.jpg',
    'title' => 'Строительство сложной кровли.<br>Фальц и чешуя.',
  ),
  array(
    'img' => 'catalog/view/theme/default/img/tmpimg/work-2.jpg',
    'title' => 'Реконструкция крыши.<br>Монтаж пфальцевой кровли',
  ),
  array(
    'img' => 'catalog/view/theme/default/img/tmpimg/work-3.jpg',
    'title' => 'Замена глиняной черепицы на мягкую черепицу',
  ),
);

$reviews_slider = array(
  array(
    'title' => 'Пётр Мамонов',
    'text' => 'Работа выполнялась своевременно и качественно. О бригаде у нас очень хорошие отзывы.Ребята добросовестные и старательные, мастера своего дела. Нам работа по заданному проекту понравилась. Впечатления только положительные.',
    'img' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-1.jpg',
    'client-foto' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-1-client-foto.jpg',
    'info' => array('Тип работ: Строительство кровли', 'Адрес объекта: МО, пос. Глухово', 'Площадь кровли: 250м2', 'Стоимость работ: 250 000 Р'),
  ),
  array(
    'title' => 'Пётр Мамонов 2',
    'text' => '2Работа выполнялась своевременно и качественно. О бригаде у нас очень хорошие отзывы.Ребята добросовестные и старательные, мастера своего дела. Нам работа по заданному проекту понравилась. Впечатления только положительные.',
    'img' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-2.jpg',
    'client-foto' => 'catalog/view/theme/default/img/tmpimg/reviews-slider-2-client-foto.jpg',
    'info' => array('Тип работ: 2Строительство кровли', 'Адрес объекта: МО, пос. Глухово', 'Площадь кровли: 250м2', 'Стоимость работ: 250 000 Р'),
  ),
);


?>






<section class="section section--p0 section-home-top">
  <div class="section-home-top__bg-house"><div class="cont"></div></div>
  <div class="section-home-top__bg-clouds"></div>
  <div class="section-home-top__list-bg"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-home-top__content">
          <h1 class="site-title">Монтаж и строительство<br>скатной кровли под ключ.<br>Возведение мансард.</h1>
          <div class="section-home-top__desc">
            <p>Выполняем работы на загородных<br>домах и коммерческой недвижимости</p>
            <a href="#get-consultation" class="btn btn--orange btn--dib btn--bold mf-popup" data-effect="mfp-zoom-in">получить консультацию</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section-home-top__list">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-lg-offset-3 ">
          <ul>
            <li>Работаем с 15 сертифицированными поставщиками</li>
            <li>Специалисты по кровле и фасаду граждане РФ и РБ, с опытом от 5 лет</li>
            <li>Собственная школа монтажников. современные специалисты и технологии</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="section section-take-test">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Выберите интересующие работы</div>
        <div class="section-subtitle text-gray">Пройдите тест за 2 минуты и узнайте стоимость работ</div>
        <div class="take-test-list">
          <a href="#" class="btn btn--take-test">
            <svg class="icon icon-take-test">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-works"></use>
            </svg>
            <span>кровельные работы</span>
          </a>
          <a href="#" class="btn btn--take-test">
            <svg class="icon icon-take-test">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-binder"></use>
            </svg>
            <span>подшивка кровли</span>
          </a>
          <a href="#" class="btn btn--take-test">
            <svg class="icon icon-take-test">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#snow-guard"></use>
            </svg>
            <span>монтаж снегозадержателей</span>
          </a>
          <a href="#" class="btn btn--take-test">
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



<section class="section section-services">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Услуги</div>
        <div class="section-subtitle">Наш профиль - это Фасады и Кровля. Мы занимаемся проектированием,<br> дизайном, монтажем, обслуживанием и поставкой материала</div>
        <a href="#calc" class="btn btn--dib text-center">Точный онлайн расчёт за 20 секунд</a>
        <div class="services-list">

          <?php foreach ($services as $serv) { ?>
            <div class="services-list__item service-item">
              <div class="service-item__img">
                <img src="<?php echo $serv['foto']; ?>" alt="<?php echo $serv['title']; ?>">
              </div>
              <div class="service-item__text">
                <div class="service-item__title"><?php echo $serv['title']; ?></div>
                <div class="service-item__desc"><?php echo $serv['desc']; ?></div>
              </div>
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
          <p>Хорошее решение заказывать кровельные работы под ключ. И дело тут не только в том, что это удобно для клиента — весь процесс он доверяет одному коллективу и получает уже готовую крышу. Услуга «под ключ» стоит дешевле.</p>
          <p>Компании выгодно получить весь заказ, и мы готовы делать скидки. Еще один плюс такого варианта – уменьшение сроков работ.</p>
          <p>Каждый сотрудник занимается своим делом: конструктор разрабатывает проект, водители подвозят материалы, кровельщики осуществляют монтаж, прораб контролирует каждый этап работ.</p>
          <p>Если вас интересует ремонт крыши, такую услугу тоже выполняет «Строй кровля» быстро и недорого.</p>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-calc">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Онлайн калькулятор</div>
        <div class="section-subtitle text-gray">За несколько минут узнаете стоимость работ и получите<br>индвидуальный расчет вашего объекта</div>

        <div id="calc" class="calc">
          <div class="tabs">
            <ul class="tabs__links">
              <li class="tab__link is-active" data-tab="tab-1">
                <svg class="icon icon-calc-tab">
                  <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-works"></use>
                </svg>
                <span>Калькулятор кровли</span>
              </li>
              <li class="tab__link" data-tab="tab-2">
                <svg class="icon icon-calc-tab">
                  <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#gully"></use>
                </svg>
                <span>Водосточные системы</span>
              </li>
              <li class="tab__link" data-tab="tab-3">
                <svg class="icon icon-calc-tab">
                  <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#roof-binder"></use>
                </svg>
                <span>Калькулятор софитов</span>
              </li>
            </ul>
              
            <div id="tab-1" class="tab__content is-active">
              <div class="row">
                <div class="col-md-10 col-md-offset-1">
                  <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

                  <p>tab 1</p>
                </div>
              </div>
            </div>
            <div id="tab-2" class="tab__content">
              <div class="row">
                <div class="col-md-10 col-md-offset-1">
                  <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

                  <p>tab 2</p>
                </div>
              </div>
            </div>
            <div id="tab-3" class="tab__content">
              <div class="row">
                <div class="col-md-10 col-md-offset-1">
                  <div class="calc__title"><b>шаг №1</b> параметры объекта</div>

                  <p>tab 3</p>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-our-team">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Наша команда</div>
        <div class="section-subtitle text-gray">Опытные специалисты, прорабы с опытом от 9 лет, молодые стажеры.<br> Наши менеджерды проконсультирую вас по выбору услуги.</div>

        <div class="team-list">

          <?php foreach ($team as $key => $value) { ?>
            <div class="team-list__item team-member">
              <div class="team-member__foto">
                <img src="<?php echo $value['foto']?>" alt="<?php echo $value['name'].' '.$value['position']; ?>">
              </div>
              <div class="team-member__name"><?php echo $value['name']?></div>
              <div class="team-member__position"><?php echo $value['position']?></div>
            </div>
          <?php } ?>
        </div>

        <div class="btn-wrap text-center">
          <a href="#" class="btn btn--dib btn--orange">Подробнее о нашей команде</a>
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
              <div class="work-item__img">
                <img src="<?php echo $work['img']; ?>" alt="<?php echo $work['title']; ?>">
              </div>
              <div class="work-item__title"><?php echo $work['title']; ?></div>
            </div>
          <?php } ?>

        </div>

        <div class="btn-wrap text-center">
          <a href="#" class="btn btn--dib btn--black">посмотреть все наши работы</a>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-our-advantages">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Наши Преимущества</div>
        <div class="section-subtitle">Строим кровлю 10 лет, за это время смонтировали 1 200 000 км2 кровли,<br> знаем тонкости строительства и качество материалов</div>

        <div class="advantages-list">
          <div class="advantages-list__item advantage-item">
            <div class="advantage-item__icon-wrap">
              <svg class="icon advantage-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#legal-guarantee"></use>
              </svg>
            </div>
            <div class="advantage-item__title">Юридическая гарантия сроков</div>
            <div class="advantage-item__text">Мы даем юридическую гарантию соблюдение сроков и качество монтажа, по окончанию работ вы получаете официальный сертификат.</div>
          </div>
          <div class="advantages-list__item advantage-item">
            <div class="advantage-item__icon-wrap">
              <svg class="icon advantage-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#supplier"></use>
              </svg>
            </div>
            <div class="advantage-item__title">15 партнеров поставщиков материалов</div>
            <div class="advantage-item__text">За счет наших партнеров мы помогаем экономить клиентам до 23% на покупку строительных материалов</div>
          </div>
          <div class="advantages-list__item advantage-item">
            <div class="advantage-item__icon-wrap">
              <svg class="icon advantage-item__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#expert"></use>
              </svg>
            </div>
            <div class="advantage-item__title">Специалисты с опытом работы от 5 лет</div>
            <div class="advantage-item__text">Контроль за выполнением работы бригады ведет прораб со стажем минимум 10 лет. Перед этим, каждый работники проходят 3-х месячную школу монтажников внутри компании, и проходят аттестацию по 178 пунктам.</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section--p0 section-our-map">
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
        <a href="#" class="btn btn--dib btn--black">посмотреть все наши работы</a>
      </div>
  </div>
</section>


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