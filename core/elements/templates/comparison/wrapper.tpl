{extends "file:layouts/base.tpl"} 

{block 'content'}
    {set $product_ids = $_modx->getPlaceholder('comparison-products')}

    {include "file:sections/breadcrumbs/wrapper.tpl"}
    
    <div class="comparison-page section-margin">
        <div class="container">
            <div class="comparison-page__title">
                <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
                {if $product_ids && $product_ids | count}
                <button class="btn btn-bordered gap-8 d-flex" onclick="window.deleteProductSelection('comparison-products')">
                    <svg stroke="white" width="15" height="15" class="primary-stroke">
                        <use
                          xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#bucket-v2"
                        ></use>
                    </svg>
                    <span class="sm-d-none">очистить сравнение</span>
                </button>
                {/if}
            </div>

            {if $product_ids && $product_ids | count}
                {set $options = ['diametr_mm', 'product_type', 'tolshina_mm']}
                {set $options_title = ['Диаметр, мм', "Тип", "Толщина, мм"]}
                {set $data = "@FILE templates/comparison/snippets/getData.php" | snippet : [
                    'product_ids' => $product_ids
                    'options' => $options
                ]}

                <div class="comparison-page__categories">
                    {set $product_idx = 0}
                    <div class="comparison-page__categories-row">
                        {foreach $data as $parent_id => $products}
                            <button class="btn btn-simple {if $product_idx++ == 0}active{/if}" data-opened-btn="parent-{$parent_id}" data-close-early="compare" data-toggle-not="true">
                                {$products[0]['parent_title']} ({count($products)})
                            </button>
                        {/foreach}
                    </div>
                </div>

                <div class="sm-d-block mb-16">
                    <label class="custom-checkbox">
                        <input type="checkbox" onchange="window.comparisonEqual(this)">
                        <span class="checkmark border"></span>
                        Показать только отличия
                    </label>
                </div>

                <div class="comparison-page__products">
                    {set $product_idx = 0}
                    {foreach $data as $parent_id => $products}
                    <div class="comparison-page__products-group {if $product_idx++ == 0}opened{/if}" data-opened-element="parent-{$parent_id}">
                        <table class="comparison-page__product sm-d-none table-sticky">
                            <tr class="tr-image tr-equal-btn">
                                <td>
                                    <label class="custom-checkbox">
                                        <input type="checkbox" onchange="window.comparisonEqual(this)">
                                        <span class="checkmark border"></span>
                                        Показать только отличия
                                    </label>
                                </td>
                            </tr>
                            <tr class="tr-title"><td></td></tr>
                            <tr class="tr-price"><td></td></tr>
                            <tr class="tr-control"><td class="d-flex"></td></tr>

                            <tr class="tr-control tr-delete-category"></tr>
                            {*<tr class="tr-control tr-delete-category"><td>
                                <button class="btn btn-simple">
                                    <svg stroke="white" width="15" height="15">
                                        <use
                                        xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#bucket-v2"
                                        ></use>
                                    </svg>
                                    Очистить категорию
                                </button>
                            </td></tr>*}

                            <tr class="tr-option tr-flex-left tr-border-bottom"><td><b>Технические характеристики</b></td></tr>
                            {foreach $options as $idx => $option}
                                <tr class="tr-option tr-flex-left" data-comparison-key="{$option}"><td>{$options_title[$idx]}</td></tr>
                            {/foreach}
                        </table>
                        {foreach $products as $index => $product}
                        <table class="comparison-page__product">
                            <tr class="tr-image"><td><img src="{$product['image']}" /></td></tr>
                            <tr class="tr-title"><td><a href="{$product['uri']}">{$product['pagetitle'] | truncate : 30 : ' ... '}</a></td></tr>
                            <tr class="tr-price"><td class="fs-28-19-16">{$product['price']} руб.</td></tr>
                            <tr class="tr-control">
                                <td class="d-flex">
                                    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$product['id']}
                                </td>
                            </tr>

                            <tr class="tr-control">
                                <td class="d-flex gap-8 justify-between">
                                    <button class="btn btn-simple-v2" onclick="product_card.events.buyOneClick({$product['id']})">Купить сейчас</button>
                                    <div class="d-flex gap-8">
                                        {include "file:modules/store-product-selection/chunks/favorites/btn.tpl" product_id=$product['id']}
                                        {include "file:modules/store-product-selection/chunks/comparison/btn.tpl" product_id=$product['id']}
                                    </div>
                                </td>
                            </tr>

                            <tr class="tr-option tr-border-bottom"><td>{if $index == 0}<b class="sm-d-block fs-12">Технические характеристики</b>{/if}</td></tr>
                            {foreach $options as $idx => $option}
                                <tr class="tr-option tr-flex-center" data-comparison-key="{$option}" data-comparison-key="{$option}" data-comparison-value="{$product[$option]}">
                                    <td {if $index == 0}class="td-sm-d-flex"{/if}>
                                        {if $index == 0}<b class="sm-d-block secondary-gray-color">{$options_title[$idx]}</b>{/if}
                                        {$product[$option]}
                                    </td>
                                </tr>
                            {/foreach}
                        </table>
                        {/foreach}
                    </div>
                    {/foreach}
                </div>
            {else}
                {include "file:chunks/empty.tpl" page="compare"}
                {include "file:sections/need-product/wrapper.tpl"}
            {/if}
        </div>
    </div>
{/block}
