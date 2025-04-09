// onchange="changeCheckboxAll('product',this)"
// onclick="deleteChangeProduct('product')"
// data-change-product="ID"

window.changeCheckboxAll = function (checkbox_key, e) {
  let items = document.querySelectorAll(
    `[data-checkbox-key="${checkbox_key}"]`
  );
  items.forEach((item) => {
    if (e.checked) {
      item.checked = true;
    } else {
      item.checked = false;
    }
  });
};

window.deleteChangeProduct = function (checkbox_key) {
  let items = document.querySelectorAll(
    `[data-checkbox-key="${checkbox_key}"]`
  );
  items.forEach((item) => {
    if (!item.checked) return;

    let product_cards = document.querySelectorAll(
      `[data-change-product="${item.value}"]`
    );
    product_cards.forEach((product_card) => {
      product_card.remove();
      cart.events.remove(item.value, true);
    });
  });

  setTimeout(() => {
    location.reload();
  }, 500);
};
