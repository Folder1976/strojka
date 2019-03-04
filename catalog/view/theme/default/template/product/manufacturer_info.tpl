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

      <?php if ($products) { ?>
      
      <div class="row">
      <?php if ($products) { ?>

         <div class="row">
          <div class="col-md-12">
            <div class="product-list">
              <?php foreach ($products as $product) { ?>

                <div class="product-layout">
                  <div class="product-layout__image product-thumb">
                    <!-- Product edit link on front * * * Start -->
                    <?php if(isset($token) AND $token){ ?>
                    <div style="position: absolute;border: 1px solid red;padding: 2px;z-index: 999;background-color: #ffe0e0;">
                      <a style="margin: 2px;" href="/admin/index.php?route=catalog/product/edit&product_id=<?php echo $product['product_id']; ?>&token=<?php echo $token; ?>" target="_blank">edit</a>
                    </div>
                    <?php } ?>
                    <!-- Product edit link on front * * * End -->
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                  </div>
                  <div class="product-layout__caption">
                    <h4 class="product-layout__title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                    <?php if ($product['rating']) { ?>
                    <div class="rating">
                      <?php for ($i = 1; $i <= 5; $i++) { ?>
                      <?php if ($product['rating'] < $i) { ?>
                      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                      <?php } else { ?>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                      <?php } ?>
                      <?php } ?>
                    </div>
                    <?php } ?>

                    <div class="product-layout__attr-list">
                      
                      <?php $show_attributes = array('23', '29'); $i = 1; ?>
                      
                      <?php foreach($product['attributes'] as $attr){ ?>
                      <?php foreach($attr['attribute'] as $attribute){ ?>
                      
                        <?php //Пока не определились какие атрибуты выводить - просто два первых ?>
                        <?php if($i++ < 3){ ?>
                        <?php //if(in_array($attribute['attribute_id'], $show_attributes)){ ?>
                          <div class="product-layout-attr"><span class="product-layout-attr__title"><?php echo $attribute['name']; ?>:</span> <?php echo $attribute['text']; ?></div>
                        <?php } ?>
                      <?php } ?>
                      <?php } ?>
                    </div>

                    <div class="product-layout__stock is-instock"><?php echo $product['stock']; ?></div>

                    <?php if ($product['special']) { ?>
                      <div class="product-layout__special-price">
                        <div class="product-layout__olp-price"><?php echo $product['price']; ?></div>
                        <div class="product-layout__special-percent">[<?php echo (int)$product['persent'];?>%]</div>
                      </div>
                    <?php } ?>

                  </div>
                  <div class="product-layout__bottom">

                    <?php if ($product['price']) { ?>
                      <div class="product-layout__price"><?php echo $product['price']; ?></div>
                    <?php } ?>
                    <div class="product-layout__button-group">
                      <?php if(isset($product['in_cart'])){ ?>
                      <button type="button" class="btn btn--black btn--dib btn--buy in_cart" onclick="cart.add('<?php echo $product['product_id']; ?>');">В корзине</button>
                      <?php }else{ ?>
                      <button type="button" class="btn btn--black btn--dib btn--buy" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
                      <?php } ?>
                      <button type="button" class="btn btn--transparent btn--dib btn--buy-click uptocall-mini-phone"
                              data-src="<?php echo $product['thumb']; ?>"
                              data-name="<?php echo $product['name']; ?>"
                              data-price="<?php echo $product['price']; ?>"
                              >Купить в 1 клик</button>
                    </div>
                  </div>
                </div>
              <?php } ?>
            </div>
          </div>
        </div>
        <div class="pagination-wrap">
          <div class=""><?php echo $pagination; ?></div>
          <div class="form-group input-group input-group-sm limit-per-page">
            <!--label for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select-->
          </div>
        </div>
      <?php } ?>

      </div>
       <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
    </div>

    <aside id="column-left" class="col-md-3 col-md-pull-9">
      <?php echo $column_left; ?>

      <div class="seller">
        <div class="seller__img">
          <img src="catalog/view/theme/default/img/tmpimg/seller-foto.jpg" alt="Антипин Александр. Менеджер отдела продаж">
        </div>
        <div class="seller__name">Антипин Александр</div>
        <div class="seller__post">Менеджер отдела продаж</div>
        <div class="seller__text">— Помогу выбрать подходящую услугу для кровли.</div>
        <p><a href="/online-calc">Калькулятор и составление КП</a></p>
        <p><a href="#get-consultation" class="mf-popup" data-effect="mfp-zoom-in">Закажите замер по Москве и МО</a></p>
      </div>
    </aside>
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
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($products) { ?>
      
      <div class="row">
      <?php if ($products) { ?>

         <div class="row">
          <div class="col-md-12">
            <div class="product-list">
              <?php foreach ($products as $product) { ?>

                <div class="product-layout">
                  <div class="product-layout__image product-thumb">
                    <!-- Product edit link on front * * * Start -->
                    <?php if(isset($token) AND $token){ ?>
                    <div style="position: absolute;border: 1px solid red;padding: 2px;z-index: 999;background-color: #ffe0e0;">
                      <a style="margin: 2px;" href="/admin/index.php?route=catalog/product/edit&product_id=<?php echo $product['product_id']; ?>&token=<?php echo $token; ?>" target="_blank">edit</a>
                    </div>
                    <?php } ?>
                    <!-- Product edit link on front * * * End -->
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
                  </div>
                  <div class="product-layout__caption">
                    <h4 class="product-layout__title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                    <?php if ($product['rating']) { ?>
                    <div class="rating">
                      <?php for ($i = 1; $i <= 5; $i++) { ?>
                      <?php if ($product['rating'] < $i) { ?>
                      <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                      <?php } else { ?>
                      <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                      <?php } ?>
                      <?php } ?>
                    </div>
                    <?php } ?>

                    <div class="product-layout__attr-list">
                      
                      <?php $show_attributes = array('23', '29'); $i = 1; ?>
                      
                      <?php foreach($product['attributes'] as $attr){ ?>
                      <?php foreach($attr['attribute'] as $attribute){ ?>
                      
                        <?php //Пока не определились какие атрибуты выводить - просто два первых ?>
                        <?php if($i++ < 3){ ?>
                        <?php //if(in_array($attribute['attribute_id'], $show_attributes)){ ?>
                          <div class="product-layout-attr"><span class="product-layout-attr__title"><?php echo $attribute['name']; ?>:</span> <?php echo $attribute['text']; ?></div>
                        <?php } ?>
                      <?php } ?>
                      <?php } ?>
                    </div>

                    <div class="product-layout__stock is-instock"><?php echo $product['stock']; ?></div>

                    <?php if ($product['special']) { ?>
                      <div class="product-layout__special-price">
                        <div class="product-layout__olp-price"><?php echo $product['price']; ?></div>
                        <div class="product-layout__special-percent">[<?php echo (int)$product['persent'];?>%]</div>
                      </div>
                    <?php } ?>

                  </div>
                  <div class="product-layout__bottom">

                    <?php if ($product['price']) { ?>
                      <div class="product-layout__price"><?php echo $product['price']; ?></div>
                    <?php } ?>
                    <div class="product-layout__button-group">
                      <?php if(isset($product['in_cart'])){ ?>
                      <button type="button" class="btn btn--black btn--dib btn--buy in_cart" onclick="cart.add('<?php echo $product['product_id']; ?>');">В корзине</button>
                      <?php }else{ ?>
                      <button type="button" class="btn btn--black btn--dib btn--buy" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
                      <?php } ?>
                      <button type="button" class="btn btn--transparent btn--dib btn--buy-click uptocall-mini-phone"
                              data-src="<?php echo $product['thumb']; ?>"
                              data-name="<?php echo $product['name']; ?>"
                              data-price="<?php echo $product['price']; ?>"
                              >Купить в 1 клик</button>
                    </div>
                  </div>
                </div>
              <?php } ?>
            </div>
          </div>
        </div>
        <div class="pagination-wrap">
          <div class=""><?php echo $pagination; ?></div>
          <div class="form-group input-group input-group-sm limit-per-page">
            <!--label for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select-->
          </div>
        </div>
      <?php } ?>

      </div>
       <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php } ?>

<?php echo $footer; ?>
