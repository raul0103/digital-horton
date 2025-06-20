{set $depth = $_modx->resource.depth ?: 3}
{set $filters = $_modx->resource.filters ?: 'ms|price:number'}
{'!mFilter2' | snippet : [
    'element' => 'msProducts'
    'depth' => $depth
    'includeThumbs' => 'medium'
    'limit' => 24
    'parents' => $_modx->resource.id
    'filters' => $filters
    'tplOuter' => '@FILE sections/category-listing/tpl-outer.tpl'
    'tplFilter.outer.ms|price' => '@FILE sections/category-listing/filters/tpl-filter-slider.tpl'
    'tplFilter.row.ms|price' => '@FILE sections/category-listing/filters/tpl-filter-number.tpl'
    'tplFilter.outer.default' => '@FILE sections/category-listing/filters/tpl-filter-outer.tpl'
    'tplFilter.row.default' => '@FILE sections/category-listing/filters/tpl-filter-row.tpl'
    'includeTVs' => 'priority'
    'sort' => 'tv|priority:desc',
    'tpls' => '@FILE modules/product-cards/chunks/v2/wrapper.tpl'
    'ajaxMode' => 'button'
    'suggestions' => 0
    'showEmptyFilters' => 0
    'suggestionsMaxFilters' => 0
    'suggestionsMaxResults' => 0
    'suggestionsSliders' => false
]}