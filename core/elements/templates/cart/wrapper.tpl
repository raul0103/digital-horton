{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}
    <div class="container">
        <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
        {include "file:templates/cart/list.tpl"}
    </div>
    {include "file:sections/need-product/wrapper.tpl"}
{/block}
