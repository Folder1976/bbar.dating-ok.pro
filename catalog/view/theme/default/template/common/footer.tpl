  <div class="page-buffer"></div>
</div>
<footer class="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-xs-12">
          <div class="footer-nav">
            <ul>
              <li><a href="javascript:void(0)" class="js-open-registration">Регистрация</a>/<a href="javascript:void(0)" class="js-open-authorization">Вход</a></li>
              <li><a href="/wholesalers">Оптовикам</a></li>
              <li><a href="/news">Новости</a></li>
              <li><a href="/education">Обучение</a></li>
              <li><a href="/reviews">Отзывы</a></li>
              <li><a href="/index.php?route=information/contact">Контакты</a></li>
            </ul>
          </div>
        </div>

        <div class="col-sm-3 col-xs-12">
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
        <div class="col-lg-4 col-sm-6 col-sx-12">
          <div class="logo">
            <img src="/image/catalog/logo-white.png" alt="">
            <p class="copy">Магазин профкосметики BeautyBar 2017<?php //echo $powered; ?></p>
          </div>
        </div>

        <div class="col-lg-4 visible-lg">
          <div class="footer-menu">
            <div class="title">О компании</div>
            <ul class="list">
              <li><a href="/index.php?route=information/contact">Наши контакты</a></li>
              <li><a href="/about_us">Об интернет-магазине</a></li>
              <li><a href="/why_as">Почему мы?</a></li>
              <li><a href="/Career_with_us">Карьера у нас</a></li>
              <li><a href="/blog">Блог</a></li>
            </ul>
          </div>

          <div class="footer-menu">
            <div class="title">Помощь</div>
            <ul class="list">
              <li><a href="/delivery">Доставка</a></li>
              <li><a href="/Payment">Оплата</a></li>
              <li><a href="/Return">Возврат</a></li>
              <li><a href="/Personal_account">Персональный счет</a></li>
              <li><a href="/faq">Вопросы-ответы</a></li>
            </ul>
          </div>
        </div>

        <div class="col-lg-4 col-sm-6 col-sx-12">
          <div class="subscribe">
            <p>Подпишитесь и получайте новости об акциях и специальных предложений</p>
            <form action="" class="subscribe-form">
              <input type="text" name="subscribe" value="" placeholder="Ваш e-mail" class="subscribe-input" /><button type="button" class="subscribe-btn">Подписаться</button>
            </form>
            <p class="social">Мы в соц сетях: <span class="social-link"><a href="#"><i class="ico-fb"></i></a> <a href="#"><i class="ico-tw"></i></a> <a href="#"><i class="ico-inst"></i></a></span></p>
          </div>
        </div>

      </div>
    </div>

    <div class="container hidden-lg">
      <div class="row">
        <div class="col-xs-6">
          <div class="footer-menu">
            <div class="title">О компании</div>
            <ul class="list">
              <li><a href="/index.php?route=information/contact">Наши контакты</a></li>
              <li><a href="/about_us">Об интернет-магазине</a></li>
              <li><a href="/why_as">Почему мы?</a></li>
              <li><a href="/Career_with_us">Карьера у нас</a></li>
              <li><a href="/blog">Блог</a></li>
            </ul>
          </div>
        </div>

        <div class="col-xs-6">
          <div class="footer-menu">
            <div class="title">Помощь</div>
            <ul class="list">
              <li><a href="/delivery">Доставка</a></li>
              <li><a href="/Payment">Оплата</a></li>
              <li><a href="/Return">Возврат</a></li>
              <li><a href="/Personal_account">Персональный счет</a></li>
              <li><a href="/faq">Вопросы-ответы</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>


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

            $('#fastorder-success'+data['product_id']).hide();

            var c = $('#bs-fastorder'+data['product_id']);
            $.fancybox.open({
              content: c,
              type: 'html',
              padding: 0,
              margin: 0,
              autoSize: false,
              infobar: true,
              toolbar: true,
              baseClass: 'fb-modal',
            });
          },
          error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
        });
    };
    </script>
</body></html>