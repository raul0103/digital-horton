<div class="header-desktop__top">
  <div class="container">
    <div class="header-desktop__top-row">
      <a href="/"><img src="/assets/template/images/logo.png" /></a>

      <div class="header-desktop__top-centered">
        <a class="d-flex fs-15 gap-4 cursor-pointer fw-500">
          <svg width="16" height="16" class="primary-stroke">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#location"
            ></use>
          </svg>
          <span class="text-dashed">Москва</span>
          <svg width="10" height="10" class="primary-stroke" stroke-width="2">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#icon-arrow-down"
              class="primary-stroke"
            ></use>
          </svg>
        </a>

        
        {include "file:sections/header/common/search.tpl"}

        <div class="d-grid gap-16 fw-500 header-desktop__address-block">
          <div class="d-flex gap-8">
            <svg width="16" height="16" class="primary-stroke" class="primary-stroke">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v=19c#house"
              ></use>
            </svg>
            {'address' | config}
          </div>
          <div class="d-flex gap-8">
            <svg width="16" height="16" class="primary-stroke" class="primary-stroke">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#letter"
              ></use>
            </svg>
            <a href="mailto:{'email' | config}">{'email' | config}</a>
          </div>
        </div>
      </div>

      <div class="d-flex gap-16 align-end">
        <div class="d-flex gap-8 header-desktop__social">
          <a href="{'vk-link' | config}" target="_blank">
            <img src="/assets/template/icons/social/vk.svg" />
          </a>
          <a href="{'wa-link' | config}" target="_blank">
            <img src="/assets/template/icons/social/wa.svg" />
          </a>
        </div>
        <div class="d-grid gap-8">
          <a
            class="d-flex gap-8 fs-18 fw-700 w-content"
            href="tel:{'phone' | config}"
          >
            <svg width="16" height="16" class="primary-stroke" class="primary-stroke">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#phone"
              ></use>
            </svg>
            {'phone' | config}
          </a>
          <button class="btn btn-primary fs-15 w-100">Заказать звонок</button>
        </div>
      </div>
    </div>
  </div>
</div>
