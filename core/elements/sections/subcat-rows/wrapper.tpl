{set $items = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.categories'),
  'where' => '{"parent":'~$_modx->resource.id~'}'
]}

{if $items}
<div class="subcat-rows section-margin">
    <div class="container">
        <div class="subcat-rows__wrap">
            {foreach $items as $item}
                <a class="subcat-rows__item" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a> 
            {/foreach}
        </div>
    </div>
</div>
{/if}