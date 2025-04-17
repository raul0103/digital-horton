{extends "file:layouts/base.tpl"} 

{block 'content'}
    {set $product_ids = $_modx->getPlaceholder('favorite-products')}

    {include "file:sections/breadcrumbs/wrapper.tpl"}
    <div class="section-margin favorites-page">
        <div class="container">
            <div class="favorites-page__top">
                <div class="d-flex gap-16 align-start">
                    <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
                    {if $product_ids}
                        <span class="fs-21-15 secondary-gray-color"><span data-selection-key="favorite-products">{count($product_ids)}</span> {count($product_ids)|declension:'товар|товара|товаров'}</span>
                    {/if}
                </div>
                {if $product_ids}
                <button class="btn btn-bordered d-flex gap-8" onclick="addAllProductsInCart()">
                    <svg width="22" height="22" class="primary-stroke">
                        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#circle-plus"></use>
                    </svg>
                    Добавить все в корзину
                </button>
                {/if}
            </div>
            
            {if count($product_ids) > 0}
                {include "file:sections/favorites/sortby-controls.tpl"}
                {include "file:sections/favorites/items.tpl" classes="col-md-5"}
            {else}
                {include "file:chunks/empty.tpl" page="favorites"}
                {include "file:sections/need-product/wrapper.tpl"}
            {/if}
        </div>
    </div>

{/block}
