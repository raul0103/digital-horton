const sidebar = document.querySelector("[data-sidebar-scroll]");
if (sidebar && window.innerWidth > 640) {
  let isDragging = false;
  let startY = 0;
  let startTop = 0;

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
    sidebar.style.top = `${startTop + deltaY}px`;
  });

  document.addEventListener("mouseup", () => {
    isDragging = false;
    clearTimeout(timeout);
    sidebar.classList.remove("dragging");
  });
}
