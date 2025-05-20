{if $_modx->resource.parent not in list [440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,1780,1781]}
  {set $disabled_norms = true}
{/if}

{set $btns = [
  ['title' => 'Описание', 'id' => 'tab1', 'classlist' => 'active'],
  ['title' => 'Характеристики', 'id' => 'tab2'],
  ['title' => 'Доставка', 'id' => 'tab3'],
  ['title' => 'Нормы загрузки труб', 'id' => 'tab4', 'disabled' => $disabled_norms],
  ['title' => 'Документация', 'id' => 'tab5'],
  ['title' => 'Отзывы', 'id' => 'tab6','disabled'=>true],
]}

<div class="product-page__tabs section-margin">
  <div class="product-page__tabs-controls">
    <div class="product-page__tabs-controls-row">
      {foreach $btns as $btn}
        {if !$btn['disabled']}
          <button
            class="fs-25-18 {$btn['classlist']}"
            data-opened-btn="{$btn['id']}"
            data-close-early="tabs"
            data-toggle-not="true"
          >
            {$btn['title']}
          </button>
        {/if}
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

    {if !$disabled_norms}
    <div class="product-page__tabs-content" data-opened-element="tab4">
      {include "file:sections/loading-pipes/wrapper.tpl"}
    </div>
    {/if}

    <div class="product-page__tabs-content" data-opened-element="tab5">
      
    </div>

  {*
  <div class="product-page__tabs-content" data-opened-element="tab6">
    <button class="btn btn-bordered big-btn">Оставить отзыв</button>
  </div>
  *}
  </div>
</div>
