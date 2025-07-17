document.addEventListener("DOMContentLoaded", function () {
  const breadcrumbItems = document.querySelectorAll(
    ".breadcrumbs-item span[itemprop='name']"
  );
  const maxBreadcrumbs = 4;
  const maxLength = 25; // Максимальная длина текста до сокращения

  if (breadcrumbItems.length > maxBreadcrumbs) {
    breadcrumbItems.forEach((item) => {
      const text = item.textContent.trim();
      if (text.length > maxLength) {
        item.textContent = text.slice(0, maxLength) + "…";
      }
    });
  }
});
