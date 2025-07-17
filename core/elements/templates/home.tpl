{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/banner/wrapper.tpl"}

    {* Данные для категорий *}
        {if $_modx->context.key == 'web'}
            {set $category_id = 439}
        {else}
            {set $category_id = 'catalog_id' | config}
        {/if}

        {set $categories = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
            'data' => $_modx->getPlaceholder('map-resources.categories'),
            'where' => '{"parent":'~$category_id~'}'
        ]}
        {include "file:sections/categories/wrapper.tpl" categories=$categories}
    {* Данные для категорий *}

    {include "file:sections/about/wrapper.tpl"}
    {include "file:modules/reviews/chunks/wrapper.tpl"}
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
