{set $discount = "@FILE snippets/discount.php" | snippet : [
    'old_price' => $old_price,
    'price' => $price
]}

<div class="product-card">
  <div class="product-card__top">
    <button class="btn btn-bordered">
      <svg width="18" height="22" class="primary-stroke">
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
  <a class="fs-28-19 fw-700 font-candara product-card__title" href="{$uri}">{$menutitle}</a>
  <div class="product-card__price">
    <div class="d-flex flex-wrap gap-4">
    <span class="fs-28-19">{$price} руб.</span>
      {if $old_price && $old_price != 0}
        <span class="old-price">{$old_price} руб.</span>
      {/if}
    </div>
    {if $old_price && $old_price != 0}
    <span class="discount fs-14 secondary-gray-color"
      ><span class="xs-d-none secondary-gray-color">Скидка </span
      ><span class="xs-d-block">-</span>{$discount}%</span
    >
    {/if}
  </div>

  <div class="product-card__controls mt-auto">
    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$id}
  </div>
</div>
