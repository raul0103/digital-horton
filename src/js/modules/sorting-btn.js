// Функция для получения параметров из URL
function getUrlParameter(name) {
  const urlParams = new URLSearchParams(window.location.search);
  return urlParams.get(name);
}

// Функция для обновления URL, оставив только новый параметр
function updateUrlParameter(name, value) {
  const urlParams = new URLSearchParams();

  // Добавляем новый параметр (параметры "date_direction" или "popularity_direction")
  urlParams.set(name, value);

  // Формируем новый URL с обновленными параметрами
  const newUrl = `${window.location.pathname}?${urlParams.toString()}`;

  // Переходим по обновленному URL
  location.href = newUrl;
}

// Устанавливаем направление для кнопок в зависимости от текущего состояния
function setButtonState() {
  const dateDirection = getUrlParameter("date_direction");
  const priceDirection = getUrlParameter("price_direction");

  const dateButton = document.getElementById("sort-by-date");
  const priceButton = document.getElementById("sort-by-price");

  if (!dateButton || !priceButton) return;

  if (dateDirection) {
    dateButton.dataset.dir = dateDirection;
    dateButton.classList.add("active");
  }
  if (priceDirection) {
    priceButton.dataset.dir = priceDirection;
    priceButton.classList.add("active");
  }
}

// Обработчик клика на кнопки
function handleButtonClick(event) {
  const button = event.target;
  const sortBy = button.id === "sort-by-date" ? "date" : "price";
  const currentDirection = button.dataset.dir;

  // Меняем направление на противоположное
  const newDirection = currentDirection === "asc" ? "desc" : "asc";
  button.dataset.dir = newDirection;

  // Перезагружаем страницу с новыми параметрами
  const urlParams = new URLSearchParams(window.location.search);
  urlParams.set(`${sortBy}_direction`, newDirection); // Добавляем или обновляем параметр сортировки

  updateUrlParameter(`${sortBy}_direction`, newDirection);
}

// Устанавливаем состояние кнопок при загрузке страницы
setButtonState();

// Привязываем обработчики к кнопкам
document
  .getElementById("sort-by-date")
  ?.addEventListener("click", handleButtonClick);
document
  .getElementById("sort-by-price")
  ?.addEventListener("click", handleButtonClick);
