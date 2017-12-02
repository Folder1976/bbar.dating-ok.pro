<?php echo $header; ?>
<main>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
</div>

<div id="content">
  <div class="container">
    <h1><?php echo $heading_title; ?></h1>

    <div class="row">

      <div class="col-sm-4 contact-info">
        <address><i class="ico-house"></i><span><?php echo $address; ?></span></address>
        <div><i class="ico-phone-call"></i><span><a href="tel:<?php echo preg_replace('~[^0-9]+~','',$telephone); ?>"><?php echo $telephone; ?></a></span></div>
        <div><i class="ico-email"></i><span><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></span></div>
        <div><i class="ico-like"></i><span>odejda</span></div>
        <div style="margin-top: 30px;"><a href="javascript:void(0)" class="g-btn g-btn--show-contact-form collapse-dropdown-link js-dropdown-link" data-toggle="contact-form">Обратная связь</a></div>
      </div>

      <div class="col-sm-8 map">
        <?php if (true) {//($geocode) { ?>
        <img src="/image/catalog/demo/map.jpg" alt="">
        <!-- <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php //echo $button_map; ?></a> -->
        <?php } ?>
      </div>

    </div>

    <div class="row">
      <div class="col-md-12">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="collapse contact-form">
          <fieldset>
            <legend><?php echo $text_contact; ?></legend>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
              <div class="col-sm-10">
                <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                <?php if ($error_name) { ?>
                <div class="text-danger"><?php echo $error_name; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
              <div class="col-sm-10">
                <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                <?php if ($error_email) { ?>
                <div class="text-danger"><?php echo $error_email; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
              <div class="col-sm-10">
                <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                <?php if ($error_enquiry) { ?>
                <div class="text-danger"><?php echo $error_enquiry; ?></div>
                <?php } ?>
              </div>
            </div>
            <?php echo $captcha; ?>
          </fieldset>
          <div class="buttons">
            <div class="pull-right">
              <input class="g-btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
            </div>
          </div>
        </form>
      </div>
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
</div>

</main>
<?php echo $footer; ?>
