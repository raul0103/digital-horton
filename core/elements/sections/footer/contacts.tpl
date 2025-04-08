<div class="footer__contacts">
  <div class="d-grid gap-8 footer__contacts-item">
    <span>Адрес:</span>
    <div class="fs-18 fw-500 d-flex gap-8">
      <svg width="20" height="20" class="primary-stroke" stroke="white">
        <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#house"></use>
      </svg>
      {'address' | config}
    </div>
  </div>

  <div class="d-grid gap-8 footer__contacts-item">
    <span>E-mail:</span>
    <div class="fs-18 fw-500 d-flex gap-8">
      <svg width="20" height="20" class="primary-stroke" stroke="white">
        <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#letter"></use>
      </svg>
      <a href="tel:{'email' | config}">{'email' | config}</a>
    </div>
  </div>

  <div class="d-flex gap-24 align-end flex-wrap">
    <div class="d-flex gap-8 sm-d-none">
      <a href="{'vk-link' | config}" target="_blank">
        <img src="/assets/template/icons/social/vk.svg" />
      </a>
      <a href="{'wa-link' | config}" target="_blank">
        <img src="/assets/template/icons/social/wa.svg" />
      </a>
    </div>

    <div class="d-grid gap-8 footer__contacts-item">
      <span>Телефон:</span>
      <div class="fs-24 fw-700 fw-500 d-flex gap-8">
        <svg width="20" height="20" class="primary-stroke" stroke="white" fill="white">
          <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#phone"></use>
        </svg>
        <a href="tel:{'phone' | config}">{'phone' | config}</a>
      </div>
    </div>
    <button class="btn btn-white footer__contacts-callback fs-14">
      Заказать звонок
    </button>
  </div>
</div>
