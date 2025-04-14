{extends "file:layouts/base.tpl"} 

{block 'content'}
    <div class="section-margin">
        <div class="container">

            <div class="empty-page-block" style="max-width: 800px;">
                <div class="fs-48-33 font-candara fw-700">Спасибо за регистрацию</div>
                <div class="text-content">
                    <p>
                      На вашу электронную почту <b>{$.get.email}</b> отправлено письмо,
                      содержащее ссылку, необходимую для активации аккаунта.
                    </p>
                    <p>
                      Перейдите по ссылке в письме, чтобы завершить процедуру регистрации.
                    </p>
                </div>
            </div>
          
        </div>
    </div>
{/block}
