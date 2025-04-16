{if $_modx->getPlaceholder('user_discount')}
  {set $discount = $_modx->getPlaceholder('user_discount')}
{else}
  {if $old_price}
    {set $discount = "@FILE snippets/discount.php" | snippet : [
        'old_price' => $old_price,
        'price' => $price
    ]}
  {/if}
{/if}

{set $get_price = "@FILE snippets/getPrice.php" | snippet : [
  'price' => $price,
  'user_discount' => $_modx->getPlaceholder('user_discount')
]}

{set $price = $get_price['user_price'] ?: $get_price['price']}
{set $old_price = $get_price['user_price'] ? $get_price['price'] : $old_price}

<div class="product-price">
  <div class="d-flex flex-wrap gap-4 align-end">
    <span class="fs-28-19 price {$classes}">{$price} руб.</span>
    {if $old_price && $old_price != 0}
    <div class="d-flex justify-between gap-12 {if $old_price_width_full}w-100{/if}">
      <span class="old-price">{$old_price} руб.</span>
      <span class="discount fs-14 secondary-gray-color">
        {if $type_simple}
          -{$discount}%
        {else}
          <span class="xs-d-none secondary-gray-color">Скидка </span>
          <span class="xs-d-block">-</span>{$discount}%
        {/if}
      </span>
    </div>
    {/if}
  </div>

</div>
