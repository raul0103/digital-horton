export default function initOtherFuncs() {
  // Добавит в корзину все товары на странце
  window.addAllProductsInCart = () => {
    document.querySelectorAll("[data-cart-form]").forEach((cart_form) => {
      if (!cart_form.classList.contains("active"))
        cart_form.querySelector('[data-cart-event="plus"]').click();
    });
  };

  window.downloadFile = (url, filename = null) => {
    const a = document.createElement("a");
    a.href = url;
    a.download = filename || url.split("/").pop();
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
  };

  // Показать все зарактеристики в карточке товоара
  window.showAllCharact = () => {
    const target = document.querySelector('[data-opened-btn="tab2"]');

    if (target) {
      target.click();
      target.scrollIntoView({ behavior: "smooth", block: "start" });
    }
  };
}
