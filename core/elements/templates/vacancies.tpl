{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            {set $data = "@FILE snippets/getJsonData.php" | snippet : [
                "path" => "/assets/template/json/sections/vacancies.json"
            ]}

            {if $data['status'] == 'success'}
            <div class="accordion">
                <div class="accordion__row">
                    {foreach $data['data'] as $index => $item}
                    <div class="accordion__item">
                        <div class="accordion__item-header fw-700 font-candara fs-28-19 {if $index == 0}active{/if}" data-opened-btn="content-{$index_column}{$index}">{$item['header']}</div>
                        <div class="accordion__item-content {if $index == 0}opened{/if}" data-opened-element="content-{$index_column}{$index}">
                            <div class="text-content">
                                {foreach $item['content'] as $key => $values}
                                    <div class="d-grid col-sm-30-1">
                                        <div class="fw-700 mt-32-16 fs-25-18 font-candara">{$key}</div>
                                        <ul class="mt-32-16">
                                            {foreach $values as $value}
                                                <li>{$value}</li>
                                            {/foreach}
                                        </ul>
                                    </div>
                                {/foreach}
                            </div>
                        </div>
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
