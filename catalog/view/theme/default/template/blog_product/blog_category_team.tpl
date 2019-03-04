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

      <?php if ($description) { ?>
        <div class="description"><?php echo $description; ?></div>
      <?php } ?>

      <?php if ($categories) { ?>
        <?php foreach ($categories as $category) { ?>
          <h3 class="widget-title"><?php echo $category['name']; ?></h3>
           <?php if ($products) { ?>
            <div class="team-list team-list--col3">
              <?php foreach ($products as $product) { ?>
                <?php if($product['sku'] == $category['keyword']){ ?>
                  <div class="team-list__item team-member">
                    <div class="team-member__foto">
                      <img class="img--cover" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                    </div>
                    <div class="team-member__name"><?php echo $product['name']; ?></div>
                    <div class="team-member__position"><?php echo $product['description']; ?></div>
                  </div>
                <?php } ?>
              <?php } ?>
            </div>
          <?php } ?>
        <?php } ?>
      <?php } ?>


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



<?php echo $footer; ?>
