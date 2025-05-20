{set $option_idx = $_modx->getPlaceholder('option-idx') ?: 0}
{set $option_idx = $option_idx + 1}
{$_modx->setPlaceholder('option-idx',$option_idx)}

{if $option_idx < 10}
  {set $class_names = ['opened'=>'opened','active'=>'active']}
{else}
  {set $class_names = ['opened'=>'','active'=>'']}
{/if}

{set $key = $table ~ $delimeter ~ $filter}
<fieldset class="category-listing__filter {$class_names['opened']}" id="mse2_{$key}" data-opened-element="filter-{$key}">
  <div class="category-listing__filter-title filter_title {$class_names['active']}" data-opened-btn="filter-{$key}">
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
    data-opened-element="filter-values-{$key}"
    data-search-by-words-container="{$key}"
  >
    {$rows}
  </div>

  {* Плейсхолдер записывается в чанке sections\category-listing\chunks\filters\tpl-filter-row.tpl*}
  {if $_modx->getPlaceholder('category-listing-show-btn-more')}
  <div
    class="category-listing__filter-more-btn"
    data-opened-btn="filter-values-{$key}"
    data-active-text="Скрыть"
  >
    Смотреть все
  </div>
  {/if}
</fieldset>
