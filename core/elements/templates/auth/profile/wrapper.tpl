{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
              
            [[-!Profile? &prefix=`usr.`]]
            <div class="profile-page">
              <div class="profile-page__row">
                <div class="profile-page__nav">
                  <a class="fs-28-19" href="">Заказы</a>
                  <a class="fs-28-19" href="">Избранное</a>
                  <hr />
                  <a class="fs-28-19" href="">Настройка профиля</a>
                  <a class="fs-28-19" href="">Обратная связь</a>
                  <a class="fs-28-19" href="{$_pls['logoutUrl']}">Выйти</a>
                </div>

                <div class="profile-page__content">
                    Email: {$_pls['modx.user.username']}
                </div>
              </div>
            </div>

        </div>
    </div>


{/block}
