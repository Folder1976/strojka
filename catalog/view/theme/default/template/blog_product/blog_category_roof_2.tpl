<?php echo $header; ?>

<?php

$services = array(
  array(
    'title' => 'Кровля',
    'desc' => 'Заказчик часто сталкивается с неквалифицированными мастерами, лишь на словах обещающими качественный монтаж.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-1.jpg',
    'href' => HTTP_SERVER.'krovlya'
  ),
  array(
    'title' => 'Проектирование и дизайн',
    'desc' => 'Проектирование — сложная работа, требующяя обширных знаний в области строительства крыши и учета множества важных факторов.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-2.jpg',
    'href' => HTTP_SERVER.'krovlya/blog_roof_project'
  ),
  array(
    'title' => 'Строительство загородных домов',
    'desc' => 'Да, это мы тоже делаем. Качественно, быстро и за разумные деньги.',
    'foto' => 'catalog/view/theme/default/img/tmpimg/serv-3.jpg',
    'href' => ''
  ),
);


$works = array (
  0 => 
  array (
    'thumb' => 'http://cn08183.tmweb.ru/image/cache/catalog/projects/pr1/IMG_20181225_172347-228x228.jpg',
    'name' => 'Кровля дома и гаража',
    'href' => '/works?blog_product_id=24',
  ),
  1 => 
  array (
    'thumb' => 'http://cn08183.tmweb.ru/image/cache/catalog/projects/pr3/3/20180910_105104-228x228.jpg',
    'name' => 'Монтаж кровли из гибкой черепицы',
    'href' => '/works?blog_product_id=23',
  ),
  2 => 
  array (
    'thumb' => 'http://cn08183.tmweb.ru/image/cache/catalog/projects/pr2/20180727_143848-228x228.jpg',
    'name' => 'Монтаж кровли на деревянном доме',
    'href' => '/works?blog_product_id=25',
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

$reasons_to_order = array(
  array( 'img' => '/catalog/view/theme/default/img/foto/reasons-to-order-1.jpg', 'text' => 'Наши специалисты аккуратно подходят к выполнению технических заданий. Их деятельность на объекте – это гармонично законченная работа, отвечающая критериям красоты и надежности!'),
  array( 'img' => '/catalog/view/theme/default/img/foto/reasons-to-order-2.jpg', 'text' => 'Сформированные бригады строителей отличаются слаженностью, взаимодействием и длительным опытом совместной работы'),
  array( 'img' => '/catalog/view/theme/default/img/foto/reasons-to-order-3.jpg', 'text' => 'Тщательный и надежный кадровый отбор специалистов, в штате компании только граждане РФ'),
  array( 'img' => '/catalog/view/theme/default/img/foto/reasons-to-order-4.jpg', 'text' => 'Монтажники обеспечены всем необходимым инструментарием'),
  array( 'img' => '/catalog/view/theme/default/img/foto/reasons-to-order-5.jpg', 'text' => 'В нашем коллективе – только мастера своего дела с обширным практическим стажем не менее 8 лет'),
);


?>




<section class="section section--p0 section-home-top section-home-top--roof">
  <div class="section-home-top__bg-house"><div class="cont"></div></div>
  <div class="section-home-top__bg-clouds"></div>
  <div class="section-home-top__list-bg"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-11 col-md-offset-1">
        <div class="section-home-top__content">
          <h1 class="site-title">Скатная кровля</h1>
          <div class="section-home-top__desc">
            <p>Занимаемся монтажом кровельных конструкций с 2012 года с реальной калькуляцией на стройматериалы и проводимые монтажно – восстановительные мероприятия. Оформляем правовую гарантию сохранности цены и временных сроков окончания работ!</p>
            <br>
            <a href="/krovlya/skatnaya-krovlya#online-calc" class="btn btn--orange btn--dib btn--w100">сделайте расчёт за 50 секунд</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section-home-top__list section-home-top__list--inline">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-4 col-sm-10 col-sm-offset-2">
          <ul class="ul-list ul-list--white">
            <li>Без звонков в офис</li>
            <li>Без выездов на замер</li>
            <li>Онлайн расчёт с точностью 92%</li>
            <li>Онлайн трансляция работ</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-roof-take-test">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <div class="section-subtitle">Пройдите тест за 2 минуты и узнайте стоимость кровли<br>под ключ и сроки реализации</div>
        <a href="#popup:marquiz_5c7504e7f0e2b5004468b3ed" class="btn btn--dib">пройти тест</a>
      </div>
    </div>
  </div>
</section>


<!-- Marquiz script start -->
<script src="//script.marquiz.ru/v1.js" type="application/javascript"></script>
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
<!-- Marquiz script end -->


<section class="section section-reasons-to-order">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <div class="section-title">Почему клиенты предпочитают работать с нами?</div>
        <div class="reasons-to-order__top">
          <div class="item-left">
            <div class="reasons-to-order__text text">Поставка стройматериалов в режиме постоплаты. Изначально происходит доставка материалов для работы, а затем производится финальный расчет за поставку.</div>
            <div class="reasons-to-order__text text">Приобретение материалов осуществляется у производителей или их региональных представителей. У нас – льготный режим торговли с контрагентами ввиду длительных контрактов и скидок за долговременное сотрудничество.</div>
            <div class="reasons-to-order__text text">Не создаем неудобств заказчику своим присутствием на объекте вне рабочего времени. Обладаем собственной материальной базой для организации выездного проживания бригады монтажников.</div>
          </div>
          <div class="item-center">
            <div class="img">
              <img src="/catalog/view/theme/default/img/foto/reasons-to-order__foto.jpg" alt="foto" class="img--cover">
            </div>
          </div>
          <div class="item-right">
            <div class="reasons-to-order__text text">Мониторинг работы бригады с предоставлением отчета по технадзору раз в 3 -4 дня.</div>
            <div class="reasons-to-order__text text">Точное соблюдение технологической карты монтажных работ. Все работы по сборке производятся с соблюдением ГОСТов и СНиПов. При работе с участками усложненного доступа проводится фотофиксация проводимых мероприятий.</div>
            <div class="reasons-to-order__text text">Заказчик вправе инспектировать объект, проверяя качество и сроки выполнения работ.</div>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12 text-center">
        <div class="section-subtitle">Мы даем гарантию 5 лет на проведение качественных монтажных работ!</div>

        <div class="reasons-to-order__bottom">

          <?php foreach ($reasons_to_order as $item) { ?>
            <div class="item">
              <div class="item__img">
                <img src="<?php echo $item['img']; ?>" alt="" class="img--cover">
              </div>
              <div class="reasons-to-order__text text"><?php echo $item['text']; ?></div>
            </div>
          <?php } ?>

        </div>
      </div>
    </div>
  </div>
</section>



<section class="section section-smeta section--gradient">
  <div class="container">
    <div class="row">
      <div class="col-md-7 col-sm-7">
        <h2 class="section-title">Работаем с клиентом на прозрачных условиях: каждый день просрочки – возврат денежных средств. Утвержденная смета – неизменна при любых обстоятельствах.</h2>
      </div>
      <div class="col-md-2 hidden-sm hidden-xs">
        <img class="smeta-preview__img" src="/catalog/view/theme/default/img/foto/smeta-preview.png">
      </div>
      <div class="col-md-3 col-sm-4 col-xs-11 col-md-offset-0 col-sm-offset-1 col-xs-offset-1">
        <div class="smeta__preview smeta-preview">
          <a class="smeta-preview__link" href="#" target="_blank">
            <svg class="icon icon-search smeta-preview__icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#search"></use>
            </svg><span>Посмотреть<br>пример расчета цен</span></a>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="smeta-list">

          <div class="smeta-list__item smet">
            <div class="smet__img">
              <svg class="icon smet__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#clock"></use>
              </svg>
            </div>
            <div class="smet__title">Онлайн-калькулятор для проведения расчетов!</div>
            <div class="smet__desc">Здесь заказчик может произвести расчет сметной стоимости работ. Массив информации представлен на основе предыдущих расчетов заказов компании. Погрешность – не более 0.1.</div>
          </div>

          <div class="smeta-list__item smet">
            <div class="smet__img">
              <svg class="icon smet__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#list"></use>
              </svg>
              <a class="smet__download-link" href="#" target="_blank">Скачать пример сметы</a>
            </div>
            <div class="smet__title">Реализуем мечты клиентов!</div>
            <div class="smet__desc">Итоги расчетов порадуют самых взыскательных заказчиков! Подробное техническое задание и сбалансированная смета значительно снижают риск погрешности!</div>
          </div>

          <div class="smeta-list__item smet">
            <div class="smet__img">
              <svg class="icon smet__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#check-list"></use>
              </svg>
              <a class="smet__download-link" href="#" target="_blank">Скачать пример чек-листа</a>
            </div>
            <div class="smet__title">Полное сходство с проектной документацией!</div>
            <div class="smet__desc">Проведение анализа окончательного чек-листа на соответствие перед стартом работы!</div>
          </div>

          <div class="smeta-list__item smet">
            <div class="smet__img"><svg class="icon smet__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#economy"></use>
              </svg>
            </div>
            <div class="smet__title">Обеспечиваем заказчика оптовыми ценами при закупке материалов у наших поставщиков!</div>
            <div class="smet__desc">Снижаем на треть стоимость заказа клиента на стройматериалы за счет программ взаимодействия с поставщиками - контрагентами!</div>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-materials section--pb0">
  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="section-title">подберем лучшие материалы</div>
        <div class="section-subtitle text-gray">более 25-и поставщиков сертифицированных материалов</div>
        <br>
        
        <div class="materials-list">
          <div class="materials-list__item material">
            <div class="material__img img--cover"><img src="/catalog/view/theme/default/img/foto/roof-mat1.png"></div>
            <div class="material__name">Металлочерепица</div>
            <div class="material__desc">Grand Line, Металл Профиль, Ruukki</div>
          </div>
          <div class="materials-list__item material">
            <div class="material__img img--cover"><img src="/catalog/view/theme/default/img/foto/roof-mat2.png"></div>
            <div class="material__name">Гибкая черепица</div>
            <div class="material__desc">CertainTeed, Döcke, Katepal, Shinglas, Tegola</div>
          </div>
          <div class="materials-list__item material">
            <div class="material__img img--cover"><img src="/catalog/view/theme/default/img/foto/roof-mat3.png"></div>
            <div class="material__name">Фальцевая кровля</div>
            <div class="material__desc">Grand Line, Металл Профиль</div>
          </div>
          <div class="materials-list__item material">
            <div class="material__img img--cover"><img src="/catalog/view/theme/default/img/foto/roof-mat4.png"></div>
            <div class="material__name">Натуральная черепица</div>
            <div class="material__desc">Creaton, Erlus, Laumans, Tondach, Koramic, Roben</div>
          </div>
          <div class="materials-list__item material">
            <div class="material__img img--cover"><img src="/catalog/view/theme/default/img/foto/roof-mat5.png"></div>
            <div class="material__name">Композитная черепица</div>
            <div class="material__desc">Luxard, Decra, Metrotile</div>
          </div>
          <div class="materials-list__item material"></div>
          <div class="materials-list__item material"></div>
          <div class="materials-list__item material"></div>
        </div>
      
      </div>
    </div>
  </div>
</section>

<section class="section section-materials section--p0">
  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="section-title">мы используем лучшие материалы и комплектующие</div>
        <br>
        
        <div class="materials-list">
          <div class="materials-list__item materials-list__item--big material"><img class="material__img" src="/catalog/view/theme/default/img/foto/roof-mat6.png">
            <div class="material__name">Строительная изоляция</div>
          </div>
          <div class="materials-list__item materials-list__item--big material"><img class="material__img" src="/catalog/view/theme/default/img/foto/roof-mat7.png">
            <div class="material__name">Наличники и профиля</div>
          </div>
          <div class="materials-list__item materials-list__item--big material"><img class="material__img" src="/catalog/view/theme/default/img/foto/roof-mat8.png">
            <div class="material__name">Фасонные изделия</div>
          </div>
        </div>
      
      </div>
    </div>
  </div>
</section>



<section class="section section-services section--pt0 section-services--grey">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">услуги которые мы предлагаем</div>
        <div class="services-list">

          <?php foreach ($services as $serv) { ?>
          <?php if($serv['href'] != ''){ ?> <a href="<?php echo $serv['href']; ?>"> <?php } ?>
            <div class="services-list__item service-item">
              <div class="service-item__img">
                <img src="<?php echo $serv['foto']; ?>" alt="<?php echo $serv['title']; ?>">
              </div>
              <div class="service-item__text">
                <div class="service-item__title"><?php echo $serv['title']; ?></div>
                <div class="service-item__desc"><?php echo $serv['desc']; ?></div>
              </div>
            </div>
            <?php if($serv['href'] != ''){ ?> </a> <?php } ?>
          <?php } ?>

        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-calculate-the-cost" style="background-image: url('/catalog/view/theme/default/img/bg/roof-bg-calculate-the-cost.jpg')">
  <div class="container">
    <div class="section-calculate-the-cost__bg-man" style="background-image: url('/catalog/view/theme/default/img/bg/roof-woman.png')"></div>

    <div class="row">
      <div class="col-md-7 col-md-offset-1">
        <h2 class="section-title">Произведите расчет цены стройматериалов и монтажных работ с 90- процентной точностью.</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5 col-md-offset-1">
        <div class="section-calculate-the-cost__text">
          <p class="section-calculate-the-cost__p">Затратив на расчеты всего лишь минуту, заказчик определит сметную стоимость планируемых работ! Здесь же, на сайте можно изложить персональный заказ с перечнем планируемых монтажных или реставрационных работ и количеством требуемых стройматериалов. Обратная связь посредством электронной почты.</p><br><a class="btn btn--black btn--dib" href="/online-calc" target="_blank">сделать расчёт за 50 секунд</a>
          <br>
          <br>
          <p class="section-calculate-the-cost__p--small">Или закажите бесплатную консультацию нашего технолога по телефону <b> <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>" style="white-space: nowrap;"><?php echo $telephone; ?></a></b></p>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-text">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Скатная конструкция кровли</div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="content-style">
          <p>Кровля скатного типа считается традиционно русским вариантом монтажа крыши. Несмотря на почти повсеместное использование в городских районах крыш плоского типа, за городом и в селах продолжают монтировать скатную конструкцию кровли. И это независимо от разницы в цене, ведь укладка кровли скатом значительно дороже варианта обустройства плоской крыши.</p>
          <p><b>Конструктивные преимущества</b></p>
          <ul>
            <li>Качественное водоотведение во время выпадения метеоосадков;</li>
            <li>Более стильный экстерьер, чем при плоской кровле;</li>
            <li>Добавочное размещение объектов на мансарде без внесения корректив в проектную документацию;</li>
            <li>Применение более качественных и надежных кровельных субстанций.</li>
          </ul>
          <br>
          <p><b>Типы крыш со скатами</b></p>
          <p>В монтаже кровли различают следующие типа скатных крыш:</p>
          <ul>
            <li>С одним скатом. Такая конструкция применяется при необходимости направить водоотведение от метеосадков в одну сторону, как правило, на тыльную сторону жилого(нежилого) строения;</li>
            <li>С двумя скатами. Достаточно распространенная конфигурация крыши, причем оба ската симметричны. Применяется при возведении сооружений малой и средней площади;</li>
            <li>С четырьмя скатами или полувальмового типа. Здесь монтируются 4 кровельных ската, вершинами сходящихся в одной точке. Часто встречающаяся форма крыш при сооружении частных строений.</li>
            <li>В виде шпиля. Возводятся несколько скатов - треугольников с повышенной крутизной, которые вершинами концентрируются в одной точке. Монтируются для усложненных вариантов крыш с дополнениями в виде башенок, эркеров, мансард одностороннего расположения и др. элементов, определяющих устройство крыши в виде композиции элементов.</li>
          </ul>
          <p>Основным компонентом крыши, отличающим монтаж плоской крыши от ее чердачного варианта, служит система стропил с функцией несущего каркаса силового типа. На практике применяются достаточно много видов стропильных конструкций, однако вся эта система балок по горизонтали и вертикали служит одной цели - они предназначены для укладки материалов кровли.</p>
        </div>
      </div>
    </div>
  </div>
</section>



<section class="section section-prices section--gray">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">Цена скатной кровли</div>
        <div class="table-responsive">
          <table class="table">
            <thead>
            <tr class="row-1 odd">
              <th class="column-1">№</th><th class="column-2">Наименование работ</th><th class="column-3">Ед. измерения</th><th class="column-4">Двускатная кровля</th><th class="column-5">Вальмовая кровля</th><th class="column-6">Сложная кровля</th>
            </tr>
            </thead>
            <tbody class="row-hover">
            <tr class="row-2 even">
              <td colspan="6" class="column-1">Фальцевая кровля</td>
            </tr>
            <tr class="row-3 odd">
              <td class="column-1">1</td><td class="column-2">Монтаж фальцевых панелей</td><td class="column-3">кв.м.</td><td class="column-4">448</td><td class="column-5">537</td><td class="column-6">627</td>
            </tr>
            <tr class="row-4 even">
              <td class="column-1">2</td><td class="column-2">Монтаж примыканий к стене/трубе</td><td class="column-3">пог.м.</td><td class="column-4">420</td><td class="column-5">500</td><td class="column-6">550</td>
            </tr>
            <tr class="row-5 odd">
              <td class="column-1">3</td><td class="column-2">Монтаж капельника на примыкание</td><td class="column-3">пог.м.</td><td class="column-4">140</td><td class="column-5">160</td><td class="column-6">190</td>
            </tr>
            <tr class="row-6 even">
              <td class="column-1">4</td><td class="column-2">Монтаж коньков, вальм</td><td class="column-3">пог.м.</td><td class="column-4">420</td><td class="column-5">500</td><td class="column-6">550</td>
            </tr>
            <tr class="row-7 odd">
              <td class="column-1">5</td><td class="column-2">Устройство ендов пог.м.</td><td class="column-3">пог.м.</td><td class="column-4">420</td><td class="column-5">500</td><td class="column-6">550</td>
            </tr>
            <tr class="row-8 even">
              <td class="column-1">6</td><td class="column-2">Монтаж торцевых планок</td><td class="column-3">пог.м.</td><td class="column-4">280</td><td class="column-5">330</td><td class="column-6">390</td>
            </tr>
            <tr class="row-9 odd">
              <td class="column-1">7</td><td class="column-2">Монтаж карнизных планок</td><td class="column-3">пог.м.</td><td class="column-4">280</td><td class="column-5">330</td><td class="column-6">390</td>
            </tr>
            <tr class="row-10 even">
              <td colspan="6" class="column-1">Металлочерепица/штучная черепица</td>
            </tr>
            <tr class="row-11 odd">
              <td class="column-1">1</td><td class="column-2">Монтаж металлочерепицы</td><td class="column-3">кв.м.</td><td class="column-4">190</td><td class="column-5">230</td><td class="column-6">270</td>
            </tr>
            <tr class="row-12 even">
              <td class="column-1">2</td><td class="column-2">Монтаж керамической черепицы</td><td class="column-3">кв.м.</td><td class="column-4">500</td><td class="column-5">600</td><td class="column-6">700</td>
            </tr>
            <tr class="row-13 odd">
              <td class="column-1">3</td><td class="column-2">Монтаж примыканий к стене/трубе</td><td class="column-3">пог.м.</td><td class="column-4">280</td><td class="column-5">330</td><td class="column-6">290</td>
            </tr>
            <tr class="row-14 even">
              <td class="column-1">4</td><td class="column-2">Монтаж коньков, вальм</td><td class="column-3">пог.м.</td><td class="column-4">220</td><td class="column-5">260</td><td class="column-6">300</td>
            </tr>
            <tr class="row-15 odd">
              <td class="column-1">5</td><td class="column-2">Устройство ендов пог.м.</td><td class="column-3">пог.м.</td><td class="column-4">280</td><td class="column-5">330</td><td class="column-6">390</td>
            </tr>
            <tr class="row-16 even">
              <td class="column-1">6</td><td class="column-2">Монтаж торцевых планок</td><td class="column-3">пог.м.</td><td class="column-4">220</td><td class="column-5">260</td><td class="column-6">290</td>
            </tr>
            <tr class="row-17 odd">
              <td class="column-1">7</td><td class="column-2">Монтаж карнизных планок</td><td class="column-3">пог.м.</td><td class="column-4">220</td><td class="column-5">260</td><td class="column-6">290</td>
            </tr>
            <tr class="row-18 even">
              <td colspan="6" class="column-1">Мягкая черепица</td>
            </tr>
            <tr class="row-19 odd">
              <td class="column-1">1</td><td class="column-2">Монтаж гибкой черепицы</td><td class="column-3">кв.м.</td><td class="column-4">220</td><td class="column-5">260</td><td class="column-6">300</td>
            </tr>
            <tr class="row-20 even">
              <td class="column-1">2</td><td class="column-2">Монтаж прокладочного ковра</td><td class="column-3">кв.м.</td><td class="column-4">40</td><td class="column-5">50</td><td class="column-6">55</td>
            </tr>
            <tr class="row-21 odd">
              <td class="column-1">3</td><td class="column-2">Монтаж примыканий к стене/трубе</td><td class="column-3">пог.м.</td><td class="column-4">250</td><td class="column-5">300</td><td class="column-6">350</td>
            </tr>
            <tr class="row-22 even">
              <td class="column-1">4</td><td class="column-2">Монтаж коньков, вальм</td><td class="column-3">пог.м.</td><td class="column-4">280</td><td class="column-5">330</td><td class="column-6">390</td>
            </tr>
            <tr class="row-23 odd">
              <td class="column-1">5</td><td class="column-2">Устройство ендов пог.м.</td><td class="column-3">пог.м.</td><td class="column-4">280</td><td class="column-5">330</td><td class="column-6">390</td>
            </tr>
            <tr class="row-24 even">
              <td class="column-1">6</td><td class="column-2">Монтаж торцевых планок</td><td class="column-3">пог.м.</td><td class="column-4">220</td><td class="column-5">260</td><td class="column-6">290</td>
            </tr>
            <tr class="row-25 odd">
              <td class="column-1">7</td><td class="column-2">Монтаж карнизных планок</td><td class="column-3">пог.м.</td><td class="column-4">220</td><td class="column-5">260</td><td class="column-6">290</td>
            </tr>
            <tr class="row-26 even">
              <td colspan="6" class="column-1">Стоимость монтажа несущих конструкций и утепления в рублях</td>
            </tr>
            <tr class="row-27 odd">
              <td class="column-1">1</td><td class="column-2">Монтаж мауэрелата</td><td class="column-3">пог.м.</td><td class="column-4">420</td><td class="column-5">500</td><td class="column-6">550</td>
            </tr>
            <tr class="row-28 even">
              <td class="column-1">2</td><td class="column-2">Монтаж стрропильной системы</td><td class="column-3">кв.м.</td><td class="column-4">500</td><td class="column-5">600</td><td class="column-6">700</td>
            </tr>
            <tr class="row-29 odd">
              <td class="column-1">3</td><td class="column-2">Монтаж чернового потолка</td><td class="column-3">кв.м.</td><td class="column-4">70</td><td class="column-5">90</td><td class="column-6">100</td>
            </tr>
            <tr class="row-30 even">
              <td class="column-1">4</td><td class="column-2">Укладка пароизоляции</td><td class="column-3">кв.м.</td><td class="column-4">60</td><td class="column-5">70</td><td class="column-6">70</td>
            </tr>
            <tr class="row-31 odd">
              <td class="column-1">5</td><td class="column-2">Укладка утеплителя</td><td class="column-3">кв.м.</td><td class="column-4">70</td><td class="column-5">80</td><td class="column-6">90</td>
            </tr>
            <tr class="row-32 even">
              <td class="column-1">6</td><td class="column-2">Укладка гидроизоляции</td><td class="column-3">кв.м.</td><td class="column-4">60</td><td class="column-5">60</td><td class="column-6">60</td>
            </tr>
            <tr class="row-33 odd">
              <td class="column-1">7</td><td class="column-2">Монтаж контробрешетки</td><td class="column-3">кв.м.</td><td class="column-4">40</td><td class="column-5">45</td><td class="column-6">50</td>
            </tr>
            <tr class="row-34 even">
              <td class="column-1">8</td><td class="column-2">Монтаж разбежной обрешетки</td><td class="column-3">кв.м.</td><td class="column-4">70</td><td class="column-5">80</td><td class="column-6">90</td>
            </tr>
            <tr class="row-35 odd">
              <td class="column-1">9</td><td class="column-2">Монтаж шаговой обрешетки</td><td class="column-3">кв.м.</td><td class="column-4">80</td><td class="column-5">90</td><td class="column-6">100</td>
            </tr>
            <tr class="row-36 even">
              <td class="column-1">10</td><td class="column-2">Устройство сплошного основания из фанеры</td><td class="column-3">кв.м.</td><td class="column-4">75</td><td class="column-5">90</td><td class="column-6">100</td>
            </tr>
            <tr class="row-37 odd">
              <td class="column-1">11</td><td class="column-2">Обработка швов (для битумной черепицы)</td><td class="column-3">кв.м.</td><td class="column-4">20</td><td class="column-5">20</td><td class="column-6">20</td>
            </tr>
            <tr class="row-38 even">
              <td class="column-1">12</td><td class="column-2">Септирование пиломатериалов</td><td class="column-3">куб.м.</td><td class="column-4">1100</td><td class="column-5">1100</td><td class="column-6">1100</td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <p>Закажите бесплатную консультацию нашего технолога по телефону <b> <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>"><?php echo $telephone; ?></a></b></p>
      </div>
    </div>
  </div>
</section>


<section class="section section-calc" id="online-calc">
  <div class="container">
    <div class="row">
        <?php echo $calculator; ?>
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



<section class="section section-our-work section-our-work--gray">
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
          <a href="/works" class="btn btn--dib btn--black">посмотреть все наши работы</a>
        </div>
      </div>
    </div>
  </div>
</section>



<section class="section section-calculate-the-cost-2" style="background-image: url('/catalog/view/theme/default/img/bg/roof-bg-calculate-the-cost-2.jpg')">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="section-title">Рассчитайте стоимость работ и материалов с точностью 92%</div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="section-subtitle">Среднее время расчета - 1 минута. Вы сразу получаете стоимость сметы. И при желании можете оформить индивидуальное предложение с подробным перечнем материалов и работ себе на почту.</div>
        <a href="/online-calc" class="btn btn--black btn--dib">сделать расчёт за 50 секунд</a>

        <p><br><br>Или закажите бесплатную консультацию<br>нашего технолога по телефону <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>"><?php echo $telephone; ?></a></p>
      </div>
    </div>
  </div>
</section>





<div class="container" style="display: none">
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

