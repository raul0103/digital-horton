<div class="header-desktop__top">
  <div class="container">
    <div class="header-desktop__top-row">
      <a href="/"><img src="/assets/template/images/logo.png" /></a>

      <div class="header-desktop__top-centered">
        <a class="d-flex fs-15 gap-4 cursor-pointer fw-500">
          <svg width="16" height="16" class="icon">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v=4#location"
            ></use>
          </svg>
          <span class="text-dashed">Москва</span>
          <svg width="10" height="10" class="icon">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v=4#icon-arrow-down"
            ></use>
          </svg>
        </a>

        <form class="form header-desktop__search-block">
          <input type="text" placeholder="Поиск по сайту" />
          <button class="btn btn-circle">
            <svg width="16" height="16" class="icon">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v=8#search"
              ></use>
            </svg>
          </button>
        </form>

        <div class="d-grid gap-16 fw-500 header-desktop__address-block">
          <div class="d-flex gap-8">
            <svg width="16" height="16" class="icon">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v=5c#house"
              ></use>
            </svg>
            {'address' | config}
          </div>
          <div class="d-flex gap-8">
            <svg width="16" height="16" class="icon">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v=5#letter"
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
            <svg width="16" height="16" class="icon">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v=7#phone"
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
