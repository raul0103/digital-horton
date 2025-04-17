{extends "file:modules/modals/layots/base.tpl"} 

{block 'params'}
  {set $id='modal-order-add-review'}
  {set $title="Оставить отзыв на заказ"}
{/block}

{block 'body'}
    <form class="form d-grid gap-16" onsubmit="return addOrderReview(event)">
      <textarea name="content" rows="8" required></textarea>

      <button class="btn btn-primary big-btn w-100" type="submit">Отправить</button>
    </form>
{/block}