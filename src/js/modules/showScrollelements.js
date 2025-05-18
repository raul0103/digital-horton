let lastScrollY = window.scrollY;
const element = document.querySelector("[data-scroll-element]");
if (element) {
  window.addEventListener("scroll", () => {
    const currentScrollY = window.scrollY;

    if (currentScrollY > lastScrollY) {
      // Прокрутка вниз — скрываем
      element.style.opacity = "0";
      element.style["pointer-events"] = "none";
    } else {
      // Прокрутка вверх — показываем
      element.style.opacity = "1";
      element.style["pointer-events"] = "all";
    }

    lastScrollY = currentScrollY;
  });
}
