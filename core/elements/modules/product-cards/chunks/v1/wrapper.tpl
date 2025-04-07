{set $discount = "@FILE snippets/discount.php" | snippet : [
    'old_price' => $old_price,
    'price' => $price
]}

<div class="product-card">
  <div class="product-card__top">
    <button class="btn btn-bordered">
      <svg width="18" height="22" stroke="#182641">
        <use
          xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#favorites"
        ></use>
      </svg>
    </button>
    <button class="btn btn-bordered">
        <svg width="22" height="22">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#compare"
          ></use>
        </svg>
    </button>
  </div>
  <div class="product-card__image">
    <img src="" />
  </div>
  <a class="mb-16 d-block fs-28-19 fw-700 font-candara" href="{$uri}">{$menutitle}</a>
  <div class="product-card__price">
    <span class="fs-28-19">{$price}</span>
    {if $old_price && $old_price != 0}
    <span class="old-price">{$old_price}</span>
    <span class="discount fs-14 secondary-gray-color"
      ><span class="xs-d-none secondary-gray-color">Скидка </span
      >{$discount}%</span
    >
    {/if}
  </div>

  <div class="product-card__controls">
    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$id}
  </div>
</div>
