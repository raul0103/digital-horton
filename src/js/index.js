import "../scss/index.scss";

// Библиотеки
import GLightbox from "glightbox";
import "glightbox/dist/css/glightbox.min.css";

import iniSliders from "./modules/swipers";
import initOpened from "./modules/opened";

document.addEventListener("DOMContentLoaded", function () {
  // Библиотеки
  GLightbox({
    touchNavigation: true,
    loop: true,
  });

  iniSliders();
  initOpened();
});
