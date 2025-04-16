
{set $params = ['price' => $product.price]}

{* Если у клиента была скидка при оформлении заказа *}
{if $product.options.user_discount}
  {set $params['get_user_discount'] = $product.options.user_discount}
{else}
  {set $params['get_user_discount'] = true}
{/if}

{set $get_price = "@FILE snippets/getPrice.php" | snippet : $params}
{set $price = $get_price['user_price'] ?: $get_price['price']}

<div class="product-card--v4 d-flex gap-12 {if $index > 4}hidden{/if}">
  <img
    class="product-card--v4__image"
    src="{$product.thumb}"
    width="64"
    height="64"
    loading="lazy"
  />
  <div class="d-grid gap-8">
    <div class="fs-15">{$product.pagetitle}</div>
    <div class="d-flex gap-8">
      <div class="font-candara">{$price} РУБ.</div>
      {if $get_price['user_price']}
        <span class="old-price fs-12">{$get_price['price']} руб.</span>
      {/if}
    </div>
  </div>

  <div class="product-card--v4__mark">
    {$product.count} {$product.unit ?: "шт."}
  </div>
</div>
