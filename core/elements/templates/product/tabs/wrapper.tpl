{set $btns = [
  ['title' => 'Описание', 'id' => 'tab1', 'classlist' => 'active'],
  ['title' => 'Характеристики', 'id' => 'tab2'],
  ['title' => 'Доставка', 'id' => 'tab3'],
  ['title' => 'Нормы загрузки труб', 'id' => 'tab4'],
  ['title' => 'Документация', 'id' => 'tab5'],
  ['title' => 'Отзывы', 'id' => 'tab6'],
]}

<div class="product-page__tabs section-margin">
  <div class="product-page__tabs-controls">
    <div class="product-page__tabs-controls-row">
      {foreach $btns as $btn}
      <button
        class="{$btn['classlist']}"
        data-opened-btn="{$btn['id']}"
        data-close-early="tabs"
        data-toggle-not="true"
      >
        {$btn['title']}
      </button>
      {/foreach}
    </div>
  </div>

  <div class="product-page__tabs-row">
    <div class="product-page__tabs-content opened" data-opened-element="tab1">
      <div class="text-content">{$_modx->resource.content}</div>
    </div>

    <div class="product-page__tabs-content" data-opened-element="tab2">
      {include "file:templates/product/options/wrapper.tpl"}
    </div>

    <div class="product-page__tabs-content" data-opened-element="tab3">
      {include "file:sections/delivery-table/wrapper.tpl"}
    </div>

    <div class="product-page__tabs-content" data-opened-element="tab4">
      Сервис в разработке
    </div>

    <div class="product-page__tabs-content" data-opened-element="tab5">
      Сервис в разработке
    </div>

    <div class="product-page__tabs-content" data-opened-element="tab5">
      Сервис в разработке
    </div>
  </div>
</div>
