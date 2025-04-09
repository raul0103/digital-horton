<form class="cart-product-deafult" onsubmit="cart.submit(event)">
  <input type="hidden" name="id" value="{$product_id}" />
  <input type="hidden" name="price" value="{$price}" />
  <input type="hidden" name="old_price" value="{$old_price}" />
  <input type="hidden" name="unit" value="{$unit}" />

  {include "file:modules/cart/frontend/chunks/common/controls.tpl"}
</form>
