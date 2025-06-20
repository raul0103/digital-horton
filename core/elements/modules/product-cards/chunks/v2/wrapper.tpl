<div class="product-card">
  <div class="product-card__top">
    {include "file:modules/store-product-selection/chunks/favorites/btn.tpl" product_id=$id}
    {include "file:modules/store-product-selection/chunks/comparison/btn.tpl" product_id=$id}
  </div>
  <a class="product-card__image {if !$medium}bg{/if}" href="{$uri}">
    {if $medium}<img src="{$medium}" loading="lazy"/>{/if}
  </a>
  <a class="fs-24-17-13 fw-700 product-card__title" href="{$uri}">{$menutitle ?: $pagetitle}</a>
  
    <div class="d-flex justify-between flex-wrap gap-8 mb-12">
      {include "file:chunks/availability.tpl"}
      {include "file:chunks/rating-stars.tpl"}
    </div>

    {include "file:modules/product-cards/chunks/common/product-price.tpl" type_simple=true}
    {include "file:modules/product-cards/chunks/v2/options.tpl"}

  <div class="product-card__controls mt-auto">
    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$id}
    <button class="btn btn-simple-v2 m-auto" onclick="product_card.events.buyOneClick({$id})">Купить в 1 клик</button>
  </div>
</div>
