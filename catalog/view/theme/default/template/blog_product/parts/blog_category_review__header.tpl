<h1 class="section-title text-left"><svg class="icon section-title__icon">
    <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#reviews"></use>
  </svg> Отзывы о компании</h1>



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




<?php if (false) { //($categories) { ?>
<div class="reviews-nav">
  <?php foreach ($categories as $category) { ?>
    <?php if ($category['blog_category_id'] != 26 ) { ?>

    <?php
    switch ($category['blog_category_id']) {
      case 30: // Крыши ДО и ПОСЛЕ
        $icon = 'house';
        break;

      case 29: // Текстовые отзывы
        $icon = 'reviews-text';
        break;

      case 28: // Видеоотзывы
        $icon = 'reviews-video';
        break;

      case 27: // Отдел качества
        $icon = 'review-quality-dep';
        break;

      default:
        $icon = 'reviews';
        break;
    }
    ?>


    <?php if ($category['blog_category_id'] == $active_blog_category_id) { ?>
    <a href="<?php echo $category['href']; ?>" class="reviews-nav__link is-active">
    <?php } else { ?>
    <a href="<?php echo $category['href']; ?>" class="reviews-nav__link">
    <?php } ?>
      <svg class="icon reviews-nav__icon">
        <use xlink:href="catalog/view/theme/default/img/sprite/symbol/sprite.svg#<?php echo $icon; ?>"></use>
      </svg>
      <span class="reviews-nav__text"><?php echo $category['name_no_prod']; ?></span>
    </a>
    <?php } ?>
  <?php } ?>

</div>
<?php } ?>
