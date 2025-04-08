{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}
    <div class="container">
        <h1 class="section-title">{$_modx->resource.pagetitle}</h1>
    </div>
    {include "file:sections/subcat-slider/wrapper.tpl"}
    {include "file:sections/collapse-content/wrapper.tpl"}
    {include "file:sections/advantages/wrapper.tpl"}
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
