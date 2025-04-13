{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            [[!Profile? &prefix=`usr.`]]
            <div class="container pt-3">
                <div class="card text-dark bg-white mx-auto mb-3" style="max-width: 30rem;">
                  <div class="card-header">Личный кабинет пользователя</div>
                  <div class="card-body">
                    <ul class="list-group">
                      <li class="list-group-item">Имя пользователя: <span class="fw-bold">[[+usr.username]]</span></li>
                      <li class="list-group-item">Телефон: <span class="fw-bold">[[+usr.phone]]</span></li>
                      <li class="list-group-item">Email: <span class="fw-bold">[[+usr.email]]</span></li>
                      <li class="list-group-item">Страна: <span class="fw-bold">[[+usr.country]]</span></li>
                      <li class="list-group-item">Веб-сайт: <span class="fw-bold">[[+usr.website]]</span></li>
                      <a class="list-group-item list-group-item-primary list-group-item-action" href="[[~7]]">Изменение пароля</a>
                      <a class="list-group-item list-group-item-primary list-group-item-action" href="[[~8]]">Редактирование данных</a>
                    </ul>
                  </div>
                </div>
              </div>
              <a href="{$_modx->makeURL('logout_id' | config,'',['service'=>'logout'],'full')}">Выход</a>



        </div>
    </div>


{/block}
