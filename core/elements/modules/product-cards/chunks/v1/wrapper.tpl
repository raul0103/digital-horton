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
  
  {include "file:modules/product-cards/chunks/common/product-price.tpl"}

  <div class="product-card__controls mt-auto">
    {include "file:modules/cart/frontend/chunks/cart-controls-big.tpl" product_id=$id}
  </div>
</div>
