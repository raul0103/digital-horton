import "../scss/index.scss";

// Библиотеки
import GLightbox from "glightbox";
import "glightbox/dist/css/glightbox.min.css";

import "./modules/sorting-btn.js";
import "./modules/onchange.js";
import "./modules/stats.js";
import "./modules/showScrollelements.js";
import "./modules/header-scroll.js";

import iniSliders from "./modules/swipers";
import initOpened from "./modules/opened";
import initInputMask from "./modules/input-mask.js";
import Notifications from "./modules/notifications.js";
import FilterWindow from "./modules/filter-window.js";
import initComparison from "./modules/comparison.js";
import initOtherFuncs from "./other.js";
import initAjax from "./modules/ajax.js";
import fetchItObserve from "./modules/fetchit-observe.js";
import SearchByWords from "./modules/search-by-words.js";

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
  initComparison();
  initOtherFuncs();
  initAjax();
  fetchItObserve();

  window.notifications = new Notifications();
  new FilterWindow().init();

  try {
    new SearchByWords().init();
  } catch {
    console.error("Ошибка SearchByWords");
  }
});
