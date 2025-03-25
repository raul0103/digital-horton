import Swiper from "swiper";
import { Navigation, Autoplay, Thumbs } from "swiper/modules";

import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

export default function iniSliders() {
  new Swiper('[data-swiper="banner"]', {
    modules: [Autoplay, Navigation],
    slidesPerView: "auto",
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
}
