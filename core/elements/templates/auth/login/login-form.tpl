<div class="container pt-3">
  <div class="card text-dark bg-white mx-auto mb-3" style="max-width: 30rem;">
    <div class="card-header">[[+actionMsg]]</div>
      <div class="card-body">
        [[+errors:notempty=`
          <div class="alert alert-danger" role="alert">[[+errors:striptags]]</div>
        `]]
        <form class="form mb-3" action="[[~[[*id]]]]" method="post">
          <div class="mb-3">
            <label for="username" class="form-label">[[%login.username]]</label>
            <input type="text" name="username" class="form-control" id="username">
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">[[%login.password]]</label>
            <input type="password" name="password" class="form-control" id="password">
          </div>
          <input class="returnUrl" type="hidden" name="returnUrl" value="[[+request_uri]]" />
          <input class="loginLoginValue" type="hidden" name="service" value="login">
          <input type="submit" name="login" class="btn btn-primary" value="[[+actionMsg]]">
        </form>
        <p><a href="[[~5]]">Забыли пароль?</a></p>
      </div>
    </div>
  </div>
</div>