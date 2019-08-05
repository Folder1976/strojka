<?php echo $header; ?>


<?php
$news = array();
 if ($products1) {
    foreach ($products1 as $product) {
      
      $news[] = array(
                    'title' => $product['name'],
                    'date' => $product['date_added'],
                    'foto' => $product['thumb'],
                    'link' => $product['href'],
                      );
 
    }
 }
?>


<div class="container remont">

  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-9">
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

    <div class="col-md-9 col-md-push-3">
      <div class="remont__top-bg">
        <h2 class="section-title section-title--white text-left"><?php echo $heading_title; ?></h2>
        <form id="remont-form" class="remont__form remont-form" method="post" action="/index.php?route=account/universalform">
          <input type="hidden" name="formname" value="remont-form">
          <div class="remont-form__title">Получите консультацию</div>
          <input type="text" name="telephone" class="remont-form__input" placeholder="Телефон">
          <input type="hidden" name="name" value="Получите консультацию">
          <label class="remont-form__label"><input type="checkbox" name="agree" >С <a href="/privacy">политикой конфиденциальности</a> ознакомлен</label>
          <input type="submit" id="remont-form-send" class="btn remont-form__btn" value="Получить">
          <div class="msg"></div>
        </form>
      </div>


      <!-- <div class="company-review-date"><?php echo $date_added; ?></div> -->

      <?php if ($popup) { ?>
        <div class="company-review-thumb"><img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></div>
      <?php } ?>

      <div class="company-review-info">
        <?php if ($upc) { ?>
        <div class="company-review-info__time"><svg class="icon company-review-info__icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#clock-circular"></use></svg>Срок: <?php echo $upc; ?></div>
        <?php } ?>
        
        <?php if ($ean) { ?>
        <div class="company-review-info__area"><svg class="icon company-review-info__icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#area"></use></svg>Площадь: <?php echo $ean; ?></div>
        <?php } ?>
        
        <?php if ($jan) { ?>
        <div class="company-review-info__location"><svg class="icon company-review-info__icon"><use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#location"></use></svg>Место: <?php echo $jan; ?></div>
        <?php } ?>
      </div>

      <?php if ($description) { ?>
        <div class="description content-style"><?php echo $description; ?></div>
      <?php } ?>


      <?php if ( $images && count($images) > 0 ) { ?>
        <div class="slider slider--work js-slider">
          <div class="slider__arrows">
            <div class="slider__arrow slider__arrow--prev">
              <svg class="icon slider__arrow-icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#slide-prev"></use>
              </svg>
            </div>
            <div class="slider__arrow slider__arrow--next">
              <svg class="icon slider__arrow-icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#slide-next"></use>
              </svg>
            </div>
          </div>

          <div class="slider__list">          
            <?php foreach ($images as $image) { ?>
              <div class="slider__item slider-item">

                <div class="slider-item__img img--cover"><img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"></div>
              </div>
            <?php } ?>
          </div>

        </div>

        <div id="mf-popup-slider" class="mf-popup-block mf-popup-slider mfp-hide mfp-with-anim">
          <div class="slider__arrows">
            <div class="slider__arrow slider__arrow--prev">
              <svg class="icon slider__arrow-icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#slide-prev"></use>
              </svg>
            </div>
            <div class="slider__arrow slider__arrow--next">
              <svg class="icon slider__arrow-icon">
                <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#slide-next"></use>
              </svg>
            </div>
          </div>
          <div class="popup-slider">
            <?php foreach ($images as $image) { ?>
              <div>
                <img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
              </div>
            <?php } ?>
          </div>
        </div>
      <?php } ?>

      <br>
      <br>
      <br>
      <div class="h3-title">Еще проекты</div>
      <ul class="company-works-list">
        <?php foreach ($products as $pr) { ?>
          <li>
            <a href="<?php echo $pr['href']; ?>"><?php echo $pr['name']; ?></a>
          </li>
        <?php } ?>
      </ul>
      <br>

    </div>

    <div class="col-md-3 col-md-pull-9">
      <?php // echo $column_left; ?>

      <h3 class="widget-title">Новости компании</h3>
      <div class="news-list">
        
        <?php foreach ($news as $new) { ?>
          <div class="news-list__item news-item">
            <div class="news-item__img">
              <a href="<?php echo $new['link']; ?>"><img class="img--cover" src="<?php echo $new['foto']; ?>" alt="<?php echo $new['title']; ?>"></a>
            </div>
            <div class="news-item__desc">
              <div class="news-item__title"><a href="<?php echo $new['link']; ?>"><?php echo $new['title']; ?></a></div>
              <div class="news-item__date"><?php echo $new['date']; ?></div>
            </div>
          </div>
        <?php } ?>

      </div>
    </div>
  </div>

</div>






<script>
$("#remont-form").submit(function(e){
  e.preventDefault();

  $.ajax({
    url: '/index.php?route=account/universalform',
    type: 'post',
    data: $('#remont-form input[type=text],#remont-form input[type=hidden], #remont-form input[type=checkbox]:checked, #remont-form input[type=email]'),
    dataType: 'json',
    beforeSend: function() {
      $('#remont-form-send').button('loading');
    },
    complete: function() {
      $('#remont-form-send').button('reset');
    },
    success: function(json) {     
      if (json['error']) {
        $('#remont-form-send').button('error');
       $('.msg').html('<div class="text-danger">' + json['error'] + '</div>');
      }


      if (json['success']) {
        $('#remont-form-send').button('success');
        show_modal_msg('<div class="alert-success">' + json['success'] + '</div>');
        $('#remont-form')[0].reset();
        // $('.mfp-close').trigger('click');
        location.href = '<?php echo HTTP_SERVER;?>thank-you';
      }
    },
    error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });

  return false;
});
</script>











<?php echo $footer; ?>


