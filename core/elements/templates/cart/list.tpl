{set $products = "@FILE modules/cart/backend/snippets/getProducts.php" | snippet : [
    'options' => [
        'option-1' => 'razmer-mm',
        'option-2' => 'obem-m3',
    ]
]} 
        
{if !$products}
<div class="cart-page__items">Пусто</div>
{else}
<div class="cart-page__list">
    <div class="cart-page__list-top"></div>
    <div class="cart-page__list-row">
        {foreach $products as $product}
            {include "file:modules/product-cards/chunks/v3/wrapper.tpl" product=$product}
        {/foreach}
    </div>
</div>
{/if}