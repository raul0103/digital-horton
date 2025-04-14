{extends "file:layouts/base.tpl"}
{block 'content'} 
  {include "file:sections/breadcrumbs/wrapper.tpl"}

  <div class="section-margin">
    <div class="container">
      <h1 class="section-title text-start">Личный кабинет</h1>

      <div class="profile-page">
        <div class="profile-page__row">
          {include "file:templates/auth/profile/nav.tpl"}

          <div class="profile-page__content">
            {if 'profile_id' | config == $_modx->resource.parent}
              {set $file = "file:templates/auth/profile/pages/"~$_modx->resource.alias~".tpl"}  
              {include $file}
            {/if}
          </div>
        </div>
      </div>
    </div>
  </div>
{/block}
