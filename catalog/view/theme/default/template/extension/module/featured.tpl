<?php
$manufacturer_name = 'Lovely';
?>

<div class="container featured">
<h2><?php echo $heading_title; ?></h2>
<div class="row">
  <div id="owl-product-new" class="owl-carousel product-layout">
  <?php foreach ($products as $product) { ?>
    <div class="item">

      <div class="product-thumb transition">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div class="caption">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $manufacturer_name; ?></a></h4>
          <h3><?php echo $product['name']; ?></h3>
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
          <?php $price_and_currency = explode('  ', $product['price']); ?>

          <p class="price">
            <?php if (!$product['special']) { ?>
            <?php echo round($price_and_currency[0], 2); ?><span class="currency"> <?php echo $price_and_currency[1]; ?></span>
            <?php } else { ?>
            <?php $special_price_and_currency = explode('  ', $product['special']); ?>
            <span class="price-old"><?php echo round($price_and_currency[0], 2); ?></span> <span class="price-new"><?php echo round($special_price_and_currency[0], 2); ?></span> <span class="currency"> <?php echo $special_price_and_currency[1]; ?></span>
            <?php } ?>
            <?php if ($product['tax']) { ?>
            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
            <?php } ?>
          </p>
          <?php } ?>
        </div>
        <div class="button-group">
          <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="g-btn g-btn--buy"><span><?php echo $button_cart; ?></span></button>
          <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="g-btn g-btn--small g-btn--wishlist"><i class="fa fa-heart"></i></button>
          <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');" class="g-btn g-btn--small g-btn--compare"><i class="fa fa-exchange"></i></button>
        </div>
      </div>

    </div> <!-- end item -->
  <?php } ?>
  </div>
  
</div>
</div>

<script type="text/javascript"><!--
$('#owl-product-new').owlCarousel({
  items: 5,
  // autoPlay: 3000,
  // singleItem: true,
  navigation: true,
  navigationText : ["", ""],
  // pagination: false,
  // transitionStyle: 'fade'
});
--></script>
