{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            {include "file:templates/auth/register/form.tpl"}
        
            [[!Register?
                &usergroups=`Users`
                &usernameField=`email`
                &submittedResourceId=`[[++register_thanks_id]]`
                &activationResourceId=`[[++register_confirm_id]]`
                &errTpl=`<div class="error-color">[[+error]]</div>`
            ]]

        </div>
    </div>
{/block}
