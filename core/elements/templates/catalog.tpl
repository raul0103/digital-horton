{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/banner/wrapper.tpl"}
    {include "file:sections/breadcrumbs/wrapper.tpl"}
    
    <div class="container">
      <h2 class="section-title">Полимерные трубы</h2>
      {include "file:sections/categories/wrapper.tpl"}
    </div>

    {include "file:sections/popular-products/wrapper.tpl"}
    
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
