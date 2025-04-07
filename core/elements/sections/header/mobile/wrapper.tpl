<div class="header-mobile">
  <div class="container">
    <div class="header-mobile__wrap">
      <div class="header-mobile__icon-open">
        <svg width="19" height="14" stroke="#182641">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#burger"
          ></use>
        </svg>
      </div>
      <div class="header-mobile__icon-close">
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
