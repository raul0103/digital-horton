{if $product_id}
    {* При AJAX подгрузке товаров не видно данного плейсхолдера. Сработает 1 раз на первом товаре, дальше уже будет подтягивать данные из плейсхолдера *}
    {if !$_modx->getPlaceholder("comparison-products")}
        {'@FILE modules/store-product-selection/snippet/setPlaceholder.php' | snippet : ["cookie_key" => "comparison-products"]}
    {/if}

    {if $product_id in list $_modx->getPlaceholder("comparison-products")} 
        {set $active = "active"}
    {/if}

    <button class="btn btn-bordered btn-compare {$active}"
            onclick="window.addProductSelection(this,{$product_id},'comparison-products', { warning:'Товар удален из сравнения',success:'Товар добавлен в сравнение' })">
        <svg width="22" height="22">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#compare"
          ></use>
        </svg>
    </button>

{else}
    Не передан $product_id
{/if}