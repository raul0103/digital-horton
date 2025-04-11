{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="certificates-page section-margin">
        <div class="container">
            {set $data = "@FILE snippets/getJsonData.php" | snippet : [
                "path" => "/assets/template/json/sections/certificates.json"
            ]}

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            {if $data['status'] == 'success'}
            <div class="certificates-page__row">
                <div class="certificates-page__categories">
                    {set $count = 0}
                    {foreach $data['data'] as $category_name => $items}
                        <a class="fs-28-19 {if $count++ == 0}active{/if}" data-opened-btn="{$category_name}" data-toggle-not="true" data-close-early="certs">{$category_name}</a>
                    {/foreach}
                </div>
                <div>
                    {set $count = 0}
                    {foreach $data['data'] as $category_name => $items}
                    <div class="certificates-page__images {if $count++ == 0}opened{/if}" data-opened-element="{$category_name}">
                        {foreach $items as $item}
                            <a href="{$item}" class="glightbox"><img src="{$item}" /></a>
                        {/foreach}
                    </div>
                    {/foreach}
                </div>
            </div>
            {/if}
        </div>
    </div>

    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
