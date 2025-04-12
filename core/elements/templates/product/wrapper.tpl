{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="product-page section-margin">
        <div class="container">
            <div class="product-page__row">
                {include "file:templates/product/gallery/wrapper.tpl"}
                <div class="d-grid gap-24">
                    <h1 class="font-candara fs-32-23 text-uppercase">{$_modx->resource.pagetitle}</h1>
                    <div class="product-page__info-row">
                        {include "file:templates/product/content.tpl"}
                        <button class="btn btn-bordered w-100 sm-d-block">Заказать сейчас</button>
                        {include "file:templates/product/sidebar.tpl"}
                    </div>
                </div>
            </div>
            {include "file:templates/product/tabs/wrapper.tpl"}
        </div>
    </div>
    
    {include "file:sections/advantages/wrapper.tpl"}
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
