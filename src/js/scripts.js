$(document).ready(function() {
	// debugger;

/*************************************************************/
// открываем/закрываем моб меню
var top_nav = $('.header .top-nav');
function openTopNav(){
    top_nav.addClass('open');
}
function closeTopNav(){
    top_nav.removeClass('open');
}
$('.js-mob-top-nav').on('click', function(){
    if ( top_nav.hasClass('open') ) {
        closeTopNav();
    } else {
        openTopNav();
    }
});
$(document).mouseup(function (e){
    if ( $(e.target).closest('.js-mob-top-nav').length === 0 && $(e.target).closest(top_nav).length === 0 ) {
        closeTopNav();
    }
});


var cat_nav = $('.header .cat-nav');
function openCatNav(){
    cat_nav.addClass('open');
}
function closeCatNav(){
    cat_nav.removeClass('open');
}
$('.js-mob-cat-nav').on('click', function(){
    if ( cat_nav.hasClass('open') ) {
        closeCatNav();
    } else {
        openCatNav();
    }
});
$(document).mouseup(function (e){
    if ( $(e.target).closest('.js-mob-cat-nav').length === 0 && $(e.target).closest(cat_nav).length === 0 ) {
        closeCatNav();
    }
});
/*************************************************************/
// выпадающее меню
$('.js-dropdown').on('click', function(){
    var menu = $(this).parent().find('.dropdown-menu');
    if ( menu.hasClass('open') ) {
        menu.removeClass('open');
    } else {
        menu.addClass('open');
    }
});
$(document).mouseup(function (e){
    if ( $(e.target).closest('.dropdown-menu').length === 0 && $(e.target).closest('.js-dropdown').length === 0 ) {
        $('.dropdown-menu').removeClass('open');
    }
});
/*************************************************************/
// блоки в фильтре кетегорий
$('.js-dropdown-filter').on('click', function(){
    var menu = $(this).parent().find('.dropdown-filter');
    if ( menu.hasClass('open') ) {
        menu.removeClass('open').css({height: 0});
        $(this).removeClass('open');
    } else {
        // menu.addClass('open').css({height: $(menu)[0].scrollHeight});
        menu.addClass('open').css({height: 'auto'});
        $(this).addClass('open');
    }
});

/*************************************************************/
// плавное разворачивание/сворачивание
$('.js-dropdown-link').on('click', function(){
    if ( $(this).hasAttr('data-toggle') ) {
        var menu = $('.' + $(this).data('toggle') );
    } else {
        var menu = $(this).parent().find('.dropdown-div');
    }

    if ( menu.hasClass('open') ) {
        menu.removeClass('open').animate({height: 0}, 200);
        $(this).removeClass('open');
    } else {
        menu.addClass('open').animate({height: $(menu)[0].scrollHeight}, 200);
        $(this).addClass('open');
    }
});
/*************************************************************/
// fancybox
// регистрация / авторизация / напоминание пароля

function open_modal_account(c) {
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
}

$('.js-open-registration').on('click', function(){
    var c = $('#modal-account');
    c.find('.registratin').css('display', 'block');
    c.find('.authorization').css('display', 'none');
    c.find('.remind-password').css('display', 'none');
    if ( !$('body').hasClass('fancybox-active') ) {
        open_modal_account(c);
    }
});

$('.js-open-authorization').on('click', function(){
    var c = $('#modal-account');
    c.find('.registratin').css('display', 'none');
    c.find('.authorization').css('display', 'block');
    c.find('.remind-password').css('display', 'none');
    if ( !$('body').hasClass('fancybox-active') ) {
        open_modal_account(c);
    }
});

$('.js-open-remind-password').on('click', function(){
    var c = $('#modal-account');
    c.find('.registratin').css('display', 'none');
    c.find('.authorization').css('display', 'none');
    c.find('.remind-password').css('display', 'block');
    if ( !$('body').hasClass('fancybox-active') ) {
        open_modal_account(c);
    }
});

/*************************************************************/
// открываем/закрываем панели
$('.panel-title').on('click', function(){
    $(this).parent().parent().find('.panel-collapse').toggle();
    return false;    
});

/*************************************************************/
// закрывает алерты
$('body').on('click', '.alert .close', function(){
    var d = $(this).data('dismiss');
    $('.'+d).remove();
});

/*************************************************************/
// скролл для фильтров в категории товаров
$('.filter-block .list').mCustomScrollbar();

/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/

});
