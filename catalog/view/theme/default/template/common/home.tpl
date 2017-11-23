<?php echo $header; ?>

<div class="slider"><?php echo $content_top; ?></div>

<div class="container">
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





<div class="last-news">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="#">
                    <img src="/image/news/foto1.jpg" alt="">
                    <div class="title">Ламинирование ресниц. Почему все страхи - всего лишь миф?</div>
                </a>
                <div class="date">19.10.2017</div>
            </div>
            <div class="col-md-3">
                <a href="#">
                    <img src="/image/news/foto2.jpg" alt="">
                    <div class="title">Правильний уход за нарощенными ресницами</div>
                </a>
                <div class="date">19.10.2017</div>
            </div>
            <div class="col-md-3">
                <a href="#">
                    <img src="/image/news/foto3.jpg" alt="">
                    <div class="title">Как распознать профессионального бровиста?</div>
                </a>
                <div class="date">19.10.2017</div>
            </div>
            <div class="col-md-3">
                <a href="#">
                    <img src="/image/news/foto4.jpg" alt="">
                    <div class="title">Классика или объёмное наращивание?</div>
                </a>
                <div class="date">19.10.2017</div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row g-center">
            <a href="#" class="g-btn">Читать все новости</a>
        </div>
    </div>
</div>





<div class="container">
    <h2>Интернет-магазин профкосметики</h2>
    <p>Чем объёмнее наращивание, тем тоньше используемые в нем искусственные ресницы. Это сделано с целью защиты родной ресницы от перегруженности. Поэтому не стоит беспокоиться, что объёмное наращивание повредит Вашим ресницам: их густотой и пышностью можно абсолютно безопасно наслаждаться длительное время.</p>
    <p><a href="#">Читать полностью</a></p>
</div>








<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>