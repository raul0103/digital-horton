{set $catalog_html = "@FILE modules/mobile-menu/snippets/html-mobile.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.categories')
]}

{set $menu_items = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.menu'),
  'where' => '{"id:in":['~'header_menu_ids'|config~']}'
]}

{set $menu_html = "@FILE modules/mobile-menu/snippets/html-mobile.php" | snippet : [
  'data' => $menu_items
]}

<div class="header-mobile">
  <div class="container">
    <div class="header-mobile__wrap">
      <div class="header-mobile__icon-open" data-mobile-menu-open="mobile-menu">
        <svg width="19" height="14" stroke="#182641">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#burger"
          ></use>
        </svg>
        <svg width="14" height="14" stroke="#182641">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#close"
          ></use>
        </svg>
      </div>

      <a class="header-mobile__logo" href="/">
        <img src="/assets/template/images/logo.png" />
      </a>

      <a
        class="d-flex gap-8 fs-18 fw-700 header-mobile__phone"
        href="tel:{'phone' | config}"
      >
        <svg
          width="16"
          height="16"
          class="icon"
          stroke="#182641"
          fill="#182641"
        >
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#phone"
          ></use>
        </svg>
        {'phone' | config}
      </a>
    </div>
  </div>
</div>
<div class="header-mobile__modal" id="mobile-menu">
  {include "file:sections/header/common/search.tpl"}

  <div class="header-mobile__catalog mb-16">
    <div class="header-mobile__catalog-items" data-mobile-modal-items>
      {$catalog_html["menu-items"]}
    </div>
    {$catalog_html["menu-modals"]}
  </div>


  
  <div class="header-mobile__menu mb-16">
    <div class="header-mobile__menu-items" data-mobile-modal-items>
      {$menu_html["menu-items"]}
    </div>
    {$menu_html["menu-modals"]}
  </div>

</div>
