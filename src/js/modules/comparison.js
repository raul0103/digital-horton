export default function initComparison() {
  // Добавляем кнопку для сравнения
  let comparisonHideEqual = () => {
    let items = getItems();

    const grouped = {};

    // Группируем элементы по ключу
    items.forEach((item) => {
      const key = item.dataset.comparisonKey;
      const value = item.dataset.comparisonValue;

      if (!grouped[key]) {
        grouped[key] = new Set();
      }
      if (value) {
        grouped[key].add(value);
      }
    });

    // items.forEach((item) => {
    //   const key = item.dataset.comparisonKey;
    //   if (grouped[key].size > 1) {
    //     item.style.display = "";
    //   } else {
    //     item.style.display = "none"; // Скрываем одинаковые
    //   }
    // });

    let hedden_elements = [];
    items.forEach((item) => {
      const key = item.dataset.comparisonKey;
      if (grouped[key].size > 1) {
      } else {
        hedden_elements.push(item);
      }
    });

    if (items.length == hedden_elements.length) {
      notifications.warning("Отличий не найдено");
    } else {
      hedden_elements.forEach((item) => {
        item.style.display = "none";
      });
    }
  };

  let comparisonShowEqual = () => {
    let items = getItems();

    items.forEach((item) => {
      item.style.display = "";
    });
  };

  window.comparisonEqual = (e) => {
    if (e.checked) {
      comparisonHideEqual();
    } else {
      comparisonShowEqual();
    }
  };

  function getItems() {
    const items = Array.from(
      document.querySelectorAll(
        "[data-opened-element].opened [data-comparison-key]"
      )
    );
    return items;
  }
}
