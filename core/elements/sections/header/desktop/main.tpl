<div class="header-desktop__main">
  <div class="container">
    <div class="header-desktop__main-row">
      <button
        class="btn btn-primary border-radius-right d-flex gap-8 fs-20 big-padding mr-20"
      >
        <svg width="16" height="16" class="icon">
          <use xlink:href="/assets/template/icons/sprite.svg?v=9#catalog"></use>
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
                <svg width="10" height="10" class="icon">
                  <use
                    xlink:href="/assets/template/icons/sprite.svg?v=4#icon-arrow-down"
                  ></use>
                </svg>
                {$wrapper}
              </li>' 
            ]}
        </div>
      {else}
        Отсуствует конфиг header_menu_ids
      {/if}

      <div class="d-flex ml-auto">
        <a
          class="btn btn-primary d-grid gap-4 border-radius-left fs-15 fw-700 place-center"
        >
          <svg width="16" height="16" class="icon">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v=10#favorites"
            ></use>
          </svg>
          Избранное
        </a>
        <a
          class="btn btn-primary d-grid gap-4 border-none fs-15 fw-700 place-center"
        >
          <svg width="16" height="16" class="icon">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v=10#comparison"
            ></use>
          </svg>
          Сравнение
        </a>
        <a
          class="btn btn-primary d-grid gap-4 border-none fs-15 fw-700 place-center"
        >
          <svg width="16" height="16" class="icon">
            <use xlink:href="/assets/template/icons/sprite.svg?v=10#cart"></use>
          </svg>
          Корзина
        </a>
        <a
          class="btn btn-primary d-grid gap-4 border-none fs-15 fw-700 place-center"
        >
          <svg width="16" height="16" class="icon">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v=10#login"
            ></use>
          </svg>
          Войти
        </a>
      </div>
    </div>
  </div>
</div>
