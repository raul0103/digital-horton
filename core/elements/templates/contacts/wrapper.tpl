{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="contacts-page section-margin">
        <div class="container">

            <div class="contacts-page__row">
                <div class="contacts-page__info">
                    <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
                    {include "file:templates/contacts/info.tpl"}
                    {include "file:templates/contacts/form.tpl"}
                </div>

                {include "file:chunks/map-script.tpl" height='100%'}
            </div>

        </div>
    </div>

{/block}
