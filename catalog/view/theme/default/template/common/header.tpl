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
<link href="catalog/view/theme/default/stylesheet/main.css?1.05" rel="stylesheet">
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

<script src="/catalog/view/javascript/callback.js" type="text/javascript"></script>
<link href="/catalog/view/theme/default/stylesheet/callback.css?1.04" rel="stylesheet" type="text/css" />
<link href="/catalog/view/theme/default/stylesheet/callback1.css?1.04" rel="stylesheet" type="text/css" />

</head>

<?php
$page = str_replace( $base, '', $link['href'] );
if ( in_array( $page, array('root', 'fundament', '') ) ) {
  $class .= ' no-grey-line';
}
?>

<body class="site <?php echo $class; ?>">
<?php

//$categories

$top_menu = array(
  array (
    'name' => 'Услуги',
    'href' => '/information',
    'children' => array(), //$blog_categories,
  ),
  array (
    'name' => 'Товары',
    'href' => '/products',
    'children' => array(),
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
    'name' => $blog_categories[16]['name'],
    'href' => $blog_categories[16]['href'],
    'children' => $blog_categories[16]['children'],
  ),
  array (
    'name' => 'Фундамент',
    'href' => $blog_categories[13]['href'],
    'children' => $blog_categories[13]['children'],
  ),
  array (
    'name' => 'проектирование и дизайн',
    'href' => '/krovlya/blog_roof_project',
  ),
  array (
    'name' => 'строительство загородных домов',
    'href' => '#',
  ),
);

$logo = '/image/catalog/ROOFER_LOGO_1.svg';
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
              <div class="header__top-text"><b>работаем по москве и мо <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>"><?php echo $telephone; ?></a></b></div>
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
      foreach ($blog_categories as $mitem) {
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



