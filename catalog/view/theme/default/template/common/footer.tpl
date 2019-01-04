<?php
// временно:
$logo = '/image/catalog/logo.png';
$name = 'Your Store';
$home = '/';
?>



</div> <!-- ./ site__content -->

<footer class="footer">
  <!-- popups -->
  <div id="get-consultation" class="mf-popup-block mf-get-consultation mfp-hide mfp-with-anim">
    <h3 class="mf-title">консультация</h3>
    <div class="row">
      <div class="col-md-7">
        <form action="/index.php?route=account/universalform" method="post" enctype="multipart/form-data" class="form form--mf-popup">
          <input type="hidden" name="formname" value="get-consultation">
          <div class="form__group">
            <input type="text" class="input" name="name" placeholder="Имя">
          </div>
          <div class="form__group">
            <input type="text" class="input input--phone" name="phone" placeholder="Телефон">
          </div>
          <div class="form__group">
            <textarea name="comment" rows="5" class="textarea" placeholder="Информация о проекте"></textarea>
          </div>
          <div class="form__group">
            <div class="hidden"><input type="file" class="input input--file" id="get-consultation__file"></div>
            <label for="get-consultation__file" class="form-label form-label--file">Прикрепить файл</a> 
          </div>
          <div class="form__group">
            <input type="checkbox" class="checkbox" value="1" name="agree" id="get-consultation__agree">
            <label for="get-consultation__agree" class="form-label">С <a href="#">политикой конфиденциальности</a> ознакомлен</label>
          </div>
          <div class="form__group">
            <button class="btn btn--black">связаться</button>
          </div>
        </form>
      </div>
      <div class="col-md-5 text-center">
        <img class="mf-get-consultation__foto" src="catalog/view/theme/default/img/foto/sales-manager.jpg" alt="sales-manager">
        <p>Вас будет обслуживать<br>менеджер отдела продаж:<br><b>Иннокентий Гаврилов</b></p>
      </div>
    </div>
  </div>

  <div class="back-to-top">
    <div class="back-to-top__inner">
      <svg class="icon icon-chevron-up back-to-top__icon">
        <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#chevron-up"></use>
      </svg>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="footer__container">
          
          <div class="footer__logo-col">
            <div class="footer__logo logo">
              <a href="<?php echo $home; ?>" class="logo__link"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="logo__img" /></a>
            </div>
            <p class="footer__powered"><?php echo $powered; ?></p>
          </div>

          <div class="footer__col-products">
            <div class="footer__title">Товары</div>
            <ul class="footer__menu">
              <li><a href="#">Сайдинг</a></li>
              <li><a href="#">icon Скатная кровля</a></li>
              <li><a href="#">icon Плоская кровля</a></li>
              <li><a href="#">icon Забор</a></li>
              <li><a href="#">Утеплители</a></li>
              <li><a href="#">icon Фасад</a></li>
              <li><a href="#">icon Фасонные изделия</a></li>
              <li><a href="#">Элементы безопасности</a></li>
            </ul>
          </div>

          <div class="footer__col-services">
            <div class="footer__title">Услуги</div>
            <ul class="footer__menu">
              <li><a href="#">Кровля</a></li>
              <li><a href="#">Фасад</a></li>
              <li><a href="#">Проектирование и дизайн</a></li>
              <li><a href="#">Строительство загородных домов</a></li>
            </ul>
          </div>

          <div class="footer__col-nav">
            <div class="footer__title">Навигация</div>
            <ul class="footer__menu">
              <li><a href="#">Услуги</a></li>
              <li><a href="#">Товары</a></li>
              <li><a href="<?php echo $manufacturer; ?>">Все бренды</a></li>
              <li><a href="#">Отзывы</a></li>
              <li><a href="#">Наши проекты</a></li>
              <li><a href="#">Команда</a></li>
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              <li><a href="#">Политика конфиденциальности</a></li>
            </ul>
          </div>

          <div class="footer__col-address">
            <div class="row">
              <div class="col-md-6">
                <div class="footer__title">Наш адрес</div>
                <p>Москва, ул. Соуолова, 25</p>
                <p>Тел.: +7 854 52 85</p>
              </div>
              <div class="col-md-6">
                <div class="footer__title">мы в соц. сетях</div>
                <ul class="footer__social">
                  <li><a href="#"><svg class="icon icon-facebook-logo footer__social-icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#vk-logo"></use></svg></a></li>
                  <li><a href="#"><svg class="icon icon-facebook-logo footer__social-icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#facebook-logo"></use></svg></a></li>
                  <li><a href="#"><svg class="icon icon-facebook-logo footer__social-icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#instagram-logo"></use></svg></a></li>
                  <li><a href="#"><svg class="icon icon-facebook-logo footer__social-icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#twitter-logo"></use></svg></a></li>
                </ul>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <img src="catalog/view/theme/default/img/tmpimg/map.jpg" alt="map">
              </div>
            </div>
          </div>


        </div>
      </div>
    </div>
  </div>
  
</footer>

<script src="catalog/view/theme/default/js/libs.js" type="text/javascript"></script>
<script src="catalog/view/theme/default/js/main.js" type="text/javascript"></script>













<?php if (false) { ?>

<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>

<?php } ?>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>