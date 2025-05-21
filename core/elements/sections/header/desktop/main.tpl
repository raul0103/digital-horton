<div class="header-desktop__main">
  <div class="container">
    <div class="header-desktop__main-row">
      <button
        class="catalog-button btn btn-primary border-radius-right d-flex gap-8 fs-20 mr-20"
        data-opened-btn="catalog-desktop"
      >
        <svg width="16" height="16" class="primary-stroke">
          <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#catalog"></use>
        </svg>
        Каталог
      </button>

      {if 'header_menu_ids' | config}
        <div class="header-desktop__menu">
          {'pdoMenu' | snippet : [ 
            'parents' => 0
            'resources' => 'header_menu_ids' | config
            'levelClass' => 'level-'
            'tplOuter' => '@INLINE
              <ul class="header-desktop__menu__nav">
                  {$wrapper}
              </ul>'
            'tpl' => '@INLINE
              <li class="header-desktop__menu__nav-item">
                  <a href="{$link}">{$menutitle}</a>
              </li>' 
            'tplInner' => '@INLINE
              <ul class="header-desktop__menu__nav-submenu">
                  {$wrapper}
              </ul>'
            'tplParentRow' => '@INLINE
              <li class="header-desktop__menu__nav-item has-submenu {$classnames} d-flex">
                {if $template !== 0}
                  <a href="{$link}">{$menutitle}</a>
                {else}
                  <a>{$menutitle}</a>
                {/if}
                <svg width="10" height="10" class="primary-stroke" stroke-width="2">
                  <use
                    xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#icon-arrow-down" class="primary-stroke"
                  ></use>
                </svg>
                {$wrapper}
              </li>' 
            ]}
        </div>
      {else}
        Отсуствует конфиг header_menu_ids
      {/if}

      <div class="d-flex ml-auto header-desktop__fast-nav">
        <a
          href="{$_modx->makeURL('favorites_id' | option)}"
          class="p-relative btn btn-primary d-grid gap-4 border-radius-left fs-15 fw-700 place-center"
        >
          <span class="counters-mark {if count($_modx->getPlaceholder('favorite-products')) == 0}hidden{/if}" data-selection-key="favorite-products" data-total-hide-empty="true">
            {count($_modx->getPlaceholder('favorite-products'))}
          </span>
          <svg width="16" height="16" stroke="white" fill="none">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#favorites"
            ></use>
          </svg>
          <span class="hide-text">Избранное</span>
        </a>
        <a
          href="{$_modx->makeURL('comparison_id' | option)}"
          class="p-relative btn btn-primary d-grid gap-4 border-none fs-15 fw-700 place-center"
        >
          <span class="counters-mark {if count($_modx->getPlaceholder('comparison-products')) == 0}hidden{/if}" data-selection-key="comparison-products" data-total-hide-empty="true">
            {count($_modx->getPlaceholder('comparison-products'))}
          </span>
          <svg width="16" height="16">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#comparison"
            ></use>
          </svg>
          <span class="hide-text">Сравнение</span>
        </a>
        <a
          class="p-relative btn btn-primary d-grid gap-4 border-none fs-15 fw-700 place-center"
          href="{$_modx->makeURL('cart_id' | option)}"
        >
        <span class="counters-mark {if $_modx->getPlaceholder('product_total')['count'] == 0}hidden{/if}" data-cart-total-count data-total-hide-empty="true">
          {$_modx->getPlaceholder('product_total')['count']}
        </span>
          <svg width="16" height="16">
            <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#cart"></use>
          </svg>
          <span class="hide-text">Корзина</span>
        </a>
        <a
          class="btn btn-primary d-grid gap-4 border-none fs-15 fw-700 place-center"
          href="{$_modx->makeURL('login_id' | option)}"
        >
          <svg width="16" height="16">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#login"
            ></use>
          </svg>
          <span class="hide-text">Войти</span>
        </a>
      </div>
    </div>
  </div>
</div>
