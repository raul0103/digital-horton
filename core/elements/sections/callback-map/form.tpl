<form class="form">
  <h3>Свяжитесь с нами</h3>
  <div class="callback-map__contacts">
    <div class="callback-map__contacts-row">
      <div class="form__group">
        <label>Телефон</label>
        <a
          class="d-flex gap-8 fs-24 fw-700 w-content"
          href="tel:{'phone' | config}"
        >
          <svg width="16" height="16" class="primary-stroke">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#phone"
            ></use>
          </svg>
          {'phone' | config}
        </a>
      </div>

      <div class="form__group">
        <label>E-mail</label>
        <a class="d-flex gap-8 fs-18" href="mailto:{'email' | config}">
          <svg width="16" height="16" class="primary-stroke">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#letter"
            ></use>
          </svg>
          {'email' | config}
        </a>
      </div>

      {include "file:chunks/social-links.tpl"}
    </div>
  </div>

  <div class="d-grid col-sm-2 gap-16">
    <div class="form__group">
      <label>Электронная почта *</label>
      <input type="email" name="email" required/>
    </div>
    <div class="form__group">
      <label>Телефон *</label>
      <input type="tel" name="phone" placeholder="+7 (___) ___-__-__"  required/>
    </div>
    <button class="btn btn-primary big-btn w-100">Закать звонок</button>
  </div>
</form>
