{set $items = [
    ['resource_id' => 'favorites_id', 'selection-key' => 'favorite-products', 'svg' => 'favorites', 'title' => 'Избранное', 'counters' => count($_modx->getPlaceholder('favorite-products'))],
    ['resource_id' => 'comparison_id', 'selection-key' => 'comparison-products', 'svg' => 'comparison', 'title' => 'Сравнение', 'counters' => count($_modx->getPlaceholder('comparison-products'))],
    ['resource_id' => 'cart_id', 'data-attrs' => 'data-cart-total-count' 'svg' => 'cart', 'title' => 'Корзина', 'counters' => $_modx->getPlaceholder('product_total')['count']],
    ['resource_id' => 'login_id', 'svg' => 'login', 'title' => 'Войти']    
]}

<div class="mobile-fixed-navigation" data-scroll-element>
    {foreach $items as $item}
        <a href="{$_modx->makeURL($item['resource_id'] | option)}" class="p-relative btn btn-primary d-grid gap-4 fs-13-10 fw-700 place-center">
            <span class="counters-mark {if $item['counters'] == 0}hidden{/if}" {if $item['data-attrs']}{$item['data-attrs']}{else}data-selection-key="{$item['selection-key']}"{/if} data-total-hide-empty="true">
                {$item['counters']}
            </span>
            <svg width="16" height="16" stroke="white" fill="none"> <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#{$item['svg']}" ></use> </svg>
            {$item['title']}
        </a>
    {/foreach}
</div>