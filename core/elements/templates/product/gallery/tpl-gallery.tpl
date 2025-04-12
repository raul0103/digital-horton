<div
  class="swiper product-page__gallery-thumbs"
  data-swiper="product-gallery-thumbs"
>
  <div class="swiper-wrapper">
    {foreach $files as $file}
    <div class="swiper-slide">
      <img src="{$file['small']}" loading="lazy" />
    </div>
    {/foreach}
  </div>

  <button class="swiper-button-prev">
    <svg width="16" height="16" class="primary-stroke">
      <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#arrow-left"></use>
    </svg>
  </button>
  <button class="swiper-button-next">
    <svg width="16" height="16" class="primary-stroke">
      <use
        xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#arrow-right"
      ></use>
    </svg>
  </button>
</div>

<div
  class="swiper product-page__gallery-preview"
  data-swiper="product-gallery-preview"
>
  <div class="swiper-wrapper">
    {foreach $files as $file}
    <div class="swiper-slide">
      <a class="glightbox" data-gallery="product-gallery" href="{$file['url']}">
        <img src="{$file['webp']}" loading="lazy" />
      </a>
    </div>
    {/foreach}
  </div>
</div>
