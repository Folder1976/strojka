<?php echo $header; ?>

<?php



?>

<div class="container page-reviews">

  <div class="row">
    <div class="col-md-12">
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

    <div class="col-md-12">
      <h1 class="section-title text-left"><svg class="icon section-title__icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews"></use>
            </svg> <?php echo $heading_title; ?></h1>


      <div class="tabs tabs--review">
        <ul class="tabs__links">
          <li class="tab__link is-active" data-tab="tab-1">
            <svg class="icon tab__link-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#house"></use>
            </svg>
            <div class="tab__link-text">Крыши ДО и ПОСЛЕ</div>
          </li>
          <li class="tab__link" data-tab="tab-2">
            <svg class="icon tab__link-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews-text"></use>
            </svg>
            <div class="tab__link-text">Текстовые отзывы</div>
          </li>
          <li class="tab__link" data-tab="tab-3">
            <svg class="icon tab__link-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews-video"></use>
            </svg>
            <div class="tab__link-text">Видеоотзывы</div>
          </li>
          <li class="tab__link" data-tab="tab-4">
            <svg class="icon tab__link-icon">
              <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#review-quality-dep"></use>
            </svg>
            <div class="tab__link-text">Отдел качества</div>
          </li>
        </ul>


        <div id="tab-1" class="tab__content tab-content is-active">
          <div class="tab-content__top">
            <div class="tab-content__icon">
              <svg class="icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#house"></use>
              </svg>
            </div>
            <div class="tab-content__title">
              <div class="tab-content__title-text">Крыши</div>
              <div class="tab-content__title-subtitle">Объекты до и после</div>
            </div>
          </div>

          <div class="review-row">
            <div class="row">
              <div class="col-md-6">
                <div class="reviews-slider js-reviews-tab1">

                  <div class="reviews-slider__arrows">
                    <div class="reviews-slider__arrow reviews-slider__arrow--prev"></div>
                    <div class="reviews-slider__arrow reviews-slider__arrow--next"></div>
                  </div>

                  <div class="reviews-slider__list">
                    <div class="reviews-slider__item">
                      <img src="/catalog/view/theme/default/img/foto/review-foto-house.jpg" alt="">
                    </div>
                    <div class="reviews-slider__item">
                      <img src="/catalog/view/theme/default/img/foto/review-foto-house.jpg" alt="">
                    </div>
                    <div class="reviews-slider__item">
                      <img src="/catalog/view/theme/default/img/foto/review-foto-house.jpg" alt="">
                    </div>
                  </div>
                </div> <!-- /.reviews-slider -->
              </div>

              <div class="col-md-6">
                <div class="review-tab1-block">
                  <div class="review-tab1-block__client-foto">
                    <img src="/catalog/view/theme/default/img/foto/review-client-foto.jpg" alt="client-foto">
                  </div>
                  <div class="review-tab1-block__client-name"><b>Иван Иванов</b>, г. Москва</div>
                  <div class="review-tab1-block__text">Сайт рыбатекст поможет дизайнеру, верстальщику сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке. Сайт рыбатекст поможет дизайнеру, верстальщику сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке.</div>

                  <ul class="review-tab1-block__list">
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-type"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">Строительство кровли</div>
                    </li>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-location"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">МО, Раменский р-н, д. Починки</div>
                    </li>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-area"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">143 м2</div>
                    </li>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#rev-price"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">250 000 руб.</div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>


          <div class="review-row">
            <div class="row">
              <div class="col-md-6">
                <div class="reviews-slider js-reviews-tab1">

                  <div class="reviews-slider__arrows">
                    <div class="reviews-slider__arrow reviews-slider__arrow--prev"></div>
                    <div class="reviews-slider__arrow reviews-slider__arrow--next"></div>
                  </div>

                  <div class="reviews-slider__list">
                    <div class="reviews-slider__item">
                      <img src="/catalog/view/theme/default/img/foto/review-foto-house.jpg" alt="">
                    </div>
                    <div class="reviews-slider__item">
                      <img src="/catalog/view/theme/default/img/foto/review-foto-house.jpg" alt="">
                    </div>
                    <div class="reviews-slider__item">
                      <img src="/catalog/view/theme/default/img/foto/review-foto-house.jpg" alt="">
                    </div>
                  </div>
                </div> <!-- /.reviews-slider -->
              </div>

              <div class="col-md-6">
                <div class="review-tab1-block">
                  <div class="review-tab1-block__client-foto">
                    <img src="/catalog/view/theme/default/img/foto/review-client-foto.jpg" alt="client-foto">
                  </div>
                  <div class="review-tab1-block__client-name"><b>Иван Иванов</b>, г. Москва</div>
                  <div class="review-tab1-block__text">Сайт рыбатекст поможет дизайнеру, верстальщику сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке. Сайт рыбатекст поможет дизайнеру, верстальщику сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке.</div>

                  <ul class="review-tab1-block__list">
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#house"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">Строительство кровли</div>
                    </li>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#house"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">МО, Раменский р-н, д. Починки</div>
                    </li>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#house"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">143 м2</div>
                    </li>
                    <li>
                      <div class="review-tab1-block__list-icon">
                        <svg class="icon">
                          <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#house"></use>
                        </svg>
                      </div>
                      <div class="review-tab1-block__list-text">250 000 руб.</div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-4 col-md-offset-4">
              <a href="#" class="btn">Загрузить ещё</a>
            </div>
          </div>

        </div>



        <div id="tab-2" class="tab__content tab-content">
          <div class="tab-content__top">
            <div class="tab-content__icon">
              <svg class="icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews-text"></use>
              </svg>
            </div>
            <div class="tab-content__title">
              <div class="tab-content__title-text">Текстовые отзывы</div>
            </div>
          </div>

          <div class="reviews-slider reviews-slider--text js-reviews-tab2">

            <div class="reviews-slider__arrows">
              <div class="reviews-slider__arrow reviews-slider__arrow--prev"></div>
              <div class="reviews-slider__arrow reviews-slider__arrow--next"></div>
            </div>

            <div class="reviews-slider__list">
              <div class="reviews-slider__item">
                <div class="reviews-slider__image">
                  <img src="/catalog/view/theme/default/img/foto/text-review-foto.jpg" alt="">
                  <svg class="icon reviews-slider__quotes">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#quote"></use>
                  </svg>
                </div>
                <div class="reviews-slider__content">
                  <div class="reviews-slider__date">25/08/2018 год</div>
                  <div class="reviews-slider__name"><b>Иван Иванов</b>, г. Москва</div>
                  <div class="reviews-slider__title">“Условный заголовок который придумал дизайнер, с которого начинается любой отзыв”</div>
                  <div class="reviews-slider__text">Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском</div>
                </div>
              </div>

              <div class="reviews-slider__item">
                <div class="reviews-slider__image">
                  <img src="/catalog/view/theme/default/img/foto/text-review-foto.jpg" alt="">
                  <svg class="icon reviews-slider__quotes">
                    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#quote"></use>
                  </svg>
                </div>
                <div class="reviews-slider__content">
                  <div class="reviews-slider__date">25/08/2018 год</div>
                  <div class="reviews-slider__name"><b>Иван Иванов</b>, г. Москва</div>
                  <div class="reviews-slider__title">“Условный заголовок который придумал дизайнер, с которого начинается любой отзыв”</div>
                  <div class="reviews-slider__text">Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском языке, а начинающему оратору отточить навык публичных выступлений в домашних условиях. При создании генератора мы использовали небезизвестный универсальный код речей. Текст генерируется абзацами случайным образом от двух до десяти предложений в абзаце, что позволяет сделать текст более привлекательным и живым для визуально-слухового восприятия.Сайт рыбатекст поможет дизайнеру, верстальщику, вебмастеру сгенерировать несколько абзацев более менее осмысленного текста рыбы на русском</div>
                </div>
              </div>

            </div>
          </div> <!-- /.reviews-slider -->

        </div>




        <div id="tab-3" class="tab__content tab-content">
          <div class="tab-content__top">
            <div class="tab-content__icon">
              <svg class="icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews-video"></use>
              </svg>
            </div>
            <div class="tab-content__title">
              <div class="tab-content__title-text">Видеоотзывы</div>
            </div>
          </div>




          <div class="row">
            <div class="col-md-4 col-md-offset-4">
              <a href="#" class="btn">Загрузить ещё</a>
            </div>
          </div>

        </div>




        <div id="tab-4" class="tab__content tab-content">
          <div class="tab-content__top">
            <div class="tab-content__icon">
              <svg class="icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#review-quality-dep"></use>
              </svg>
            </div>
            <div class="tab-content__title">
              <div class="tab-content__title-text">Отдел качества</div>
              <div class="tab-content__title-subtitle">нам важно ваше мнение</div>
            </div>
            <div class="tab-content__desc">
              Наша компания стремится к совершенствованию, поэтому мы тщательно следим за качеством работ. Наши сотрудники узнают у клиентов, что им понравилось в работе, а что следует улучшить.
            </div>
          </div>




          <div class="row">
            <div class="col-md-4 col-md-offset-4">
              <a href="#" class="btn">Загрузить ещё</a>
            </div>
          </div>

        </div>



      </div>
    </div>
  </div>

</div>



<?php echo $footer; ?>

