// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require slick
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function(){
	var $alertBox = $('.xskin-flash-message');
    // fade $alertBox out after 1 second (1000 ms)
    $alertBox.delay(1800).fadeOut('slow');
  // Slick slider implementation..........
  $('.slide-start').slick({
  	 dots: true,
  infinite: true,
  speed: 300,
  slidesToShow: 1,
  autoplay: true,
  adaptiveHeight: true
  });
// 
$(".xskin-edit").click(function(){
  $(".xskin-edit-form").slideToggle("slow");
});
// currency 

$(".world-currency li a").click(function(){
	$(".world-currency li a").removeClass("active-currency");
	$(this).addClass("active-currency");
	currency_val=$(this).text();
	$("#selected_currency").val(currency_val);
});
// Shipping
$("#shipping-address").click(function(){
  $(".shipping-edit-details").slideToggle("slow");

});

});