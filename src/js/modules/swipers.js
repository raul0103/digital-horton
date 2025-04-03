import Swiper from "swiper";
import { Navigation, Autoplay, Thumbs } from "swiper/modules";

import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

export default function iniSliders() {
  new Swiper('[data-swiper="banner"]', {
    modules: [Autoplay, Navigation],
    loop: false,
    slidesPerView: 1,
    spaceBetween: 24,
    lazy: { loadPrevNext: true },
    // autoplay: {
    //   delay: 5000,
    //   disableOnInteraction: false,
    // },
    // breakpoints: {
    //   1200: {
    //     slidesPerView: 6,
    //   },
    //   992: {
    //     slidesPerView: 4,
    //   },
    //   576: {
    //     slidesPerView: 3.1,
    //     spaceBetween: 8,
    //   },
    //   320: {
    //     slidesPerView: 3.1,
    //     spaceBetween: 8,
    //   },
    // },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    direction: "horizontal",
  });

  if (window.innerWidth > 768)
    new Swiper('[data-swiper="reviews"]', {
      modules: [Navigation],
      // slidesPerView: "auto",
      loop: false,
      spaceBetween: 44,
      // slidesPerView: 1,
      lazy: { loadPrevNext: true },
      slideClass: "reviews-section__item", // Указываем класс слайдов

      breakpoints: {
        1280: {
          slidesPerView: 4,
        },
        1024: {
          slidesPerView: 3,
          spaceBetween: 16,
        },
        768: {
          slidesPerView: 2,
          spaceBetween: 16,
        },
      },

      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },

      direction: "horizontal",
    });
}
