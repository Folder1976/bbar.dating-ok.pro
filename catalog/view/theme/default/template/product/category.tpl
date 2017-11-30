<?php echo $header; ?>

<main class="category">
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <h2><?php echo $heading_title; ?></h2>
</div>


<div class="container">
  <div class="flex-row">


    <div class="filter-column">
      <?php if ($categories) { ?>
      <div class="filter-block">
        <h3 class="title js-dropdown-filter open"><?php echo $text_refine; ?></h3>
        <div class="list categories dropdown-filter open">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } ?>

      <?php echo $column_left; ?>

    </div>


    <div class="container products-column">
      <?php if ($products) { ?>
      <div class="row">
        <div class="sort-line">
          <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>

          <ul class="sort">
            <?php
            foreach ($sorts as $key => $value) {
              if ( strpos($value['value'], $sort) === false ) {
                echo '<li>';
              } else {
                echo '<li class="active">';
              }
              echo '<a href="'.$value['href'].'">'.$value['text'].'</a></li>';
            }
            ?>
          </ul>

          <div class="order-by">
            <a href="<?php echo $_SERVER['REDIRECT_URL'].'?sort='.$sort.'&amp;order=ASC'; ?>" class="order-by--asc <?php if ($order == 'ASC') echo 'active'; ?>"></a>
            <a href="<?php echo $_SERVER['REDIRECT_URL'].'?sort='.$sort.'&amp;order=DESC'; ?>" class="order-by--desc <?php if ($order == 'DESC') echo 'active'; ?>"></a>
          </div>

        </div>
      </div>

      <div class="row products-row">
        <div class="products">
          <?php foreach ($products as $product) { ?>
          <div class="product-layout product-grid">
            <div class="product-thumb">
              <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
              <div>
                <div class="caption">
                  <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                  <p><?php echo $product['description']; ?></p>
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
                </div>
                <div class="button-group">
                  <!-- Button fastorder -->
                    <div class="button-gruop">
                      <?php echo $product['fastorder']; ?>
                    </div>
                  <!-- END :  button fastorder -->
                  <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="g-btn g-btn--small g-btn--buy"><span><?php echo $button_cart; ?></span></button>
                  <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="g-btn g-btn--small g-btn--wishlist"><i class="fa fa-heart"></i></button>
                  <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');" class="g-btn g-btn--small g-btn--compare"><i class="fa fa-exchange"></i></button>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
      <div class="row products-bottom">
        <div class="col-sm-4"></div>
        <div class="col-sm-4"><a href="#" class="g-btn g-btn--more-prod">Больше товаров</a></div>
        <div class="col-sm-4 text-right"><?php echo $pagination; ?></div>
      </div>
      <?php } else { ?>
      <div class="row">
        <h3 class="text-center"><?php echo $text_empty; ?></h3>
      </div>
      <?php } ?>
    </div>
  </div>
</div>







<div class="container">
  <div class="row">
    <div class="advantages">
      <ul>
          <li>
              <i class="ico-bonus"></i>
              <div class="title">Bonus Plus</div>
              <div class="desc">Экономь и накапливай бонусы с каждой покупкой</div>
          </li>
          <li>
              <i class="ico-delivery"></i>
              <div class="title">Быстрая доставка</div>
              <div class="desc">Доставляем товар по всей стране в течение 2 дней</div>
          </li>
          <li>
              <i class="ico-coupon"></i>
              <div class="title">Лучшие цены</div>
              <div class="desc">Экономь и накапливай бонусы с каждой покупкой</div>
          </li>
          <li>
              <i class="ico-guarantees"></i>
              <div class="title">Гарантии</div>
              <div class="desc">Официальная гарантия от производителя</div>
          </li>
      </ul>
    </div>
  </div>


  <div class="row">
      <h2>Купить масла для кутикул в Киеве</h2>
      <p>Чем объёмнее наращивание, тем тоньше используемые в нем искусственные ресницы. Это сделано с целью защиты родной ресницы от перегруженности. Поэтому не стоит беспокоиться, что объёмное наращивание повредит Вашим ресницам: их густотой и пышностью можно абсолютно безопасно наслаждаться длительное время.</p>
      <p><a href="#">Читать полностью</a></p>
  </div>
</div>


</main>

<?php echo $footer; ?>
