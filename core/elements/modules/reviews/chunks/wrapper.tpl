<div class="reviews-section section-margin">
  <div class="container">
    <div class="reviews-section__block">
      <h2 class="reviews-section__title font-candara text-center fs-56-39-30">Отзывы наших клиентов</h2>

      {"@FILE modules/reviews/snippets/mltReviewItems.php" | snippet : [
        'tpl' => '@FILE modules/reviews/chunks/review-item.tpl',
        'tplOuter' => '@INLINE 
        <div class="reviews-section__items swiper" data-swiper="reviews">
          <div class="swiper-wrapper">
            {$items}
          </div>
          {include "file:chunks/buttons/swiper-left.tpl"}
          {include "file:chunks/buttons/swiper-right.tpl"}
        </div>',
        'limit' => 10
        '-where' => ["source"=>"yandex-map"]
        'ratingRowClass' => 'rating-stars-static'
      ]}

      <div class="reviews-section__controls">
        <a href="{$_modx->makeURL('reviews_id' | option)}" class="fs-17 fw-700 text-uppercase">Смотреть все отзывы</a>
      </div>
    </div>
  </div>
</div>
