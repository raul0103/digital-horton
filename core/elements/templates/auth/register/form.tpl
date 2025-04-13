<div class="container pt-3">

  <div class="card text-dark bg-white mx-auto mb-3" style="max-width: 30rem;">
    <div class="card-body">
      [[!+error.message:eq=``:then=`
        <form class="form" action="[[~[[*id]]]]" method="post">
        <div class="mb-3">
          <label for="fullname" class="form-label">Имя</label>
          <input type="text" name="fullname" class="form-control[[!+reg.error.fullname:notempty=` is-invalid`]]" value="[[!+reg.fullname]]">
          <div class="invalid-feedback">[[!+reg.error.fullname]]</div>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" name="email" class="form-control[[!+reg.error.email:notempty=` is-invalid`]]" value="[[!+reg.email]]">
          <div class="invalid-feedback">[[!+reg.error.email]]</div>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Пароль</label>
          <input type="password" name="password" class="form-control[[!+reg.error.password:notempty=` is-invalid`]]" value="[[!+reg.password]]">
          <div class="invalid-feedback">[[!+reg.error.password]]</div>
        </div>
        <div class="mb-3">
          <label for="password_confirm" class="form-label">Введите пароль ещё раз</label>
          <input type="password" name="password_confirm" class="form-control[[!+reg.error.password_confirm:notempty=` is-invalid`]]" value="[[!+reg.password_confirm]]">
          <div class="invalid-feedback">[[!+reg.error.password_confirm]]</div>
        </div>
        <input type="submit" name="login-register-btn" class="btn btn-primary" value="Отправить">
      </form>
      `:else=`[[!+error.message]]`]]
    </div>
  </div>
</div>