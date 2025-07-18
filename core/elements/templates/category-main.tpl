{extends "file:layouts/base.tpl"} 

{block 'content'}
    <div class="category-white-block">
        {include "file:sections/breadcrumbs/wrapper.tpl"}
        <div class="container">
            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
        </div>
    </div>

    {include "file:sections/subcat-rows-images/wrapper.tpl"}

    {include "file:sections/category-listing/wrapper.tpl"}
    {*include "file:sections/collapse-content/wrapper.tpl"*}
    {include "file:sections/advantages/wrapper.tpl"}
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
