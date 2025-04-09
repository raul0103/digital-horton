<div class="cart-product-controls {$classes}">
  <button class="btn btn-bordered fs-24" data-cart-event="minus">-</button>
  <input
    class="fw-600"
    type="number"
    value="{$product_count ?: 1}"
    onchange="cart.submit(event,this.form);"
    data-cart-event="change"
    data-cart-product-count="{$product_id}"
  />
  <button class="btn btn-bordered fs-24" data-cart-event="plus">+</button>
</div>
