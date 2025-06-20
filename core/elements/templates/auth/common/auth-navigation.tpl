<div class="auth-navigation">
  {'pdoMenu' | snippet : [
      'parents' => 'profile_id' | config
      'tpl' => '@INLINE <a class="fs-28-19-16 {$classnames}" href="{$uri}">{$menutitle ?: $pagetitle}</a>
      {if $idx == 2}<hr />{/if}'
      'limit' => 0
      'tplOuter' => '@INLINE {$wrapper}'
  ]}

  {*<a class="fs-28-19-16" href="{$_modx->makeURL('login_id'|config)}?service=logout">Выход</a>*}

  <a class="d-flex gap-8 btn btn-bordered big-btn w-100" href="{$_modx->makeURL('catalog_id'|config)}">
    <svg width="23" height="18" class="primary-stroke">
      <use
        xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#back-arrow"
      ></use>
    </svg>
    Вернуться к покупкам
  </a>

  {if $_modx->getPlaceholder('user_discount')}
  <div class="auth-navigation__discount">
    <div class="mb-16">
      <span class="fs-32-23-18 fw-700 font-candara">{$_modx->getPlaceholder('user_discount')}%</span>
      <span class="fs-15 fw-700 font-candara">ваша персональная скидка </span>
    </div>
    <div class="fs-14 mb-12">Хотите дополнительную скидку?</div>
    <button class="btn btn-bordered big-btn w-100" onclick="modals.events.open('modal-add-ticket')">Написать менеджеру</button>
  </div>
  {/if}
</div>
