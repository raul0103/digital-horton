{extends "file:modules/modals/layots/base.tpl"} 

{block 'params'}
  {set $id='modal-change-password'}
  {set $title="Изменение пароля"}
{/block}

{block 'body'}
    <form class="form d-grid gap-8" onsubmit="return changePassword(event)">
        <div class="form__group">
            <label>Старый пароль</label>
            <input type="password" name="old_password" value="" />
        </div>

        <div class="form__group">
            <label>Новый пароль</label>
            <input type="password" name="new_password" value="" />
        </div>

        <div class="form__group">
            <label>Повторите пароль</label>
            <input type="password" name="new_password_confirm" value="" />
        </div>

        <button class="btn btn-primary big-btn w-100" type="submit">Подтвердить</button>
    </form>
{/block}