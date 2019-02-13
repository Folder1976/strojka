<?php echo $header; ?>

<?php
$contact_list = array(
  array(
    'title' => 'Главный офис',
    'text' => 'г. Москва, Киевское шоссе, 22-й километр, дв4с1кА<br>ПН-ПТ: 09:00 — 18:00<br>СБ-ВС: 10:00 — 18:00<br>8 (495) 235-03-30<br>Email: info@krovlja-stroy.ru',
    'link' => "https://www.google.ru/maps/place/56%C2%B000'39.2%22N+37%C2%B010'54.0%22E/@56.0114296,37.17883,17.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d56.010901!4d37.181661",
  ),
  // array(
  //   'title' => 'лобня',
  //   'text' => 'Село Озерецкое — 6 км. от г.Лобня по Рогачевскому шоссе в сторону области, справа будет магазин Стройматериалы.<br>ПН-ПТ: 08:00 — 19:00<br>СБ-ВС: 10:00 — 18:00<br> +7(495) 204 15 21',
  //   'link' => '#',
  // ),
  // array(
  //   'title' => 'Клин',
  //   'text' => 'ул. Высоковская, 3, Московская обл., 141607<br>ПН-ПТ: 08:00 — 20:00<br>СБ-ВС: 10:00 — 18:00<br>+7(495)127-09-46',
  //   'link' => '#',
  // ),
  // array(
  //   'title' => 'Сергиев Посад',
  //   'text' => 'ул.Строительная, 11, Московская обл., 141304<br>ПН-ПТ: 09:00 — 18:00<br>СБ-ВС: 09:00 — 18:00<br>+7 (499) 404-24-74',
  //   'link' => '#',
  // ),
  // array(
  //   'title' => 'Дмитров',
  //   'text' => 'Профессиональная ул., 169, Московская обл., 141801<br>ПН-ВС: 09:00 — 18:00<br>+7 (495) 204-15-21',
  //   'link' => '#',
  // ),
);



$news = array(
  array(
    'title' => 'Название новости',
    'date' => '1.12.2018',
    'foto' => 'catalog/view/theme/default/img/tmpimg/contact-news-1.jpg',
    'link' => '#',
  ),
  array(
    'title' => 'Название новости',
    'date' => '1.12.2018',
    'foto' => 'catalog/view/theme/default/img/tmpimg/contact-news-2.jpg',
    'link' => '#',
  ),
  array(
    'title' => 'Название новости',
    'date' => '1.12.2018',
    'foto' => 'catalog/view/theme/default/img/tmpimg/contact-news-3.jpg',
    'link' => '#',
  ),
);
?>



<div class="container">
  <div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-9">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

  <div class="row">

    <div class="col-md-9 col-md-push-3">
      <h1 class="section-title text-left"><?php echo $heading_title; ?></h1>

      <?php foreach ($contact_list as $contact) { ?>
        <div class="contact-item">
          <div class="contact-item__title"><?php echo $contact['title']; ?></div>
          <a href="<?php echo $contact['link']; ?>" class="contact-item__link" target="_blank">Посмотреть на карте</a>
          <div class="contact-item__text"><?php echo $contact['text']; ?></div>
        </div>
      <?php } ?>
    </div>

    <div class="col-md-3 col-md-pull-9">
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









<?php if (false) { ?>

<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <h3><?php echo $text_location; ?></h3>
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-3"><strong><?php echo $store; ?></strong><br />
              <address>
              <?php echo $address; ?>
              </address>
              <?php if ($geocode) { ?>
              <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
              <?php } ?>
            </div>
            <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <?php echo $telephone; ?><br />
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div>
            <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php echo $text_contact; ?></legend>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php echo $captcha; ?>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<?php } ?>

<?php echo $footer; ?>
