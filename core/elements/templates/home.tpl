{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/banner/wrapper.tpl"}

    {* Данные для категорий *}
        {if $.get.category_id}
            {set $category_id = $.get.category_id}
        {else}
            {set $category_id = 'catalog_id' | config}
        {/if}
        
        {set $sidebar_items = "@FILE snippets/data/staticCategories.php" | snippet : ['show_all' => true]}
        
        {set $categories = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
            'data' => $_modx->getPlaceholder('map-resources.categories'),
            'where' => '{"parent":'~$category_id~'}'
        ]}
        {include "file:sections/categories/wrapper.tpl" categories=$categories sidebar_items=$sidebar_items}
    {* Данные для категорий *}

    {include "file:sections/about/wrapper.tpl"}
    {include "file:modules/reviews/chunks/wrapper.tpl"}
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
