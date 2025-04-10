export default function initOtherFuncs() {
  // Добавит в корзину все товары на странце
  window.addAllProductsInCart = () => {
    document.querySelectorAll("[data-cart-form]").forEach((cart_form) => {
      if (!cart_form.classList.contains("active"))
        cart_form.querySelector('[data-cart-event="plus"]').click();
    });
  };
}
