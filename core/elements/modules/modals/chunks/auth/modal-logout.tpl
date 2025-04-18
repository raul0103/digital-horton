{extends "file:modules/modals/layots/base.tpl"} 

{block 'params'}
  {set $id='modal-logout'}
  {set $title="Вы уверены, что хотите выйти?"}
{/block}

{block 'body'}
  <div class="d-flex gap-16">
    <button class="btn btn-bordered big-btn w-100" data-modal-close>
      Остаться
    </button>
    <a class="btn btn-primary big-btn d-flex w-100" href="{$_modx->makeURL('login_id'|config)}?service=logout">
      Выйти
    </a>
  </div>
{/block}