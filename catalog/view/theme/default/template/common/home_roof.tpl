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






<section class="section section--p0 section-home-top section-home-top--roof">
  <div class="section-home-top__bg-house"><div class="cont"></div></div>
  <div class="section-home-top__bg-clouds"></div>
  <div class="section-home-top__list-bg"></div>
  <div class="container">
    <div class="row">
      <div class="col-md-11 col-md-offset-1">
        <div class="section-home-top__content">
          <h1 class="site-title">Cтроительство крыш в москве и области под ключ за 10 дней</h1>
          <div class="section-home-top__desc">
            <p>Строим крыши с 1996 года. Подготавливаем подробную смету на работы и материалы. Даем юридическую гарантию неизменности цени и завершения работы в срок.</p>
            <br>
            <a href="#" class="btn btn--orange btn--dib btn--w100">сделайте расчёт за 50 секунд</a>
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
        <a href="#" class="btn btn--dib">пройти тест</a>
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
            <div class="smet__title">Расчет сметы за 50 сек</div>
            <div class="smet__desc">Онлайн-калькулятор, основан на нашей статистике выполненных объектов и дает погрешность 7-10% от реальной стоимости.</div>
          </div>

          <div class="smeta-list__item smet">
            <div class="smet__img">
              <svg class="icon smet__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#list"></use>
              </svg>
              <a class="smet__download-link" href="http://krovlja-stroy.ru/wp-content/themes/roof/blocks/_smeta/assets/pdf/smeta.pdf" target="_blank">Скачать пример сметы</a>
            </div>
            <div class="smet__title">Оправдываем ожидания на 100%</div>
            <div class="smet__desc">Итоговый результат удовлетворит самого требовательного клиента. Детально проработанное техзадание и подробная смета уменьшают риск ошибки.</div>
          </div>

          <div class="smeta-list__item smet">
            <div class="smet__img">
              <svg class="icon smet__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#check-list"></use>
              </svg>
              <a class="smet__download-link" href="http://krovlja-stroy.ru/wp-content/themes/roof/blocks/_smeta/assets/pdf/checklist.pdf" target="_blank">Скачать пример чек-листа</a>
            </div>
            <div class="smet__title">100% соответствие с проектом</div>
            <div class="smet__desc">Перед началом работ клиент и прораб проводит финальный чек-лист для того чтобы результат соответствовал ожиданиям клиента.</div>
          </div>

          <div class="smeta-list__item smet">
            <div class="smet__img"><svg class="icon smet__icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#economy"></use>
              </svg>
            </div>
            <div class="smet__title">Экономия до 30% на материале</div>
            <div class="smet__desc">При заказе работ с материалом клиент получает оптовые условия поставки материала</div>
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


<section class="section section-calculate-the-cost" style="background-image: url('/catalog/view/theme/default/img/bg/roof-bg-calculate-the-cost.jpg')">
  <div class="container">
    <div class="section-calculate-the-cost__bg-man" style="background-image: url('/catalog/view/theme/default/img/bg/roof-woman.png')"></div>

    <div class="row">
      <div class="col-md-7 col-md-offset-1">
        <h2 class="section-title">рассчитайте стоимость работ и материалов с точностью 90%</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5 col-md-offset-1">
        <div class="section-calculate-the-cost__text">
          <p class="section-calculate-the-cost__p">Среднее время расчета - 1 минута. Вы сразу получаете стоимость сметы. И при желании можете оформить индивидуальное предложение с подробным перечнем материалов и работ себе на почту.</p><br><a class="btn btn--black btn--dib" href="#online-calc">сделать расчёт за 50 секунд</a>
          <br>
          <br>
          <p class="section-calculate-the-cost__p--small">Или закажите бесплатную консультацию нашего технолога по телефону <b> <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $phone); ?>" style="white-space: nowrap;"><?php echo $phone; ?></a></b></p>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-text">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">скатнаЯ кровля</div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="content-style">
          <p>Скатная кровля — традиционный для России способ обустройства крыши. Хотя в городах сегодня используется в основном плоская кровля, в сельской местности предпочтение по-прежнему отдается привычной скатной технологии. И это не смотря на то, что стоимость монтажа скатной кровли существенно выше, чем цена плоской.</p>
          <p><b>Крыша этой конструкции обладает целым рядом преимуществ:</b></p>
          <ul>
            <li>Быстрое отведение воды во время осадков;</li>
            <li>Гораздо более привлекательный внешний вид, чем у плоской крыши;</li>
            <li>Возможность обустройства дополнительного жилого/нежилого помещения на мансардном этаже без необходимости достраивать стены;</li>
            <li>Возможность использовать более долговечные кровельные материалы.</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="section section-text">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="section-title">технология монтажа скатных крыш</div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="content-style">
          <p>Специалисты выделяют четыре основных типа скатных крыш:</p>
          <p>Односкатные. Имеется уклон только в одну сторону. Используются в тех случаях, когда сток воды и сбрасывание снега необходимо направить в одну конкретную сторону (на тыльную сторону дома).</p>
          <p>Двускатные. Имеют два ската (как правило, симметричных). Самый популярный вариант, повсеместно используемый при строительстве небольших по площади сооружений.</p>
          <p>Четырехскатные (полувальмовые). Имеется четыре ската, вершины которых сходятся в одной точке. Самый распространенный вариант при возведении частных жилых домов.</p>
          <p>Шпилеобразные. Несколько крутых скатов треугольной формы, сходящиеся в одной точке. Используются для крыш с башнями, эркерами, односторонними мансардами и другими сложными конструкциями, усложняющими геометрию крыши.</p>
          <p>Ключевой конструкционной особенностью, которая отличает монтаж чердачной крыши от плоской, является система стропил, выполняющих функцию несущего каркаса. Существует множество типов стропильных конструкций, но все они имеют единый принцип — вертикальные и горизонтальные балки, закрепленный так, чтобы на них можно было надежно уложить кровельный материал.</p>
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
        <p>Закажите бесплатную консультацию нашего технолога по телефону <b> <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $phone); ?>"><?php echo $phone; ?></a></b></p>
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

        <div class="">Калькулятор...</div>
      </div>
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
              <div class="work-item__img">
                <img src="<?php echo $work['img']; ?>" alt="<?php echo $work['title']; ?>">
              </div>
              <div class="work-item__title"><?php echo $work['title']; ?></div>
            </div>
          <?php } ?>

        </div>

        <div class="btn-wrap text-center">
          <a href="/our-works" class="btn btn--dib btn--black">посмотреть все наши работы</a>
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
        <a href="#" class="btn btn--black btn--dib">сделать расчёт за 50 секунд</a>

        <p><br><br>Или закажите бесплатную консультацию<br>нашего технолога по телефону <a href="tel:790663541265">+79 (066)354 12 65</a></p>
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