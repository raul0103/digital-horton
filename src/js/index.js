import "../scss/index.scss";

// Библиотеки
import GLightbox from "glightbox";
import "glightbox/dist/css/glightbox.min.css";

import iniSliders from "./modules/swipers";
import initOpened from "./modules/opened";
import initInputMask from "./modules/input-mask.js";
import Notifications from "./modules/notifications.js";

import "../../core/elements/modules/all";

document.addEventListener("DOMContentLoaded", function () {
  // Библиотеки
  GLightbox({
    touchNavigation: true,
    loop: true,
  });

  iniSliders();
  initOpened();
  initInputMask();

  window.notifications = new Notifications();
});
