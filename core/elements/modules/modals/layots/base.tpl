{block 'params'}{/block}

<div
  class="modal modal-callback"
  id="{$id}"
  {if $show_body_before}data-show-body-before="true"{/if}
>
  <div class="modal-overlay" data-modal-close></div>

  <div class="modal-container">

    <div data-modal-body-before>
      <div class="modal-callback__header">
        <div class="modal-title fs-title-1">{$title}</div>
      </div>
      <div class="modal-callback__body">
        {block 'body'}{/block}
        <div class="modal-require-info fs-caption muted-color">
          <span class="error-color">*</span> — обязательные поля
        </div>
      </div>

      <div class="modal-icon-close" data-modal-close></div>
    </div>

  </div>
</div>
