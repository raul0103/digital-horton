{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            [[!ConfirmRegister?
                &authenticate=`1`
                &redirectTo=`[[++login_id]]`
                &errorPage=`[[++login_id]]`
            ]]
        </div>
    </div>


{/block}
