{set $product_ids = $_modx->getPlaceholder('favorite-products')}

{if count($product_ids) > 0}
    {include "file:sections/favorites/sortby-controls.tpl"}
    {include "file:sections/favorites/items.tpl" classes="col-md-4"}
{else}
    {include "file:chunks/empty.tpl" page="favorites"}
{/if}