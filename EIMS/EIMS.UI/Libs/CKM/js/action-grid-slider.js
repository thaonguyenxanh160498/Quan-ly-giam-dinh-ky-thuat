$(document).ready(function(){
  $('.ct-box-slider').slick({
    autoplay: false,
    autoplaySpeed: 4000,
      arrows: false,
      prevArrow: "<img class='a-left control-c prev slick-prev' src='./img/arrow-left.png'>",
      nextArrow: "<img class='a-right control-c next slick-next' src='../img/arrow-right.png'>"
  });
  $('#ct-js-box-slider--prev').on('click', function() {
    $('.ct-js-box-slider').slick('slickPrev');
  });
  $('#ct-js-box-slider--next').on('click', function() {
    $('.ct-js-box-slider').slick('slickNext');
  });
});
