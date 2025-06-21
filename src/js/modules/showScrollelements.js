let lastScrollY = window.scrollY;
const element = document.querySelector("[data-scroll-element]");
if (element) {
  const product_sidebar = document.querySelector(".product-page__sidebar");
  window.addEventListener("scroll", () => {
    const currentScrollY = window.scrollY;

    if (currentScrollY > lastScrollY) {
      // Прокрутка вниз — скрываем
      element.style.opacity = "0";
      element.style["pointer-events"] = "none";

      if (window.innerWidth <= 640 && product_sidebar) {
        product_sidebar.style.display = "grid";
      }
    } else {
      // Прокрутка вверх — показываем
      element.style.opacity = "1";
      element.style["pointer-events"] = "all";

      if (window.innerWidth <= 640 && product_sidebar) {
        product_sidebar.style.display = "none";
      }
    }

    lastScrollY = currentScrollY;
  });
}
