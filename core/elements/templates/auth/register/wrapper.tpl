{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            {include "file:templates/auth/register/form.tpl"}
        
            [[!Register?
                &submitVar=`login-register-btn`
                &activation=`1`
                &activationEmailSubject=`Подтверждение регистрации`
                &activationResourceId=`45972`
                &successMsg=`Спасибо за регистрацию. На вашу электронную почту [[!+reg.email]] отправлено письмо, содержащее ссылку, необходимую для активации аккаунта. Перейдите по ссылке в письме, чтобы завершить процедуру регистрации.`
                &usergroups=`Users`
                &usernameField=`email`
                &passwordField=`password`
                &validate=`nospam:blank,
                password:required:minLength=^8^,
                password_confirm:password_confirm=^password^,
                fullname:required,
                email:required:email`
                &placeholderPrefix=`reg.`
          ]]
          
        </div>
    </div>


{/block}
