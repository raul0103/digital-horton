<div class="container pt-3">
  <div class="card text-dark bg-white mx-auto mb-3" style="max-width: 30rem;">
    <div class="card-header">Пользователь: <b>[[!+modx.user.username]]</b></div>
    <div class="card-body">
      [[+errors:notempty=`<div class="alert alert-danger" role="alert">[[+errors:striptags]]</div>`]]
      <div class="list-group">
        <a class="list-group-item list-group-item-action" href="[[~6]]">Личный кабинет</a>
        <a class="list-group-item list-group-item-action" href="[[~7]]">Изменение пароля</a>
        <a class="list-group-item list-group-item-action" href="[[~8]]">Редактирование данных</a>
        <a class="list-group-item list-group-item-action" href="[[+logoutUrl]]">[[+actionMsg]]</a>
      </div>
    </div>
  </div>
</div>