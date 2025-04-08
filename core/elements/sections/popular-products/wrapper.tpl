{set $products = '!msProducts' | snippet :[
  'parents' => 0,
  'resources' => '886,888,1135,1138,6452,6453,6477,6478,6480,6481,6862,7245,7555,7780,8950,9295,9307,29537,33737,44678,44855,44934'
  'tpl' => '@FILE modules/product-cards/chunks/v1/wrapper.tpl'
]}

{if $products}
<div class="popular-products section-margin">
    <div class="container">
        <h2 class="section-title">Популярные товары</h2>
        {include "file:sections/product-slider/wrapper.tpl" items_html=$products}
    </div>
</div>
{/if}