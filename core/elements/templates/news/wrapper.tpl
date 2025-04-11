{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="news-page section-margin">
        <div class="container">
            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            <div class="d-grid col-md-3 gap-24">
                {'pdoResources' | snippet : [
                    'parents' => $_modx->resource.id
                    'tpl' => '@FILE templates/news/item.tpl'
                    'limit' => 0
                    'includeTVs' => 'main_image'
                    'tvPrefix' => ''
                    'includeContent' => 1
                ]}
            </div>
        </div>
    </div>

    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
