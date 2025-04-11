{extends "file:layouts/base.tpl"} 

{block 'content'}
<div class="error-page">
    <div class="container">
        <img class="error-page__image" src="/assets/template/images/pages/404/404.png" />
        {include "file:chunks/empty.tpl" page="error"}
    </div>
</div>
{/block}
