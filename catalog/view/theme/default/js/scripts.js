$(document).ready(function(){function n(){a.removeClass("open")}function o(){e.removeClass("open")}function s(n){$.fancybox.open({content:n,type:"html",padding:0,margin:0,autoSize:!1,infobar:!0,toolbar:!0,baseClass:"fb-modal"})}var a=$(".header .top-nav");$(".js-mob-top-nav").on("click",function(){a.hasClass("open")?n():a.addClass("open")}),$(document).mouseup(function(o){0===$(o.target).closest(".js-mob-top-nav").length&&0===$(o.target).closest(a).length&&n()});var e=$(".header .cat-nav");$(".js-mob-cat-nav").on("click",function(){e.hasClass("open")?o():e.addClass("open")}),$(document).mouseup(function(n){0===$(n.target).closest(".js-mob-cat-nav").length&&0===$(n.target).closest(e).length&&o()}),$(".js-dropdown").on("click",function(){var n=$(this).parent().find(".dropdown-menu");n.hasClass("open")?n.removeClass("open"):n.addClass("open")}),$(document).mouseup(function(n){0===$(n.target).closest(".dropdown-menu").length&&0===$(n.target).closest(".js-dropdown").length&&$(".dropdown-menu").removeClass("open")}),$(".js-dropdown-filter").on("click",function(){var n=$(this).parent().find(".dropdown-filter");n.hasClass("open")?(n.removeClass("open").css({height:0}),$(this).removeClass("open")):(n.addClass("open").css({height:$(n)[0].scrollHeight}),$(this).addClass("open"))}),$(".js-dropdown-link").on("click",function(){if($(this).hasAttr("data-toggle"))n=$("."+$(this).data("toggle"));else var n=$(this).parent().find(".dropdown-div");n.hasClass("open")?(n.removeClass("open").animate({height:0},200),$(this).removeClass("open")):(n.addClass("open").animate({height:$(n)[0].scrollHeight},200),$(this).addClass("open"))}),$(".js-open-registration").on("click",function(){var n=$("#modal-account");n.find(".registratin").css("display","block"),n.find(".authorization").css("display","none"),n.find(".remind-password").css("display","none"),$("body").hasClass("fancybox-active")||s(n)}),$(".js-open-authorization").on("click",function(){var n=$("#modal-account");n.find(".registratin").css("display","none"),n.find(".authorization").css("display","block"),n.find(".remind-password").css("display","none"),$("body").hasClass("fancybox-active")||s(n)}),$(".js-open-remind-password").on("click",function(){var n=$("#modal-account");n.find(".registratin").css("display","none"),n.find(".authorization").css("display","none"),n.find(".remind-password").css("display","block"),$("body").hasClass("fancybox-active")||s(n)}),$(".panel-title").on("click",function(){return $(this).parent().parent().find(".panel-collapse").toggle(),!1}),$("body").on("click",".alert .close",function(){var n=$(this).data("dismiss");$("."+n).remove()}),$(".filter-block .list").mCustomScrollbar()});