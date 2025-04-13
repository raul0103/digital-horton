{set $items = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.categories'),
  'where' => '{"parent":'~$_modx->resource.id~'}'
]}

{if $items}
<div class="subcat-slider section-margin">
    <div class="container">
        <div class="subcat-slider__wrap swiper" data-swiper="subcat-slider">
            <div class="swiper-wrapper">
                {foreach $items as $item}
                    <a class="subcat-slider__item" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a> 
                {/foreach}
            </div>
            {include "file:chunks/buttons/swiper-left.tpl"}
            {include "file:chunks/buttons/swiper-right.tpl"}
        </div>
    </div>
</div>
{/if}