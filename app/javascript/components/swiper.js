import Swiper from "swiper";
import SwiperCore, { Navigation, Pagination, EffectFade } from "swiper/core";
import "swiper/swiper-bundle.css";
import "swiper/components/effect-fade/effect-fade.scss";

SwiperCore.use([Navigation, Pagination, EffectFade]);

const initSwiper = () => {
  if (
    document.querySelector(".button") &&
    document.querySelector(".button").textContent === "Order Signed Books"
  ) {
    const homeSwiper = new Swiper(".swiper-container", {
      speed: 1000,
      loop: true,
      spaceBetween: 300,
      autoplay: {
        delay: 2500,
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });

    const intervalID = window.setInterval(nextSlide, 2000);

    function nextSlide() {
      homeSwiper.slideNext(3000);
    }
  }

  if (document.querySelector(".book-details")) {
    const showSwiper = new Swiper(".swiper-container", {
      // Optional parameters
      effect: "fade",
      fadeEffect: {
        crossFade: true,
      },
      speed: 2000,
      loop: true,
      autoplay: true,
      roundLengths: true,
      pagination: {
        el: ".swiper-pagination",
      },

      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  }
};

export { initSwiper };
