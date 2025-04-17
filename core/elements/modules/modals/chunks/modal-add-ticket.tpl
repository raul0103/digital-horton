{extends "file:modules/modals/layots/base.tpl"} 

{block 'params'}
  {set $id='modal-add-ticket'}
  {set $title="Обратная связь"}
{/block}

{block 'body'}
    <form class="form d-grid gap-16" onsubmit="return addTicket(event)">
      <div class="form__group">
        <label>Тема обращения</label>
        <input type="text" name="subject" required placeholder="Укажите тему обращения, например, вопрос о доставке" />
      </div>

      <div class="form__group">
        <label>Текст обращения</label>
        <textarea name="content" placeholder="Введите текст обращения" rows="8" required></textarea>
      </div>

      <button class="btn btn-primary big-btn w-100" type="submit">Отправить</button>
    </form>
{/block}