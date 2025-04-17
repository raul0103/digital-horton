{extends "file:layouts/base.tpl"}
{block 'content'} 
  {include "file:sections/breadcrumbs/wrapper.tpl"}

  <div class="section-margin">
    <div class="container">
      <a href="{$_modx->makeURL('login_id'|config)}" class="d-block mb-24 section-title fw-700 font-candara sm-d-block">← {$_modx->resource.pagetitle}</a>
      <h1 class="section-title text-start sm-d-none">Личный кабинет</h1>

      <div class="profile-page">
        <div class="profile-page__row">
          <div class="sm-d-none">
            {include "file:templates/auth/common/auth-navigation.tpl"}
          </div>

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
