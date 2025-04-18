{extends "file:modules/modals/layots/base.tpl"} 

{block 'params'}
  {set $id='modal-delete-account'}
  {set $title="Вы уверены, что хотите удалить аккаунт?"}
{/block}

{block 'body'}
<div class="d-flex gap-16">
  <button class="btn btn-bordered big-btn w-100" data-modal-close>
    Отменить
  </button>
  <button class="btn btn-primary big-btn d-flex w-100" onclick="deleteAccount(this)">Удалить</button>
</div>
{/block}