{set $output = "@FILE modules/catalog/snippets/html-desktop.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.merge-categories')
]}

<div id="catalog-desktop" class="catalog-header" data-opened-element="catalog-desktop">
  <div class="catalog-header__container">
{*
  <button class="btn btn-circle" data-opened-btn="catalog-desktop">
    <svg class="arrow-bg" width="16" height="16" class="primary-stroke">
      <use
        xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#close" stroke="#fff"
      ></use>
    </svg>
  </button>
  *}
    <a class="d-block catalog-header__title fs-24 white-color fw-700" href="/catalog/">Каталог Horton</a>
    {$output}
  </div>
  <div class="catalog-header-overlay" data-opened-btn="catalog-desktop"></div>
</div>
