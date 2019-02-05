
<div class="featured js-featured">
  <?php foreach ($products as $product) { ?>
          <div class="product-layout">
            <div class="product-layout__image product-thumb">
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
                  <div class="product-layout__special-percent">-50%</div>
                </div>
              <?php } ?>

            </div>
            <div class="product-layout__bottom">

              <?php if ($product['price']) { ?>
                <div class="product-layout__price"><?php echo $product['price']; ?></div>
              <?php } ?>
              <div class="product-layout__button-group">
                <?php if($product['in_cart']){ ?>
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












<?php if (false) { ?>

<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
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
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<?php } ?>