<?php
$public_date = '19.01.2017';
?>

<?php echo $header; ?>
<main class="information">
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
    <div id="content" class="content"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <div class="date" style="display: none;"><?php echo $public_date; ?></div>
      <?php echo $description; ?><?php echo $content_bottom; ?></div>
  </div>

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
</div>
</main>
<?php echo $footer; ?>