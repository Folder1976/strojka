<?php echo $header; ?>

<div class="container">

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
      <h1 class="section-title text-left"><?php echo $heading_title; ?></h1>

      <div class="block-t block-t--border">
        <?php echo $description; ?>
      </div>

      <div class="block-t block-t--left-img">
        <div class="block-t__col block-t__col--img">
          <img src="/catalog/view/theme/default/img/foto/foto-car.jpg" alt="car" class="img--cover">
        </div>
        <div class="block-t__col block-t__col--bgc block-t__col--p">
          <div class="block-t__text">Не закрывайте страницу именно для вас мы приготовили выгодное предложение! Экскурсия на 2-3 строящихся объекта (5-10 дней до сдачи) с демонстрацией объекта и консультацией специалиста</div>
          <div class="block-t__btn-group">
            <div class="block-t__price">
              <span class="title">Всего за</span>
              <span class="white">3500 руб.</span>
            </div>
            <div class="block-t__btn">
              <a href="#get-consultation" class="btn btn--black mf-popup" data-effect="mfp-zoom-in">купить</a>
            </div>
          </div>
        </div>
      </div>

      <div class="block-t block-t--list">
        <p>1. Вам не надо никуда ехать, мы сами приедем к вам и отвезем на наши объекты</p>
        <p>2. Познакомитесь с нашими бригдирами</p>
        <p>3. Узнаете какая была поставлена задача от заказчика и как мы ее решили</p>
        <p>4. Получите отзыв про нас на прямую от заказчика строящегося объекта</p>
      </div>
            
      <div class="block-t block-t--border">
        <div class="block-timer">

            <h5 class="coutdown">До окончания предложения осталось</h5>
            <div id="clockdiv2" class="clockdiv2">
              <div class="timer-group">
                <span class="days"></span>
                <p class="smalltext">дней</p>
              </div>
              <div class="timer-group">
                <span class="hours"></span>
                <p class="smalltext">часов</p>
              </div>
              <div class="timer-group">
                <span class="minutes"></span>
                <p class="smalltext">минут</p>
              </div>
              <div class="timer-group">
                <span class="seconds"></span>
                <p class="smalltext">секунд.</p>
              </div>
            </div>

            <a href="#get-consultation" class="btn btn--black mf-popup" data-effect="mfp-zoom-in">купить</a>
        </div>
      </div>

      <div class="block-t block-t--left-img">
        <div class="block-t__col block-t__col--img">
          <img src="/catalog/view/theme/default/img/foto/foto-present.jpg" alt="car" class="img--cover">
        </div>
        <div class="block-t__col block-t__col--bgc block-t__col--p">
          <div class="block-t__text">Еще один подарок вы сможете получить если подпишитесь на наш instagram и напишите в директ сообщение</div>
          <div class="block-t__btn-group">
            <div class="block-t__price">
              <span class="title">С кодовым словом</span>
              <span class="white">подарок</span>
            </div>
            <div class="block-t__btn">
              <a href="https://www.instagram.com/roofer_ru/" class="btn btn--black" target="_blank">подписаться</a>
            </div>
          </div>
        </div>
      </div>

      <br>

    </div>

    <div class="col-md-3 col-md-pull-9">
      <?php // echo $column_left; ?>

      <div class="seller">
        <div class="seller__img">
          <img src="catalog/view/theme/default/img/tmpimg/seller-foto.jpg" alt="Анна. Менеджер отдела продаж">
        </div>
        <div class="seller__name">Анна</div>
        <div class="seller__post">Менеджер отдела продаж</div>
        <div class="seller__text">— Помогу выбрать подходящую услугу для кровли.</div>
        <p><a href="/online-calc">Калькулятор и составление КП</a></p>
        <p><a href="#get-consultation" class="mf-popup" data-effect="mfp-zoom-in">Закажите замер по Москве и МО</a></p>
      </div>
    </div>
  </div>

</div>



<script>
  $(document).ready(function () {

    function getTimeRemaining(endtime) {
        var t = Date.parse(endtime) - Date.parse(new Date());
        var seconds = Math.floor((t / 1000) % 60);
        var minutes = Math.floor((t / 1000 / 60) % 60);
        var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
        var days = Math.floor(t / (1000 * 60 * 60 * 24));
        return {
            'total': t,
            'days': days,
            'hours': hours,
            'minutes': minutes,
            'seconds': seconds
        };
    }

    function initializeClock(id, endtime) {
        var clock = document.getElementById(id);
        var daysSpan = clock.querySelector('.days');
        var hoursSpan = clock.querySelector('.hours');
        var minutesSpan = clock.querySelector('.minutes');
        var secondsSpan = clock.querySelector('.seconds');

        function updateClock() {
            var t = getTimeRemaining(endtime);

            daysSpan.innerHTML = t.days;
            hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
            minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
            secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

            if (t.total <= 0) {
                clearInterval(timeinterval);
            }
        }

        updateClock();
        var timeinterval = setInterval(updateClock, 1000);
    }

    var myDate = new Date();
    myDate.setDate(myDate.getDate() + 2);
    initializeClock('clockdiv2', myDate);

});
  
</script>



<?php if (false) { ?>
<div class="container">
 <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    
      <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
 

      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php } ?>



<?php echo $footer; ?>
