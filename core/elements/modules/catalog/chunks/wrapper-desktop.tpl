{set $output = "@FILE modules/catalog/snippets/html-desktop.php" | snippet : [
  'data' => $_modx->getPlaceholder('static-categories')
]}

<div id="catalog-desktop" class="catalog-header" data-opened-element="catalog-desktop">
  <div class="catalog-header__container">
    <a class="d-block catalog-header__title fs-24 white-color fw-700" href="/catalog/">Каталог Horton</a>
    {$output}
  </div>
  <div class="catalog-header-overlay" data-opened-btn="catalog-desktop"></div>
</div>
