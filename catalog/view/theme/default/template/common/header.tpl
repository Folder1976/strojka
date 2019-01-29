<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->
<!-- <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet"> -->
<link href="catalog/view/theme/default/stylesheet/main.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="site <?php echo $class; ?>">

<?php
$top_menu = array(
  array (
    'name' => 'Услуги',
    'href' => '#',
    'children' => $blog_categories,
  ),
  array (
    'name' => 'Товары',
    'href' => '',
    'children' => $categories
  ),
  array (
    'name' => 'Контакты',
    'href' => $contact,
  ),
  array (
    'name' => 'Наши работы',
    'href' => '/our-works',
  ),
  array (
    'name' => 'Блог',
    'href' => '/news',
  ),
);
$bottom_menu = array(
  array (
    'name' => 'Кровля',
    'href' => '#',
    'children' => array(
      array(
        'name' => 'item 1',
        'href' => '#',
        'children' => array(
          array(
            'name' => 'item 1 1',
            'href' => '#',
          ),
          array(
            'name' => 'item 1 2',
            'href' => '#',
          ),
          array(
            'name' => 'item 1 3',
            'href' => '#',
          ),
          array(
            'name' => 'item 1 4',
            'href' => '#',
          ),
        ),
      ),
      array(
        'name' => 'item 2item 2item 2item 2item 2item 2',
        'href' => '#',
        'children' => array(
          array(
            'name' => 'item 2 1',
            'href' => '#',
          ),
          array(
            'name' => 'item 2 2',
            'href' => '#',
          ),
          array(
            'name' => 'item 2 3',
            'href' => '#',
          ),
          array(
            'name' => 'item 2 2',
            'href' => '#',
          ),
        ),
      ),
      array(
        'name' => 'item 3',
        'href' => '#',
        'children' => array(
          array(
            'name' => 'item 3 1',
            'href' => '#',
          ),
          array(
            'name' => 'item 3 2',
            'href' => '#',
          ),
          array(
            'name' => 'item 3 3',
            'href' => '#',
          ),
          array(
            'name' => 'item 3 4',
            'href' => '#',
          ),
        ),
      ),
      array(
        'name' => 'item 4',
        'href' => '#',
        'children' => array(
          array(
            'name' => 'item 4 1',
            'href' => '#',
          ),
          array(
            'name' => 'item 4 2',
            'href' => '#',
          ),
          array(
            'name' => 'item 4 3',
            'href' => '#',
          ),
          array(
            'name' => 'item 4 4',
            'href' => '#',
          ),
        ),
      ),
    )
  ),
  array (
    'name' => 'фундамент',
    'href' => '',
    'children' => array()
  ),
  array (
    'name' => 'проектирование и дизайн',
    'href' => '#',
  ),
  array (
    'name' => 'строительство загородных домов',
    'href' => '#',
  ),
);
?>

  <header class="site__header header">
    <div class="header__top">
      <div class="container">
        <div class="row">
          <div class="col-xs-4 col-sm-2">
            <div class="header__logo logo">
              <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>" class="logo__link"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="logo__img" /></a>
              <?php } else { ?>
              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
          </div>
          <div class="col-xs-8 col-sm-5 col-md-7">
            <div class="header__inner">
              <ul class="header__top-menu">

                <?php
                foreach ($top_menu as $mitem) {
                  if ( isset($mitem['children']) && count($mitem['children']) > 0 ) {
                    echo '<li class="dropdown"><a href="'.$mitem['href'].'">'.$mitem['name'].'</a>';
                    echo '<ul class="dropdown-menu">';

                    foreach ( $mitem['children'] as $child) {

                      if ( isset($child['children']) && count($child['children']) > 0 ) {
                        echo '<li class="dropdown"><a href="'.$child['href'].'">'.$child['name'].'</a>';
                        echo '<ul class="dropdown-menu dropdown-menu-2">';
                        foreach ( $child['children'] as $ch) {
                          echo '<li><a href="'.$ch['href'].'">'.$ch['name'].'</a></li>';
                        }
                        echo '</ul></li>';
                      } else {
                        echo '<li><a href="'.$child['href'].'">'.$child['name'].'</a></li>';
                      }
                    }

                    echo '</ul></li>';
                  } else {
                    echo '<li><a href="'.$mitem['href'].'">'.$mitem['name'].'</a></li>';
                  }
                }
                ?>

              </ul>
              <div class="header__top-text">работаем по москве и мо <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>"><?php echo $telephone; ?></a></div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-5 col-md-3">
            <div class="header__cart" id="cart_wrapper">
            <div id="cart_wrapper2" class="btn-group btn-block header-cart">
              <div class="header-cart__left-col">
                <a href="#menu-serv" class="mf-popup" data-effect="mfp-zoom-in">Услуги</a>
                <a href="#menu-prod" class="mf-popup" data-effect="mfp-zoom-in">Товары</a>
              </div>
              <div id="cart_wrapper3">
                <?php echo $cart; ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header__bottom">
      <div class="container">
        <div class="row">
          <div class="hidden-xs col-sm-2"></div>
          <div class="col-xs-12 col-sm-5 col-lg-7">
            <div class="header__mob-menu-btn mob-menu__btn">
              <span></span>
              <span></span>
              <span></span>
            </div>
            <ul class="header__bottom-menu js-mob-menu">

              <?php
              foreach ($bottom_menu as $mitem) {
                if ( isset($mitem['children']) && count($mitem['children']) > 0 ) {
                  echo '<li class="dropdown"><a href="'.$mitem['href'].'">'.$mitem['name'].'</a>';
                  echo '<ul class="dropdown-menu">';

                  foreach ( $mitem['children'] as $child) {

                    if ( isset($child['children']) && count($child['children']) > 0 ) {
                      echo '<li class="dropdown"><a href="'.$child['href'].'">'.$child['name'].'</a>';
                      echo '<ul class="dropdown-menu dropdown-menu-2">';
                      foreach ( $child['children'] as $ch) {
                        echo '<li><a href="'.$ch['href'].'">'.$ch['name'].'</a></li>';
                      }
                      echo '</ul></li>';
                    } else {
                      echo '<li><a href="'.$child['href'].'">'.$child['name'].'</a></li>';
                    }
                  }

                  echo '</ul></li>';
                } else {
                  echo '<li><a href="'.$mitem['href'].'">'.$mitem['name'].'</a></li>';
                }
              }
              ?>

            </ul>
          </div>
          <div class="hidden-xs col-sm-3"></div>
        </div>
      </div>
    </div>
  </header>

  <?php // popups: ?>
  <div id="menu-prod" class="mf-popup-block mf-menu-prod mfp-hide mfp-with-anim">
    <h3 class="mf-title">Товары</h3>

    <div class="mf-prod-lists">
      <?php
      foreach ($categories as $mitem) {
        if ( isset($mitem['children']) && count($mitem['children']) > 0 ) {
          echo '<div class="mf-prod-list">';
          echo '<div class="mf-prod-list__title"><a href="'.$mitem['href'].'">'.$mitem['name'].'</a></div>';
          echo '<ul class="mf-prod-list__list">';

          foreach ( $mitem['children'] as $child) {
            echo '<li><a href="'.$child['href'].'">'.$child['name'].'</a></li>';
          }

          echo '</ul></div>';
        } else {
          echo '<div class="mf-prod-list">';
          echo '<div class="mf-prod-list__title"><a href="'.$mitem['href'].'">'.$mitem['name'].'</a></div>';
          echo '</div>';
        }
      }
      ?>
    </div>
    
    
  </div>

  <div id="menu-serv" class="mf-popup-block mf-menu-serv mfp-hide mfp-with-anim">
    <h3 class="mf-title">Услуги</h3>
    
    <div class="mf-prod-lists">
      <?php
      foreach ($categories as $mitem) {
        if ( isset($mitem['children']) && count($mitem['children']) > 0 ) {
          echo '<div class="mf-prod-list">';
          echo '<div class="mf-prod-list__title"><a href="'.$mitem['href'].'">'.$mitem['name'].'</a></div>';
          echo '<ul class="mf-prod-list__list">';

          foreach ( $mitem['children'] as $child) {
            echo '<li><a href="'.$child['href'].'">'.$child['name'].'</a></li>';
          }

          echo '</ul></div>';
        } else {
          echo '<div class="mf-prod-list">';
          echo '<div class="mf-prod-list__title"><a href="'.$mitem['href'].'">'.$mitem['name'].'</a></div>';
          echo '</div>';
        }
      }
      ?>
    </div>

  </div>




  <div class="site__content">



























<?php if (false) { ?>
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>



<?php } // end if ?>
