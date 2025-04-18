{set $key = $table ~ $delimeter ~ $filter}
<fieldset
  class="category-listing__filter opened"
  id="mse2_{$key}"
  data-opened-element="{$key}"
>
  <div class="category-listing__filter-title filter_title" data-opened-btn="{$key}">Цена, руб.</div>
  <div class="category-listing__filter-price-inputs">{$rows}</div>
</fieldset>
