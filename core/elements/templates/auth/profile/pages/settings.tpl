[[!UpdateProfile? &validate=`fullname:required,email:required:email`]]

<div class="profile-settings">
  [[+login.update_success:is=`1`:then=`
  <div class="success-color mb-16">Профиль обновлен</div>
  `]]

  <form class="form mb-16" action="[[~[[*id]]]]" method="post">
    <div class="mb-16">
      <div class="fs-28-19 fw-700 mb-8">[[+fullname]] [[+surname]]</div>
      <div class="secondary-gray-color fs-15">
        Зарегистрирован [[+thislogin:date=`%d.%m.%Y`]]
      </div>
    </div>

    <div class="d-flex gap-16 flex-wrap">
      <div class="form__group">
        <label>Имя</label>
        <input type="text" name="fullname" value="[[+fullname]]" />
        <span class="error-color">[[+error.fullname]]</span>
      </div>
      <div class="form__group">
        <label>Фамилия</label>
        <input type="text" name="surname" value="[[+surname]]" />
        <span class="error-color">[[+error.surname]]</span>
      </div>
    </div>

    <div class="d-flex gap-16 flex-wrap">
      <div class="form__group">
        <label>Телефон</label>
        <input type="tel" name="phone" value="[[+phone]]" />
        <span class="error-color">[[+error.phone]]</span>
      </div>
      <div class="form__group">
        <label>Email</label>
        <input type="email" name="email" value="[[+email]]" />
        <span class="error-color">[[+error.email]]</span>
      </div>
    </div>

    <div class="form__group">
      <label>Название компании</label>
      <input type="text" name="company_name" value="[[+company_name]]" />
    </div>

    <button class="btn btn-primary big-btn" type="submit">Сохранить</button>
  </form>

  <div class="profile-settings__footer">
    <button
      class="btn btn-bordered big-btn d-flex gap-8"
      onclick="modals.events.open('modal-logout')"
    >
      <svg width="22" height="20" class="primary-stroke">
        <use
          xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#logout"
        ></use>
      </svg>
      Выйти из аккаунта
    </button>

    <button
      class="btn btn-simple text-uppercase"
      onclick="modals.events.open('modal-change-password')"
    >
      Изменить пароль
    </button>
    <button
      class="btn btn-simple text-uppercase"
      onclick="modals.events.open('modal-delete-account')"
    >
      Удалить аккаунт
    </button>
  </div>
</div>
