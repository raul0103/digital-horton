const sidebar = document.querySelector("[data-sidebar-scroll]");
if (sidebar && window.innerWidth > 640) {
  let isDragging = false;
  let startY = 0;
  let startTop = 0;

  const parent = sidebar.parentElement;

  function clampTop(top) {
    // const minTop = parent.offsetTop + sidebar.offsetHeight;
    const maxTop = parent.clientHeight - sidebar.offsetHeight;
    // console.log(parent);

    // return Math.min(Math.max(top, minTop), maxTop);
    let y = -(sidebar.clientHeight - parent.offsetTop);
    if (top < y) return y;
    console.log(top, y);

    const x = -(window.pageYOffset - parent.offsetTop);
    if (top < x) return x;

    return top;
  }

  let timeout;
  sidebar.addEventListener("mousedown", (e) => {
    isDragging = true;
    startY = e.clientY;
    startTop = parseInt(window.getComputedStyle(sidebar).top, 10);

    clearTimeout(timeout);
    timeout = setTimeout(() => {
      sidebar.classList.add("dragging");
    }, 100);
  });

  document.addEventListener("mousemove", (e) => {
    if (!isDragging) return;

    const deltaY = e.clientY - startY;
    const newTop = clampTop(startTop + deltaY);
    sidebar.style.top = `${newTop}px`;
  });

  document.addEventListener("mouseup", () => {
    isDragging = false;
    clearTimeout(timeout);
    sidebar.classList.remove("dragging");
  });

  sidebar.addEventListener("wheel", (e) => {
    e.preventDefault();
    const currentTop = parseInt(window.getComputedStyle(sidebar).top, 10);
    const delta = e.deltaY;
    const newTop = clampTop(currentTop - delta);
    sidebar.style.top = `${newTop}px`;
  });
}
