<div class="product-card">
  <div class="product-card__top">
    {include "file:modules/store-product-selection/chunks/favorites/btn.tpl" product_id=$id}
    {include "file:modules/store-product-selection/chunks/comparison/btn.tpl" product_id=$id}
  </div>
  <a class="product-card__image {if !$medium}bg{/if}" href="{$uri}">
    {if $medium}<img src="{$medium}" loading="lazy"/>{/if}
  </a>
  <a class="fs-21-15-13 fw-700 product-card__title" href="{$uri}">{$menutitle ?: $pagetitle}</a>
  
  {include "file:modules/product-cards/chunks/common/product-price.tpl"}

  <div class="product-card__controls mt-auto">
    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$id}
  </div>
</div>
