<div class="header-desktop__top">
  <div class="container">
    <div class="header-desktop__top-row">
      <a href="/" class="header-desktop__top-logo"><img src="/assets/template/images/logo.png" /></a>

      <div class="header-desktop__top-centered">
        <a class="d-flex fs-15 gap-4 cursor-pointer fw-500" onclick="city_changer.activate();modals.events.open('modal-city-changer')">
          <svg width="16" height="16" class="primary-stroke">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#location"
            ></use>
          </svg>
          <span class="text-dashed" data-city-changer-select-value></span>
          <svg width="10" height="10" class="primary-stroke" stroke-width="2">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#icon-arrow-down"
              class="primary-stroke"
            ></use>
          </svg>
        </a>

        
        {include "file:sections/header/common/search.tpl" device="desktop"}
      </div>

      <div class="d-grid w-100">
        <div class="d-flex justify-between gap-16">
          <div class="d-flex gap-8 header-desktop__address">
            <svg width="16" height="16" class="primary-stroke">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v=19c#house"
              ></use>
            </svg>
            {$_modx->getPlaceholder('virtual')['address']}
          </div>
          <a
            class="d-flex gap-8 fs-18 fw-700 w-content"
            href="tel:{'phone' | config}"
          >
            <svg width="16" height="16" class="primary-stroke" >
              <use
                xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#phone"
              ></use>
            </svg>
            {'phone' | config}
          </a>
        </div>

        <div class="d-flex justify-between gap-16">
          <a class="d-flex gap-8 w-content" href="mailto:{'email' | config}">
            <svg width="16" height="16" class="primary-stroke">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#letter"
              ></use>
            </svg>
           {'email' | config}
          </a>

          <div class="header-desktop__callback-wrap">
            {include "file:chunks/social-links.tpl" classes="header-desktop__social"}
            <button onclick="modals.events.open('modal-callback')" class="w-content btn btn-primary fs-15 w-100">Заказать звонок</button>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
