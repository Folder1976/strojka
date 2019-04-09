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
<link href="catalog/view/theme/default/stylesheet/main.css?1.09" rel="stylesheet">
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


<meta property="og:type" content="website" />
<meta property="og:image" content="<?php echo $logo; ?>" />
<meta property="og:title" content="<?php echo $title; ?>"/>
<?php if ($description) { ?>
<meta property="og:description" content="<?php echo $description; ?>"/>
<?php } ?>
<meta property="og:url" content= "<?php echo $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'] ?>" />
<meta property="og:site_name" content="<?php echo $name; ?>"/>




<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "WebSite",
    "name": "<?php echo $title; ?>",
    "url": "<?php echo $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']; ?>",
    "alternateName": "Компания Руфер"
}
</script>
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "Organization",
    "url": "<?php echo $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']; ?>",
    "logo": "<?php echo $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']; ?>/image/catalog/ROOFER_LOGO_1.svg"
}
</script>
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "Organization",
    "name": "<?php echo $title; ?>",
    "url": "<?php echo $_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST']; ?>",
    "sameAs": [
        "https://vk.com/roofferr",
        "https://www.facebook.com/Руфер-2013173762310831",
        "https://www.instagram.com/roofer_ru/"
    ]
}
</script>


<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(52552711, "init", {
        id:52552711,
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/52552711" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-135186102-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-135186102-1');
</script>

<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '307726893258644');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=307726893258644&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

<script type="text/javascript">(function (w, d) {w.amo_pixel_token = 'p1Ip4iB8yqaEyXU9HPmcTDaw7q1RRL6mUaHuC/LooNrqSeY04xnhWLPuy1xGf9Wy';var s = document.createElement('script'), f = d.getElementsByTagName('script')[0];s.id = 'amo_pixel_js';s.type = 'text/javascript';s.async = true;s.src = 'http://dp-front-int-balancer.serversru.production.dp.amosrv.ru/pixel/js/tracker/pixel.js?token=' + w.amo_pixel_token;f.parentNode.insertBefore(s, f);})(window, document);</script>

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
    'href' => '/services',
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
    'href' => '/works',
  ),
  array (
    'name' => 'Блог',
    'href' => '/blog',
  ),
);
$bottom_menu = array(
  array (
    'name' => $blog_categories[16]['name'],
    'href' => $blog_categories[16]['href'],
    'children' => $blog_categories[16]['children_category'],
  ),
  array (
    'name' => 'Фундамент',
    'href' => $blog_categories[13]['href'],
  ),
  array (
    'name' => 'проектирование и дизайн',
    'href' => '/krovlya/blog_roof_project',
  ),
  array (
    'name' => 'строительство домов',
    'href' => '/stroitelstvo_domov',
  ),
);

$logo = '/image/catalog/ROOFER_LOGO_1.svg';
?>

<?php
$header_type = 'big';
$header_class = '';
if ( isset($header_type) && $header_type != '' ) {
  $header_class = 'header--'.$header_type;
}
?>

  <header class="site__header header <?php echo $header_class; ?>">
    <?php if ( isset($header_type) && $header_type == 'big' ) { ?>
    <div class="header__top">
      <div class="container">
        <div class="row">
          <div class="col-xs-3 col-sm-1">
            <div class="header__logo logo">
              <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>" class="logo__link"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="logo__img" /></a>
              <?php } else { ?>
              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
          </div>
          <div class="col-xs-9 col-sm-11">
            <div class="header__inner">
              <!-- <div class="header__top-text" id="rst_phone"><b>работаем по москве и мо <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>"><?php echo $telephone; ?></a></b></div> -->
              <div class="header__top-text"><span>работаем по москве и мо </span><a  id="rst_phone" href="tel:84952350330">8 (495) 235-03-30</a></div>
              <div class="header__cart" id="cart_wrapper">
                <a href="#menu-prod" class="header__cart-btn mf-popup" data-effect="mfp-zoom-in">Товары</a>
                <a href="#menu-serv" class="header__cart-btn mf-popup" data-effect="mfp-zoom-in">Услуги</a>
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
          <div class="col-xs-3 col-sm-1"></div>
          <div class="col-xs-9 col-sm-11">
            <div class="header__mob-menu-btn mob-menu__btn">
              <span></span>
              <span></span>
              <span></span>
            </div>
            <ul class="header__bottom-menu js-mob-menu">

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
    <?php } else { ?>
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
              <!-- <div class="header__top-text" id="rst_phone"><b>работаем по москве и мо <a href="tel:<?php echo preg_replace('/[^0-9+]/', '', $telephone); ?>"><?php echo $telephone; ?></a></b></div> -->
              <div class="header__top-text"><b>работаем по москве и мо <a  id="rst_phone" href="tel:84952350330" style="color: red;">8 (495) 235-03-30</a></b></div>
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
    <?php } ?>
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

  <?php include dirname(__FILE__, 2).'/parts/project_cat.tpl'; ?>
