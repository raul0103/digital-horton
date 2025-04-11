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
                        <span class="fs-21-15 secondary-gray-color"><span data-cart-total-count>{count($product_ids)}</span> {count($product_ids)|declension:'товар|товара|товаров'}</span>
                    {/if}
                </div>
                <button class="btn btn-bordered d-flex gap-8" onclick="addAllProductsInCart()">
                    <svg width="22" height="22" class="primary-stroke">
                        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#circle-plus"></use>
                    </svg>
                    Добавить все в корзину
                </button>
            </div>

            <div class="sortby-controls">
                <div class="sortby-controls__item" id="mse2_sort">
                <label>Сортировать по </label>
                <a
                    class="sortby-controls__item-sort-item"
                    id="sort-by-date"
                    data-dir="asc"
                >
                    Дате добавления
                </a>
                <a
                    class="sortby-controls__item-sort-item"
                    id="sort-by-price"
                    data-dir="asc"
                >
                    Цене
                </a>
                </div>
            </div>
            
            {if count($product_ids) > 0}
                {set $params = [
                    'parents' => 0
                    'tpl' => '@FILE modules/product-cards/chunks/v2/wrapper.tpl'
                    'limit' => 0
                ]}

                {if $.get['date_direction'] == 'desc'}
                    {set $product_ids = "@FILE snippets/arrayReverse.php" | snippet : [
                        'array' => $product_ids
                    ]}
                    {set $params['sortby'] = 'ids'}
                {elseif $.get['date_direction'] == 'asc'}
                    {set $params['sortby'] = 'ids'}
                {/if}

                {if $.get['price_direction'] == 'desc'}
                    {set $params['sortby'] = '{"Data.price":"DESC"}'}
                {elseif $.get['price_direction'] == 'asc'}
                    {set $params['sortby'] = '{"Data.price":"ASC"}'}
                {/if}

                {set $params['resources'] = $product_ids | join}
                <div class="d-grid gap-16 col-md-5">
                    {'!msProducts' | snippet : $params}
                </div>
            {else}
                {include "file:chunks/empty.tpl" page="compare"}
            {/if}
        </div>
    </div>

{/block}
