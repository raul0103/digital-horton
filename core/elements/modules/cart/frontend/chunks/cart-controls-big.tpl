{set $product_id = $product_id ?: $_modx->resource.id} 
{set $product_data = '@FILE modules/cart/backend/snippets/getProductData.php' | snippet : [
  'product_id' => $product_id 
]}

<form
  class="cart-product-big {if $product_data['count'] > 0}active{/if}"
  data-cart-form="{$product_id}"
  onsubmit="cart.submit(event)"
>
  {include "file:modules/cart/frontend/chunks/common/price-inputs.tpl"}

  <div class="w-100">
    <div class="cart-product-big__row">

      {include "file:modules/cart/frontend/chunks/common/controls.tpl" classes="show-active" product_count=$product_data['count']}

      <button
        class="cart-product-big__main-btn hide-active btn btn-primary w-100"
        data-cart-event="plus"
      >
        В корзину
      </button>

      <a
        class="show-active nohover arrow-link xs-d-none"
        href="{$_modx->makeURL('cart_id' | option)}"
      >
        В корзину
        <svg width="12" height="12">
          <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#arrow-right"></use>
        </svg>
      </a>
    </div>
  </div>
</form>

