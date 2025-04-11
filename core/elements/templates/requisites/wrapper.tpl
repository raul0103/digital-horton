{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="requisites-page section-margin">
        <div class="container">

            <div class="requisites-page__row">
                <div class="requisites-page__info">
                    <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
                    {include "file:templates/requisites/info.tpl"}
                    
                </div>

                <div class="d-grid gap-24">
                    {include "file:chunks/map-script.tpl" height='100%'}
                    {include "file:sections/horizontal-form/wrapper.tpl" title="Оставьте заявку и мы перезвоним вам! "}
                    {include "file:chunks/social-links.tpl"}
                </div>
            </div>

        </div>
    </div>

{/block}
