{extends "file:layouts/base.tpl"}
{block 'content'} 
  {include "file:sections/breadcrumbs/wrapper.tpl"}

  <div class="section-margin">
    <div class="container">
      <h1 class="section-title text-start">Личный кабинет</h1>

      <div class="profile-page">
        <div class="profile-page__row">
          {include "file:templates/auth/common/auth-navigation.tpl"}

        </div>
      </div>
    </div>
  </div>
{/block}
