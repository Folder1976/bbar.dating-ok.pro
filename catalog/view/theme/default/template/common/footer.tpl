  <div class="page-buffer"></div>
</div>
<footer class="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-10">
          <div class="footer-nav">
            <ul>
              <li><a href="javascript:void(0)" class="js-open-registration">Регистрация</a>/<a href="javascript:void(0)" class="js-open-authorization">Вход</a></li>
              <li><a href="#">Оптовикам</a></li>
              <li><a href="#">Новости</a></li>
              <li><a href="#">Обучение</a></li>
              <li><a href="#">Отзывы</a></li>
              <li><a href="/index.php?route=information/contact">Контакты</a></li>
            </ul>
          </div>
        </div>

        <div class="col-md-2">
          <div class="pay-card">
            <i class="ico-visa-cart"></i><i class="ico-master-cart"></i>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="logo">
            <img src="/image/catalog/logo-white.png" alt="">
            <p class="copy">Магазин профкосметики BeautyBar 2017<?php //echo $powered; ?></p>
          </div>
        </div>

        <div class="col-md-4">
          <div class="footer-menu">
            <div class="title">О компании</div>
            <ul class="list">
              <li><a href="/index.php?route=information/contact">Наши контакты</a></li>
              <li><a href="/about_us">Об интернет-магазине</a></li>
              <li><a href="#">Почему мы?</a></li>
              <li><a href="#">Карьера у нас</a></li>
              <li><a href="#">Блог</a></li>
            </ul>
          </div>

          <div class="footer-menu">
            <div class="title">Помощь</div>
            <ul class="list">
              <li><a href="/delivery">Доставка</a></li>
              <li><a href="#">Оплата</a></li>
              <li><a href="#">Возврат</a></li>
              <li><a href="#">Персональный счет</a></li>
              <li><a href="#">Вопросы-ответы</a></li>
            </ul>
          </div>
        </div>

        <div class="col-md-4">
          <div class="subscribe">
            <p>Подпишитесь и получайте новости об акциях и специальных предложений</p>
            <form action="" class="subscribe-form">
              <input type="text" name="subscribe" value="" placeholder="Ваш e-mail" class="subscribe-input" /><button type="button" class="subscribe-btn">Подписаться</button>
            </form>
            <p class="social">Мы в соц сетях: <span class="social-link"><a href="#"><i class="ico-fb"></i></a> <a href="#"><i class="ico-tw"></i></a></span></p>
          </div>
        </div>

      </div>
    </div>
  </div>
</footer>


<!--         <?php if ($informations) { ?>
        <div class="col-sm-3">
          <h5><?php echo $text_information; ?></h5>
          <ul class="list-unstyled">
            <?php foreach ($informations as $information) { ?>
            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
        <div class="col-sm-3">
          <h5><?php echo $text_service; ?></h5>
          <ul class="list-unstyled">
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
          </ul>
        </div>
        <div class="col-sm-3">
          <h5><?php echo $text_extra; ?></h5>
          <ul class="list-unstyled">
            <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
            <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
            <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
            <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          </ul>
        </div>
        <div class="col-sm-3">
          <h5><?php echo $text_account; ?></h5>
          <ul class="list-unstyled">
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
        </div> -->


<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
 <script>
      function showForm(data){
        $.ajax({
          url: 'index.php?route=product/fastorder/getForm',
          type: 'post',
          data: {product_name: data['product_name'], price: data['price'] ,product_id: data['product_id'], product_link: data['product_link']},

          beforeSend: function() {
          },
          complete: function() {
          },
          success: function(result) {
            $('#fastorder-form-container'+data['product_id']).html(result);
          },
          error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
        });
    };
    </script>
</body></html>