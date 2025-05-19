{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/banner/wrapper.tpl"}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    {* Данные для категорий *}
        {set $categories = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
            'data' => $_modx->getPlaceholder('map-resources.categories'),
            'where' => '{"parent":'~$_modx->resource.id~'}'
        ]}
        {include "file:sections/categories/wrapper.tpl" categories=$categories}
    {* Данные для категорий *}

    {include "file:sections/popular-products/wrapper.tpl"}
    {include "file:sections/collapse-content/wrapper.tpl"}
    {include "file:sections/advantages/wrapper.tpl"}
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
