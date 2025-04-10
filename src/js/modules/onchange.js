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

window.deleteChangeProduct = async function (checkbox_key) {
  let items = document.querySelectorAll(
    `[data-checkbox-key="${checkbox_key}"]`
  );

  // Массив промисов для отслеживания всех асинхронных операций
  let promises = [];

  items.forEach((item) => {
    if (!item.checked) return;

    let product_cards = document.querySelectorAll(
      `[data-change-product="${item.value}"]`
    );
    product_cards.forEach((product_card) => {
      product_card.remove();

      // Добавляем промис на асинхронную операцию
      let promise = cart.events.remove(item.value, true);
      promises.push(promise);
    });
  });

  await Promise.all(promises);

  location.reload();
};
