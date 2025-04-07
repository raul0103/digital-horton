// modules
import Modals from "./modals/js/Modals.js";
import MobileMenuInit from "./mobile-menu/js/main.js";
import MltReviewAjaxForm from "./reviews/js/main.js";
import FastSearch from "./fast-search/js/main.js";
import initCustomSelect from "./custom-select/main.js";
import initCart from "./cart/frontend/js/main.js";
import initProductCard from "./product-cards/js/main.js";

document.addEventListener("DOMContentLoaded", function () {
  let functions = [
    {
      init: initProductCard,
      name: "initProductCard",
    },
    {
      init: initCart,
      name: "initCart",
    },
    {
      init: initCustomSelect,
      name: "initCustomSelect",
    },
    {
      init: MobileMenuInit,
      name: "MobileMenuInit",
    },
    {
      init: MltReviewAjaxForm.init,
      name: "MltReviewAjaxForm",
    },
  ];

  functions.forEach((_function) => {
    try {
      _function.init();
    } catch (e) {
      console.error(`Ошибка в функции ${_function.name}: ${e}`);
    }
  });

  let classes = [
    {
      constructor: FastSearch,
      name: "FastSearch",
    },
  ];

  classes.forEach((_class) => {
    try {
      new _class.constructor().init();
    } catch (e) {
      console.error(`Ошибка в классе ${_class.name}: ${e}`);
    }
  });

  try {
    window.modals = new Modals();
  } catch (e) {
    console.error(`Ошибка в классе Modals: ${e}`);
  }
});
