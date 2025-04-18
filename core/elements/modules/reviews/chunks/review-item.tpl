<div class="reviews-section__item">
  <div class="reviews-section__item-header">
    {if $avatar}<div class="reviews-section__item-avatar">
      <img src="{$avatar}" />
    </div>{/if}
    
    <div>
      <div class="fs-15">
        {'@FILE snippets/stringDateFormatted.php' | snippet : [
          'dateString' => $createdon
          'hiddens' => ['year']
        ]}
      </div>
      <div class="fw-500">
        {$user_name}
      </div>
    </div>
  
    <div class="rating-stars-static">
        {foreach range(1,$rating) as $rate}
          <svg width="16" height="16" class="primary-stroke">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#star"
            ></use>
          </svg>
        {/foreach}
      </div>
  </div>
    
    <div class="reviews-section__item-content">{$content}</div>

    <div class="reviews-section__item-footer">
      <div class="d-flex gap-8 fs-15 fw-500">
        <img class="reviews-section__item-logo" src="{$source['logo']}" />
        {$source['name']}
      </div>
    </div>
</div>
