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
      <div class="col-md-7" >
        <div class="msg"></div>
        <form method="post" enctype="multipart/form-data" class="form form--mf-popup">
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
            <div class="hidden"><input type="file" class="input input--file" name="file" id="get-consultation__file"></div>
            <label for="get-consultation__file" class="form-label form-label--file">Прикрепить файл</a> 
          </div>
          <div class="form__group">
            <input type="checkbox" class="checkbox" value="1" name="agree" id="get-consultation__agree" required>
            <label for="get-consultation__agree" class="form-label">С <a href="/privacy">политикой конфиденциальности</a> ознакомлен</label>
          </div>
          <div class="form__group">
            <button class="btn btn--black" id="msg_send"
                        data-loading-text="Отправляю . . ."
                        data-error-text="Ошибка"
                        data-success-text="Отправлено"
                        data-reset-text="связаться">связаться</button>
          </div>
        </form>
        
<script type="text/javascript"><!--

$("form").submit(function(){return false;})


$('#msg_send').on('click', function() {
  
  //console.log();
  
  $.ajax({
    url: '/index.php?route=account/universalform',
    type: 'post',
    data: $('#get-consultation input[type=text], #get-consultation input[type=file], #get-consultation input[type=checkbox]:checked, #get-consultation textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('#msg_send').button('loading');
    },
    complete: function() {
      $('#msg_send').button('reset');
    },
    success: function(json) {
    
    //console.log(json);
    //debugger;
    
      if (json['error']) {
        $('#msg_send').button('error');
       $('.msg').html('<div class="text-danger">' + json['error'] + '</div>');
      }


      if (json['success']) {
        $('#msg_send').button('success');
        show_modal_msg('<div class="alert-success">' + json['success'] + '</div>');
        $('.form.form--mf-popup')[0].reset();
        $('.mfp-close').trigger('click');
        
      }
    },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
  });
});
//--></script>
        
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
              <?php foreach($categories as $category){ ?>
              <li><a href="<?php echo $category['href'];?>"><?php echo $category['name'];?></a></li>
              <?php } ?>
            </ul>
          </div>

          <div class="footer__col-services">
            <div class="footer__title">Услуги</div>
            <ul class="footer__menu">
               <?php foreach($blog_categories as $category){ ?>
              <li><a href="<?php echo $category['href'];?>"><?php echo $category['name'];?></a></li>
              <?php } ?>
             </ul>
          </div>

          <div class="footer__col-nav">
            <div class="footer__title">Навигация</div>
            <ul class="footer__menu">
              <li><a href="/information">Услуги</a></li>
              <li><a href="/products">Товары</a></li>
              <li><a href="<?php echo $manufacturer; ?>">Все бренды</a></li>
              <li><a href="/company-reviews">Отзывы</a></li>
              <li><a href="/our-works">Наши проекты</a></li>
              <li><a href="/our-team">Команда</a></li>
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              <li><a href="/privacy">Политика конфиденциальности</a></li>
            </ul>
          </div>

          <div class="footer__col-address">
            <div class="row">
              <div class="col-md-6">
                <div class="footer__title">Наш адрес</div>
                <p><?php echo $address; ?></p>
                <p>Тел.: <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>" style="white-space: nowrap;"><?php echo $telephone; ?></a></p>
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
<style>
  .modal_msg{
    display: none;
    position: fixed;
    width: 70%;
    z-index: 99999;
    background-color: white;
    border: 1px solid;
    padding: 20px 10px;
    text-align: center;
    left: 15%;
    top: 40%;
    font-weight: bold;
    font-size: 2rem;
    -webkit-box-shadow: 0 0 100px rgba(0, 0, 0, 0.7);
            box-shadow: 0 0 100px rgba(0, 0, 0, 0.7);
  }
</style>
<script>
  function show_modal_msg(msg){
   
    $('.modal_msg').html(msg);
    $('.modal_msg').show();
    
    setTimeout(function(){
      $('.modal_msg').hide(500);
    }, 2000);
  }
</script>
<div class="modal_msg"></div>
</body></html>

