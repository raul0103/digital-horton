{extends "file:layouts/base.tpl"} 

{block "before"}
  {*"@FILE snippets/redirectProfilePage.php" | snippet*}
{/block}
{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            [[!Login?
                &tplType=`file`
                &loginTpl=`[[++core_path]]elements/templates/auth/login/login-form.tpl`
                &logoutTpl=`[[++core_path]]elements/templates/auth/login/logout-form.tpl`
            ]]

        </div>
    </div>

{/block}
