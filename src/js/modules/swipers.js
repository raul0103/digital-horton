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

  new Swiper('[data-swiper="product-slider"]', {
    modules: [Navigation],
    loop: false,
    spaceBetween: 16,
    lazy: { loadPrevNext: true },
    slideClass: "product-card",

    breakpoints: {
      1280: {
        slidesPerView: 4.8,
      },
      1024: {
        slidesPerView: 3,
      },
      200: {
        slidesPerView: 2,
      },
    },

    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },

    direction: "horizontal",
  });

  new Swiper('[data-swiper="subcat-slider"]', {
    modules: [Navigation],
    loop: false,
    slidesPerView: "auto",
    slideClass: "subcat-slider__item",

    // spaceBetween: 16,

    // breakpoints: {
    //   1280: {
    //     slidesPerView: 4.8,
    //   },
    //   1024: {
    //     slidesPerView: 3,
    //   },
    //   200: {
    //     slidesPerView: 2,
    //   },
    // },

    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },

    direction: "horizontal",
  });

  new Swiper('[data-swiper="projects-gallery"]', {
    modules: [Navigation],
    // slidesPerView: "auto",
    loop: false,
    spaceBetween: 16,
    slidesPerView: 1,
    lazy: { loadPrevNext: true },

    breakpoints: {
      1024: {
        slidesPerView: 3,
      },
      768: {
        slidesPerView: 2,
      },
    },

    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },

    direction: "horizontal",
  });

  let direction = "vertical";
  let slidesPerView = 6.5;
  if (innerWidth < 1024) {
    direction = "horizontal";
    slidesPerView = 4;
  }
  let product_thumbs = new Swiper('[data-swiper="product-gallery-thumbs"]', {
    modules: [Navigation],
    slidesPerView,
    spaceBetween: 16,
    freeMode: true,
    watchSlidesProgress: true,
    direction,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
  new Swiper('[data-swiper="product-gallery-preview"]', {
    modules: [Thumbs],

    thumbs: {
      swiper: product_thumbs,
    },
  });

  if (window.innerWidth > 640)
    new Swiper('[data-slider="navigation"]', {
      // modules: [Autoplay],
      // autoplay: {
      //   delay: 2000,
      //   disableOnInteraction: false,
      // },

      loop: false,
      slidesPerView: "auto",
      spaceBetween: 24,
      slideClass: "navigation-slide",
      direction: "horizontal",
    });
}
