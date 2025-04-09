{if $old_price}
    {set $discount = "@FILE snippets/discount.php" | snippet : [
        'old_price' => $old_price,
        'price' => $price
    ]}
{/if}

<div class="product-price">
  <div class="d-flex flex-wrap gap-4 align-end">
    <span class="fs-28-19 {$classes}">{$price} руб.</span>
    {if $old_price && $old_price != 0}
    <span class="old-price">{$old_price} руб.</span>
    {/if}
  </div>
  {if $old_price && $old_price != 0}
  <span class="discount fs-14 secondary-gray-color">
    {if $type_simple}
      -{$discount}%
    {else}
      <span class="xs-d-none secondary-gray-color">Скидка </span>
      <span class="xs-d-block">-</span>{$discount}%
    {/if}
  </span>
  {/if}
</div>
