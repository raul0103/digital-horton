{set $key = $table ~ $delimeter ~ $filter}
<fieldset class="category-listing__filter opened" id="mse2_{$key}">
  <div class="category-listing__filter-title filter_title">
    {('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon}
  </div>

  <div class="search-by-words">
    <input placeholder="Поиск ..." type="text" data-search-by-words="{$key}" />
    <svg width="20" height="20" stroke="#858EA0">
      <use
        xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#search-simple"
      ></use>
    </svg>
  </div>

  <div
    class="category-listing__filter-row"
    data-opened-element="filter-{$key}"
    data-search-by-words-container="{$key}"
  >
    {$rows}
  </div>

  {* Плейсхолдер записывается в чанке sections\category-listing\chunks\filters\tpl-filter-row.tpl*}
  {if $_modx->getPlaceholder('category-listing-show-btn-more')}
  <div
    class="category-listing__filter-more-btn"
    data-opened-btn="filter-{$key}"
    data-active-text="Скрыть"
  >
    Смотреть все
  </div>
  {/if}
</fieldset>
