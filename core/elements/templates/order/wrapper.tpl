{extends "file:layouts/base.tpl"} 
{block 'content'} 
{include "file:sections/breadcrumbs/wrapper.tpl"}
<div class="order-page section-margin">
  <div class="container">
    <div class="d-flex gap-16 align-start">
      <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>
    </div>

    {if $_modx->getPlaceholder('product_total')['count'] > 0}
      {'!FetchIt' | snippet : [
        'form' => '@FILE templates/order/form.tpl'
        'emailTo' => 'email' | config
        'emailSubject' => "Оформление заказа"
        'emailTpl' => '@FILE chunks/fetchit-email-tpl.tpl'
        'hooks' => 'email'
        'snippet' => 'FormIt'
        'customValidators' => 'phone-format'
        'validate' => 'phone:required:phone-format'
      ]}    
    {else}
      {include "file:chunks/empty.tpl" page="order"}
    {/if}
  </div>
</div>

{/block}
