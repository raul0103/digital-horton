<div class="product-page__sidebar">
  {include "file:modules/product-cards/chunks/common/product-price.tpl" type_simple=true}

  {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl"}

  <button class="btn btn-bordered big-btn w-100 sm-d-none" onclick="product_card.events.buyOneClick({$_modx->resource.id})">Купить в 1 клик</button>
</div>
