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
<!-- <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script> -->
<!-- <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" /> -->
<!-- <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> -->
<!-- <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> -->
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->
<!-- <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet"> -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link href="//fonts.googleapis.com/css?family=Fira+Sans:300,300i,400,400i,500,700" rel="stylesheet">
<link href="/catalog/view/theme/default/stylesheet/style.min.css" rel="stylesheet">
<script src="/catalog/view/theme/default/js/scripts_lib.js" type="text/javascript"></script>
<script src="/catalog/view/theme/default/js/scripts.js" type="text/javascript"></script>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="/catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">

  <div class="page-wrapper">
    <header class="header">
      <div class="top-line">
        <div class="container">
          <div class="row">
            <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12">
              <span class="phone"><a href="tel:<?php echo preg_replace('~[^0-9]+~','',$telephone); ?>"><?php echo $telephone; ?></a></span><button class="top-nav-toggle g-btn g-btn--top-nav-toggle js-mob-top-nav"><span><i class="fa fa-bars" aria-hidden="true"></i></span></button>
            </div>
            <div class="col-lg-8 col-md-7 col-sm-4">
              <div class="top-nav">
                <ul>
                <?php if ($logged) { ?>
                  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                  <!--li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li-->
                  <!--li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li-->
                  <!--li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li-->
                  <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <?php } else { ?>
                  <li><a href="javascript:void(0)" class="js-open-registration">Регистрация</a>/<a href="javascript:void(0)" class="js-open-authorization">Вход</a></li>
                <?php } ?>
                  <li><a href="/wholesalers">Оптовикам</a></li>
                  <li><a href="/news">Новости</a></li>
                  <li><a href="/education">Обучение</a></li>
                  <li><a href="/reviews">Отзывы</a></li>
                  <li><a href="/index.php?route=information/contact">Контакты</a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-12">
              <div class="top-searh"><?php echo $search; ?></div>
            </div>
          </div>
        </div>
      </div>

      <div class="middle-line">
        <div class="container">
          <div class="row">
            <div class="col-sm-3">
              <div class="discount">До 20 октября на продукцию Lovely скидка 5%!</div>
            </div>
            <div class="col-sm-6">
              <div class="logo">
                <?php if ($logo) { ?>
                  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a>
                <?php } else { ?>
                  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                <?php } ?>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="shopping-cart"><?php echo $cart; ?></div>
            </div>
          </div>
        </div>
      </div>

      <div class="bottom-line">
        <button class="cat-nav-toggle g-btn g-btn--cat-nav-toggle js-mob-cat-nav"><span><i class="fa fa-bars" aria-hidden="true"></i></span></button>
        <div class="cat-nav">
          <ul>
            <?php
            foreach ($categories as $cat) {
              echo '<li><a href="'.$cat['href'].'">'.$cat['name'].'</a></li>';
            }
            ?>
          </ul>
        </div>
      </div>
    </header>




    <div id="modal-account" class="modal-account" style="display: none;">
      <div class="registratin">
        <h2>Регистрация профиля</h2>
        <form action="/index.php?route=account/register" method="POST" >
          <div class="form-group required">
            <input type="text" name="firstname" placeholder="Имя" required >
            <input type="hidden" name="lastname" placeholder="*" required >
            <input type="hidden" name="telephone" placeholder="+3" required >
            <input type="hidden" name="address_1" placeholder="*" required >
            <input type="hidden" name="city" placeholder="0" required >
            <input type="hidden" name="country_id" placeholder="176" required >
            <?php if (false) { //($error_name) { ?>
            <div class="text-danger"><?php echo $error_name; ?></div>
            <?php } ?>
          </div>
          <div class="form-group required">
            <input type="text" name="email" placeholder="E-mail" required >
            <?php if (false) { //($error_email) { ?>
            <div class="text-danger"><?php echo $error_email; ?></div>
            <?php } ?>
          </div>
          <div class="form-group required">
            <input type="password" name="password" placeholder="Пароль" required >
            <?php if (false) { //($error_password) { ?>
            <div class="text-danger"><?php echo $error_password; ?></div>
            <?php } ?>
          </div>

          <p>На ваш E-mail будет отправлено письмо для подтверждения введенн данных.</p>

          <p><input type="submit" class="g-btn" value="Создать новый профиль" style="width: 100%;"></p>
        </form>

        <p style="display: none;">Создавая новый профиль, я принимаю условия<br><a href="#">пользовательского соглашения</a></p>

        <!--h4>Или регистрируйтесь через социальные сети:</h4>
        <div class="social-login">
          <a href="#"><i class="ico-gp-login"></i></a>
          <a href="#"><i class="ico-fb-login"></i></a>
          <a href="#"><i class="ico-tw-login"></i></a>
        </div-->
      </div>



      <div class="authorization">
        <h2>Вход в личный кабинет</h2>

        <form action="/index.php?route=account/login" method="POST">
          <div class="form-group required">
            <input type="text" name="email" placeholder="Ваш E-mail" required >
            <?php if (false) { //($error_email) { ?>
            <div class="text-danger"><?php echo $error_email; ?></div>
            <?php } ?>
          </div>
          <div class="form-group required">
            <input type="password" name="password" placeholder="Пароль" required >
            <?php if (false) { //($error_password) { ?>
            <div class="text-danger"><?php echo $error_password; ?></div>
            <?php } ?>
          </div>

          <p style="float: left;"><input type="submit" class="g-btn" value="Вход"></p>
          <p style="margin-left: 165px;"><a href="javascript:void(0)" class="js-open-remind-password">Напомнить пароль</a><br>
          <a href="javascript:void(0)" class="js-open-registration">Создать новый профиль</a></p>
        </form>

        <!--h4>Или войдите, используя социальные сети:</h4>
        <div class="social-login">
          <a href="#"><i class="ico-gp-login"></i></a>
          <a href="#"><i class="ico-fb-login"></i></a>
          <a href="#"><i class="ico-tw-login"></i></a>
        </div-->
      </div>



      <div class="remind-password">
        <h2>Напомнить пароль</h2>

        <form action="/index.php?route=account/forgotten" method="POST">
          <div class="form-group required">
            <input type="text" name="email" placeholder="Ваш E-mail" required >
            <?php if (false) { //($error_email) { ?>
            <div class="text-danger"><?php echo $error_email; ?></div>
            <?php } ?>
          </div>

          <p>Введите адрес почты, который вы указывали при регистрации, на этот адрес отправим пароль.</p>          
          <p><a href="javascript:void(0)" class="js-open-authorization">Я вспомнил пароль</a> <a href="javascript:void(0)" class="js-open-registration" style="float: right;">Создать новый профиль</a></p>

          <p style="text-align: center;"><input type="submit" class="g-btn" value="Напомнить пароль"></p>
        </form>
      </div>

    </div>  <!-- end #modal-account -->


