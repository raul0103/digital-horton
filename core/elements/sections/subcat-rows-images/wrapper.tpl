{set $items = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.categories'),
  'where' => '{"parent":'~$_modx->resource.id~'}'
]}

{if $items}
<div class="subcat-rows-images">
    <div class="container">
        <div class="subcat-rows-images__wrap">
            {foreach $items as $item}
                {if $item['main_image']}
                    {set $thumb = 'phpthumbon' | snippet : [
                        'input' => "{$item['main_image']}",
                        'options' => '&w=80'
                    ]}
                {/if}
                <a class="subcat-rows-images__item" href="{$item['uri']}">
                    <img src="{$thumb}" width="40" height="40"/>
                    <span>{$item['menutitle'] ?: $item['pagetitle']}</span>    
                </a> 
            {/foreach}
        </div>
    </div>
</div>
{/if}