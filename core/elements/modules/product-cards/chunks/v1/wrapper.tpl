<div class="product-card">
  <div class="product-card__top">
    {include "file:modules/store-product-selection/chunks/favorites/btn.tpl" product_id=$id}
    {include "file:modules/store-product-selection/chunks/comparison/btn.tpl" product_id=$id}
  </div>
  <div class="product-card__image">
    <img src="" />
  </div>
  <a class="fs-28-19 fw-700 font-candara product-card__title" href="{$uri}">{$menutitle}</a>
  
  {include "file:modules/product-cards/chunks/common/product-price.tpl"}

  <div class="product-card__controls mt-auto">
    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$id}
  </div>
</div>
