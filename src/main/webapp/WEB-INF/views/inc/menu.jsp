<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="utf-8"><head>
<meta name="viewport" content="width=device-width, initial-scale=1, , maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover">
​<meta charset="UTF-8">
<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/menu.css">
<title>메뉴</title>

<script>

window.console = window.console || function(t) {};

</script>


<script>

if (document.location.search.match(/type=embed/gi)) {
window.parent.postMessage("resize", "*");
}

</script>

</head>

<body translate="no">

<header>

<nav id='cssmenu'>

<div class="logo"><a href="index">Napmkmk</a></div>

<div id="head-mobile"></div>

<div class="button"></div>

<ul>
	<li class='active'><a href='index'>HOME</a></li>
	<li><a href='#'>Login</a></li>
	<li><a href='#'>Join</a>
	<li><a href='#'>Profile</a>
	<li><a href='#'>Question</a>
	<li><a href='#'>Contact</a>
</ul>
</nav>
</header>

<script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script >

(function($) {

$.fn.menumaker = function(options) { 

var cssmenu = $(this), settings = $.extend({

format: "dropdown",

sticky: false

}, options);

return this.each(function() {

$(this).find(".button").on('click', function(){

$(this).toggleClass('menu-opened');

var mainmenu = $(this).next('ul');

if (mainmenu.hasClass('open')) { 

mainmenu.slideToggle().removeClass('open');

}

else {

mainmenu.slideToggle().addClass('open');

if (settings.format === "dropdown") {

mainmenu.find('ul').show();

}

}

});

cssmenu.find('li ul').parent().addClass('has-sub');

multiTg = function() {

cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');

cssmenu.find('.submenu-button').on('click', function() {

$(this).toggleClass('submenu-opened');

if ($(this).siblings('ul').hasClass('open')) {

$(this).siblings('ul').removeClass('open').slideToggle();

}

else {

$(this).siblings('ul').addClass('open').slideToggle();

}

});

};

if (settings.format === 'multitoggle') multiTg();

else cssmenu.addClass('dropdown');

if (settings.sticky === true) cssmenu.css('position', 'fixed');

resizeFix = function() {

var mediasize = 1000;

if ($( window ).width() > mediasize) {

cssmenu.find('ul').show();

}

if ($(window).width() <= mediasize) {

cssmenu.find('ul').hide().removeClass('open');

}

};

resizeFix();

return $(window).on('resize', resizeFix);

});

};

})(jQuery);
(function($){

$(document).ready(function(){

$("#cssmenu").menumaker({

format: "multitoggle"

});

});

})(jQuery);
</script>
</body>
</html>