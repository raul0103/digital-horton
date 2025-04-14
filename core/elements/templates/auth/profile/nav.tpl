<div class="profile-page__nav">
  {'pdoMenu' | snippet : [
      'parents' => 'profile_id' | config
      'tpl' => '@INLINE <a class="fs-28-19 {$classnames}" href="{$uri}">{$menutitle ?: $pagetitle}</a>
      {if $idx == 2}<hr />{/if}'
      'limit' => 0
      'tplOuter' => '@INLINE {$wrapper}'
  ]}

<a class="fs-28-19" href="{$_modx->makeURL('login_id'|config)}?service=logout">Выход</a>
</div>
