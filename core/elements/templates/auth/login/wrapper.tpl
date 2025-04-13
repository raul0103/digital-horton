{extends "file:layouts/base.tpl"} 

{block "before"}
  {*"@FILE snippets/redirectProfilePage.php" | snippet*}
{/block}
{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            {set $loginTpl = $_modx->config.core_path~'elements/templates/auth/login/login-form.tpl'}
            {set $logoutTpl = $_modx->config.core_path~'elements/templates/auth/login/logout-form.tpl'}
            {'-Login' | snippet : [
                'tplType' => 'file'
                'loginTpl' => $loginTpl
                'logoutTpl' => $logoutTpl
                '-loginViaEmail' => true
                '-loginResourceId' => 1
            ]}

            [[!-Login?
                &tplType=`file`
                &loginTpl=`[[++core_path]]elements/templates/auth/login/login-form.tpl`
                &logoutTpl=`[[++core_path]]elements/templates/auth/login/logout-form.tpl`
                &-loginResourceId=`6`
            ]]

            
            [[!Login]]
        </div>
    </div>

{/block}
