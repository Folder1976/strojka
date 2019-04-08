    <section class="project-cat-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <h1 class="section-title">проекты</h1>
            <a href="#"><svg class="icon project-cat-header-location"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#location2"></use></svg><span class="project-cat__link"> На карте</span></a>
          </div>
          <div class="col-md-6">
            <ul class="project-cat-filter-type">
              <li><a href="#">Всё</a></li>
              <li><a href="#">Дома</a></li>
              <li><a href="#">Бани</a></li>
              <li><a href="#">Разное</a></li>
            </ul>
          </div>
          <div class="col-md-3 text-right-md text-right-lg">
            <a href="#" class="project-cat__link">Заказать звонок</a>
          </div>
        </div>
      </div>
    </section>

    <section class="project-cat-header2">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <ul class="project-cat-filter-floor">
              <li><a href="#">1 этаж</a></li>
              <li><a href="#">2 этажа</a></li>
            </ul>
          </div>
        </div>
      </div>
    </section>


    <?php
    $projects = [
      [
        "name" => "name1",
        "images" => [
          '/catalog/view/theme/default/img/tmpimg/projects/foto-1.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-2.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-3.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-4.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-5.jpg',
        ]
      ],
      [
        "name" => "name2",
        "images" => [
          '/catalog/view/theme/default/img/tmpimg/projects/foto-1.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-2.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-3.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-4.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-5.jpg',
        ]
      ],
      [
        "name" => "name3",
        "images" => [
          '/catalog/view/theme/default/img/tmpimg/projects/foto-1.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-2.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-3.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-4.jpg',
          '/catalog/view/theme/default/img/tmpimg/projects/foto-5.jpg',
        ]
      ],
    ];
    ?>

    <section class="project-list">
      <div class="container-fluid">
        <div class="row">
          <?php foreach ($projects as $project) { ?>
          <div class="col-md-6 col-xs-12 project-list__item">
            <div class="project-info">
              <div class="project-info__icon">
                <svg class="icon">
                  <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#project-info"></use>
                </svg>
              </div>
              <h2 class="project-info__title"><?php echo $project['name']; ?></h2>
              <p class="project-info__sub-title"><?php echo $project['name']; ?></p>
              <ul class="project-info__parameters">
                <li>
                  <svg class="icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#project-area"></use>
                  </svg>
                  <span>552 м2</span>
                </li>
                <li>
                  <svg class="icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#floor"></use>
                  </svg>
                  <span>2 этажа</span>
                </li>
                <li>
                  <svg class="icon">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#bed"></use>
                  </svg>
                  <span>2 спальни</span>
                </li>
              </ul>
            </div>
            <div class="project-slider js-project-slider">
              <div class="slider__arrows">
                <div class="slider__arrow slider__arrow--prev"></div>
                <div class="slider__arrow slider__arrow--next"></div>
              </div>

              <div class="slider__list">          
                <?php foreach ($project['images'] as $image) { ?>
                  <div class="slider__item slider-item">

                    <div class="slider-item__img img--cover"><img src="<?php echo $image; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>
                  </div>
                <?php } ?>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
    </section>

  </div>  <!-- /.container-fluid -->