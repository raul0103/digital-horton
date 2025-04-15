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
    <div class="font-candara">{$product.price+0|number_format:0:',':' '} РУБ.</div>
  </div>

  <div class="product-card--v4__mark">
    {$product.count} {$product.unit ?: "шт."}
  </div>
</div>
