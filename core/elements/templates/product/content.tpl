<div class="product-page__content">
  <div class="product-page__content-top">
    <div class="d-flex flex-wrap gap-8">
      {include "file:chunks/availability.tpl"}
      <div class="d-flex gap-8 mr-16">
        {include "file:chunks/rating-stars.tpl"}
        <span class="fs-14 primary-light-color">5 (0 отзывов)</span>
      </div>
      <div class="d-flex gap-8">
        {include "file:modules/store-product-selection/chunks/favorites/btn.tpl" simple=true product_id=$_modx->resource.id}
        {include "file:modules/store-product-selection/chunks/comparison/btn.tpl" simple=true product_id=$_modx->resource.id}
      </div>
    </div>
  </div>
  {include "file:templates/product/options/wrapper.tpl"}
</div>
