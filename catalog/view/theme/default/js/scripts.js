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
        menu.addClass('open').css({height: $(menu)[0].scrollHeight});
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
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/

});
