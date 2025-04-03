<div class="reviews-section__item {if $idx > 4}sm-d-none{/if}">
  <div class="reviews-section__item-header">
    {if $avatar}<div class="reviews-section__item-avatar">
      <img src="{$avatar}" />
    </div>{/if}
    
    <div>
      <div class="reviews-section__item-date fs-caption">
        {'@FILE snippets/stringDateFormatted.php' | snippet : [
          'dateString' => $createdon
          'hiddens' => ['year']
        ]}
      </div>
      <div class="reviews-section__item-author fw-600 ">
        {$user_name}
      </div>
    </div>

    {$rating_html}
  </div>

    <div class="reviews-section__item-info">
        
    </div>
    
    <div class="reviews-section__item-content">{$content}</div>

    <div class="reviews-section__item-footer">
      <img class="reviews-section__item-logo" src="{$logo ?: '/assets/template/icons/reviews/default.svg'}" />
    </div>
</div>
