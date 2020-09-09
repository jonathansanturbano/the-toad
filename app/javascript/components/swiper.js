import Swiper from 'swiper';
import 'swiper/swiper-bundle.css';

const initSwiper = () => {
  if (document.querySelector('.fanart-author')) {
    console.log('fanart');

    var fanSwiper = new Swiper ('.swiper-container', {
      // Optional parameters
      speed: 1000,
      loop: true,
      roundLengths: true,
      spaceBetween: 200,
      autoplay: {
              delay: 2500,
              disableOnInteraction: false,
            },
    });

    const intervalID = window.setInterval(nextSlide, 3000);

    function nextSlide() {
      fanSwiper.slideNext(3000);
    };
  }

  if (document.querySelector('.button').textContent === 'Order Signed Books') {
    var homeSwiper = new Swiper('.swiper-container', {
      speed: 1000,
      loop: true,
      spaceBetween: 300,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });


    const intervalID = window.setInterval(nextSlide, 2000);

    function nextSlide() {
      homeSwiper.slideNext(3000);
    };
  }

  if (document.querySelector('.book-details')) {
    var showSwiper = new Swiper ('.swiper-container', {
      // Optional parameters
      speed: 1000,
      loop: true,
      roundLengths: true,
      spaceBetween: 300,
      autoplay: {
              delay: 2500,
              disableOnInteraction: false,
            },
      // If we need pagination
      pagination: {
        el: '.swiper-pagination',
      },

      // Navigation arrows
      // navigation: {
      //   nextEl: '.swiper-button-next',
      //   prevEl: '.swiper-button-prev',
      // },

      // And if we need scrollbar
    });

    const intervalID = window.setInterval(nextSlide, 2000);

    function nextSlide() {
      showSwiper.slideNext(3000);
    };

  }
}

export { initSwiper };
