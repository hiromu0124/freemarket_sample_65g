$(function() {
  $('.slide__main').slick({
      autoplay: true,
      dots: true,
      centerMode: true,
      centerPadding: '0%',
      slideToShow: 1,
      focusOnSelect: true,
      speed: 1000,
      responsive: [
          {
              breakpoint: 768,
              settings: {
                  centerMode: false
              }
          }
      ]
  });
});

