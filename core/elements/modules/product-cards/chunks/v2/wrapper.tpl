<div class="product-card">
  <div class="product-card__top">
    {include "file:modules/store-product-selection/chunks/favorites/btn.tpl" product_id=$id}
    {include "file:modules/store-product-selection/chunks/comparison/btn.tpl" product_id=$id}
  </div>
  <div class="product-card__image {if !$thumb}bg{/if}">
    {if $thumb}<img src="{$thumb}" loading="lazy"/>{/if}
  </div>
  <a class="fs-28-19 fw-700 font-candara product-card__title" href="{$uri}">{$menutitle}</a>
  
 
    <div class="d-flex justify-between flex-wrap gap-8 mb-12">
      {include "file:chunks/availability.tpl"}
      {include "file:chunks/rating-stars.tpl"}
    </div>

    {include "file:modules/product-cards/chunks/common/product-price.tpl" old_price_width_full=true type_simple=true}
    {include "file:modules/product-cards/chunks/v2/options.tpl"}

  <div class="product-card__controls mt-auto">
    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$id}
    <button class="btn btn-simple-v2 m-auto">Купить в 1 клик</button>
  </div>
</div>
