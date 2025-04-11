{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="tabs-inform-page section-margin">
        <div class="container">
            {set $data = "@FILE snippets/getJsonData.php" | snippet : [
                "path" => "/assets/template/json/sections/gosts.json"
            ]}

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            {if $data['status'] == 'success'}
            <div class="tabs-inform-page__row">
                <div class="tabs-inform-page__categories">
                    {set $count = 0}
                    {foreach $data['data'] as $category_name => $items}
                        <a class="fs-28-19 {if $count++ == 0}active{/if}" data-opened-btn="{$category_name}" data-toggle-not="true" data-close-early="certs">{$category_name}</a>
                    {/foreach}
                </div>

                {set $count = 0}
                {foreach $data['data'] as $category_name => $items}
                    <div class="d-grid gap-16 col-md-3 {if $count++ == 0}opened{/if}" data-opened-element="{$category_name}">
                        {foreach $items as $item}
                        <div class="tabs-inform-page__item">
                            <div class="d-flex gap-8 fs-25-18 font-candara mb-24-16">
                                <svg width="18" height="22" class="primary-stroke">
                                    <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#document"></use>
                                </svg>
                                {$item['title']}
                            </div>
                            <div class="d-flex gap-16">
                                <a class="btn btn-bordered" href="{$item['href']}" target="_blank">Открыть</a>
                                <button class="btn btn-bordered d-flex gap-8" onclick="downloadFile('{$item['href']}','{$item['title']}')">
                                    <svg width="20" height="22" class="primary-stroke">
                                        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#download"></use>
                                    </svg>
                                    Скачать
                                </button>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                {/foreach}
            </div>
            {/if}
        </div>
    </div>

    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
