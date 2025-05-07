document.addEventListener("DOMContentLoaded", () => {
  const container = document.querySelector("[data-stats]");
  if (!container) return;

  const items = container.querySelectorAll("[data-stat]");

  const easeOutCubic = (t) => 1 - Math.pow(1 - t, 3);

  const animateValue = (el, end, duration = 1500) => {
    let startTimestamp = null;

    const step = (timestamp) => {
      if (!startTimestamp) startTimestamp = timestamp;
      const progress = Math.min((timestamp - startTimestamp) / duration, 1);
      const easedProgress = easeOutCubic(progress);
      el.textContent = Math.floor(easedProgress * end).toLocaleString();

      if (progress < 1) {
        window.requestAnimationFrame(step);
      } else {
        el.textContent = end.toLocaleString(); // финальная корректировка
      }
    };

    window.requestAnimationFrame(step);
  };

  const observer = new IntersectionObserver(
    (entries, obs) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          items.forEach((el) => {
            const target = parseInt(el.dataset.target, 10);
            const duration = Math.min(3000, 800 + target * 0.1); // больше число → дольше
            animateValue(el, target, duration);
          });
          obs.disconnect(); // только один раз
        }
      });
    },
    { threshold: 0.5 }
  );

  observer.observe(container);
});
