<form action="[[~[[*id]]]]" class="form form-auth" method="post">
  <div class="d-grid gap-16">
    <div class="block-title">Вход</div>

    <div class="form__group">
      <label>Email</label>
      <input type="text" name="username" placeholder="" required="">
    </div>

    <div class="form__group">
      <label>Пароль</label>
      <input type="password" name="password" placeholder="" required="">
    </div>

    <input class="returnUrl" type="hidden" name="returnUrl" value="[[+request_uri]]" />
    <input class="loginLoginValue" type="hidden" name="service" value="login">
    
    <div class="d-grid gap-4">
      <button class="btn btn-primary w-100 big-btn" type="submit">Вход</button>
      <a href="{$_modx->makeURL('register_id'|config)}" class="btn btn-bordered w-100 big-btn d-flex">Регистрация</a>
    </div>
  </div>
</form>
[[+errors:notempty=`
  <div class="text-center mt-16 error-color">[[+errors:striptags]]</div>
`]]