{set $output = "@FILE modules/catalog/snippets/html-desktop.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-catalog')
]}

<div id="catalog-desktop" class="catalog-header">
  <div class="catalog-header__container">
    <button class="btn btn-circle" data-opened-btn="catalog-desktop">
      <svg class="arrow-bg" width="16" height="16" class="icon">
        <use
          xlink:href="/assets/template/icons/sprite.svg?v=15#close" stroke="#fff"
        ></use>
      </svg>
    </button>
    <div class="catalog-header__title fs-24 white-color fw-700">Каталог Horton</div>
    {$output}
  </div>
</div>
