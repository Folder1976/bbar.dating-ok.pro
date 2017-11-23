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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Fira+Sans:300,300i,400,400i,500,700" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/style.min.css" rel="stylesheet">
<script src="catalog/view/theme/default/js/scripts.js"></script>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
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
            <div class="col-md-2">
              <span class="phone"><a href="tel:380638732900">+38 063 873 29 00<?php //echo $telephone; ?></a></span>
            </div>
            <div class="col-md-8">
              <div class="top-nav">
                <ul>
                  <li><a href="#">Регистрация</a>/<a href="#">Вход</a></li>
                  <li><a href="#">Оптовикам</a></li>
                  <li><a href="#">Новости</a></li>
                  <li><a href="#">Обучение</a></li>
                  <li><a href="#">Отзывы</a></li>
                  <li><a href="#">Контакты</a></li>
                </ul>
              </div>
            </div>
            <div class="col-md-2">
              <div class="top-searh"><?php echo $search; ?></div>
            </div>
          </div>
        </div>
      </div>

      <div class="middle-line">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="discount">До 20 октября на продукцию Lovely скидка 5%!</div>
            </div>
            <div class="col-md-6">
              <div class="logo">
                <?php if ($logo) { ?>
                  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a>
                <?php } else { ?>
                  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                <?php } ?>
              </div>
            </div>
            <div class="col-md-3">
              <div class="shopping-cart"><?php echo $cart; ?></div>
            </div>
          </div>
        </div>
      </div>

      <div class="bottom-line">
        <ul>
          <li><a href="#">Весь каталог</a></li>
          <li><a href="#">Lash-мастер</a></li>
          <li><a href="#">Nail-мастер</a></li>
          <li><a href="#">Депиляция</a></li>
          <li><a href="#">Распродажа</a></li>
        </ul>
      </div>
    </header>




