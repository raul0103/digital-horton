{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="projects-page section-margin">
        <div class="container">
            {set $data = "@FILE snippets/getJsonData.php" | snippet : [
                "path" => "/assets/template/json/sections/projects-gallery.json"
            ]}

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            {if $data['status'] == 'success'}
            <div class="projects-page__row">
                <div class="projects-page__categories">
                    <div class="projects-page__categories-wrap">
                        {set $count = 0}
                        {foreach $data['data'] as $category_name => $items}
                            <a class="fs-28-19 font-candara fw-700 {if $count++ == 0}active{/if}" data-opened-btn="{$category_name}" data-toggle-not="true" data-close-early="certs">{$category_name}</a>
                        {/foreach}
                    </div>
                </div>

                <div class="projects-page__gallery-title">Фото производства</div>
                {set $count = 0}
                {foreach $data['data'] as $category_name => $items}
                    <div class="projects-page__gallery {if $count++ == 0}opened{/if}" data-opened-element="{$category_name}">
                        <div class="swiper" data-swiper="projects-gallery">
                            <div class="swiper-wrapper">
                                {foreach $items as $item}
                                    <a class="swiper-slide glightbox" href="{$item}">
                                        <img src="{$item}" loading="lazy"/>
                                    </a>
                                {/foreach}
                            </div>
                            {include "file:chunks/buttons/swiper-left.tpl"}
                            {include "file:chunks/buttons/swiper-right.tpl"}
                        </div>
                    </div>
                {/foreach}
            </div>
            {/if}
        </div>
    </div>

    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
