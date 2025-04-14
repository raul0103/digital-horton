<form action="[[~[[*id]]]]" class="form form-auth" method="post">
  <div class="d-grid gap-16">
    <div class="block-title">Регистрация</div>

    <div class="form__group">
      <label>Имя</label>
      <input type="text" name="fullname:required:minLength=4" class="[[+error.fullname:notempty=` is-invalid`]]" value="[[+fullname]]">
      [[+error.fullname]]
    </div>

    <div class="form__group">
      <label>Email</label>
      <input type="email" name="email" class="form-control[[+error.email:notempty=` is-invalid`]]" value="[[+email]]">
      [[+error.email]]
    </div>

    <div class="form__group">
      <label>Пароль</label>
      <input type="password" name="password:required:minLength=8" class="form-control[[+error.password:notempty=` is-invalid`]]" value="[[+password]]">
      [[+error.password]]
    </div>

    <div class="form__group">
      <label>Пароль</label>
      <input type="password" name="password_confirm:password_confirm=`password`" class="form-control[[+error.password:notempty=` is-invalid`]]" value="[[+password_confirm]]">
      [[+error.password]]
    </div>

    <input class="returnUrl" type="hidden" name="returnUrl" value="[[+request_uri]]" />
    <input class="loginLoginValue" type="hidden" name="service" value="login">
    
    <div class="d-grid gap-4">
      <button class="btn btn-primary w-100 big-btn" type="submit">Зарегистрироваться</button>
      <a href="{$_modx->makeURL('login_id'|config)}" class="btn btn-bordered w-100 big-btn d-flex">Войти</a>
    </div>
  </div>
</form>