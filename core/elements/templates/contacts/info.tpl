<div class="contacts-block d-grid gap-24 col-md-2 mb-24">
  <div class="d-grid gap-24">
    <div class="contacts-block__group">
      <label>Отдел продаж</label>
      <a
        class="d-flex gap-8 fs-24 fw-700 w-content"
        href="tel:{'phone' | config}"
      >
        <svg width="18" height="18" class="primary-stroke">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#phone"
          ></use>
        </svg>
        {'phone' | config}
      </a>
    </div>

    <div class="contacts-block__group">
      <label>E-mail</label>
      <a
        class="d-flex gap-8 fs-18 fw-500 primary-light-color"
        href="mailto:{'email' | config}"
      >
        <svg width="20" height="20" class="primary-stroke">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#letter"
          ></use>
        </svg>
        {'email' | config}
      </a>
    </div>

    <div class="contacts-block__group">
      <label>Отдел снабжения</label>
      <a
        class="d-flex gap-8 fs-18 fw-500 primary-light-color"
        href="mailto:{'email' | config}"
      >
        <svg width="20" height="20" class="primary-stroke">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#letter"
          ></use>
        </svg>
        {'email' | config}
      </a>
    </div>
  </div>

  <div class="d-grid gap-24">
    <div class="contacts-block__group">
      <label>График работы офиса</label>
      <div class="d-flex gap-8 fs-18" href="mailto:{'email' | config}">
        <svg width="22" height="22" class="primary-fill">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#clock"
          ></use>
        </svg>

        <div class="d-grid fw-500 fs-18">
          <span>пн-пт 09:00 - 19:00</span>
          <span>сб-вс 09:00 - 18:00</span>
        </div>
      </div>
    </div>

    <div class="contacts-block__group">
      <label>Обработка заявок</label>
      <div class="d-flex gap-8 fs-18" href="mailto:{'email' | config}">
        <svg width="22" height="22" class="primary-fill">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#clock"
          ></use>
        </svg>
        <span class="fw-500 fs-18">сб-вс 09:00 - 18:00</span>
      </div>
    </div>

    <div class="contacts-block__group">
      <label>Адрес офиса</label>
      <div class="d-flex gap-8 fs-18" href="mailto:{'email' | config}">
        <svg width="22" height="22" class="primary-fill">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#location"
          ></use>
        </svg>
        <span class="fw-500 fs-18">{$_modx->getPlaceholder('virtual')['address']}</span>
      </div>
    </div>
  </div>
</div>

<div class="mb-24">{include "file:chunks/social-links.tpl"}</div>
