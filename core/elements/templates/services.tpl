{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="services-page section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>


            <div class="accordion">
                <div class="accordion__row">
                    
                    {'pdoResources'|snippet:[
                        'parents' => $_modx->resource.id
                        'tpl' => '@INLINE
                        <div class="accordion__item">
                            <div class="accordion__item-header fw-700 font-candara fs-32-19 {if $idx == 1}active{/if}" data-opened-btn="content-{$idx}">{$pagetitle}</div>
                            <div class="accordion__item-content {if $idx == 1}opened{/if}" data-opened-element="content-{$idx}">
                                
                                <div class="accordion__item-content__wrap d-grid {if $main_image}col-sm-2{/if} gap-24">
                                    <div class="services-page__item-content">
                                        <div class="fs-28-19 mb-16">{$resource_price}</div>
                                        {if $content}<div class="mb-32-16">{$content}</div>{/if}
                                        <div>
                                            <button class="btn btn-primary big-btn">Заказать</button>
                                        </div>
                                    </div>
                                    {if $main_image}<div class="services-page__item-image"><img src="{$main_image}" /></div>{/if}
                                </div>
                            </div>
                        </div>'
                        'includeTVs' => 'main_image,resource_price'
                        'tvPrefix' => ''
                        'includeContent' => 1
                    ]}

                </div>
            </div>


        </div>
    </div>

    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
