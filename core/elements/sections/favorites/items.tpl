{set $params = [
    'parents' => 0
    'tpl' => '@FILE modules/product-cards/chunks/v2/wrapper.tpl'
    'limit' => 0
    'includeThumbs' => 'medium'
]}

{if $.get['date_direction'] == 'desc'}
    {set $product_ids = "@FILE snippets/arrayReverse.php" | snippet : [
        'array' => $product_ids
    ]}
    {set $params['sortby'] = 'ids'}
{elseif $.get['date_direction'] == 'asc'}
    {set $params['sortby'] = 'ids'}
{/if}

{if $.get['price_direction'] == 'desc'}
    {set $params['sortby'] = '{"Data.price":"DESC"}'}
{elseif $.get['price_direction'] == 'asc'}
    {set $params['sortby'] = '{"Data.price":"ASC"}'}
{/if}

{set $params['resources'] = $product_ids | join}
<div class="d-grid gap-16 {$classes}">
    {'!msProducts' | snippet : $params}
</div>