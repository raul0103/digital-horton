{extends "file:layouts/base.tpl"} 

{block 'content'}
    {set $product_count = $_modx->getPlaceholder('product_total')['count']}

    {include "file:sections/breadcrumbs/wrapper.tpl"}
    <div class="container">
        <div class="d-flex gap-16 align-start">
            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
            {if $product_count}
                <span class="fs-21-15 secondary-gray-color"><span data-cart-total-count>{$product_count}</span> {$product_count|declension:'товар|товара|товаров'}</span>
            {/if}
        </div>
        {include "file:templates/cart/list.tpl"}
    </div>
    {include "file:sections/need-product/wrapper.tpl"}
{/block}
