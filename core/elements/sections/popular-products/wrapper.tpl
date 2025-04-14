{set $products = '!msProducts' | snippet :[
  'includeThumbs' => 'medium'
  'parents' => 'catalog_id' | config,
  'limit' => 10
  'tpl' => '@FILE modules/product-cards/chunks/v1/wrapper.tpl'
]}

{if $products}
<div class="section-margin">
    <div class="container">
        <h2 class="section-title">Популярные товары</h2>
        {include "file:sections/product-slider/wrapper.tpl" items_html=$products}
    </div>
</div>
{/if}