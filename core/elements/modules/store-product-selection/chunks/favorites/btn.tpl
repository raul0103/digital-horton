{if $product_id}
    {* При AJAX подгрузке товаров не видно данного плейсхолдера. Сработает 1 раз на первом товаре, дальше уже будет подтягивать данные из плейсхолдера *}
    {if !$_modx->getPlaceholder("favorite-products")}
        {'@FILE modules/store-product-selection/snippet/setPlaceholder.php' | snippet : ["cookie_key" => "favorite-products"]}
    {/if}

    {if $product_id in list $_modx->getPlaceholder("favorite-products")} 
        {set $active = "active"}
    {/if}

    <button class="btn {if $simple}btn-simple{else}btn-bordered{/if} btn-favorites {$active}" 
            onclick="window.addProductSelection(this,{$product_id},'favorite-products', { warning:'Товар удален из избранного',success:'Товар добавлен в избранное' })">
        <svg width="18" height="22" class="{if $gray}secondary-gray-stroke{else}primary-stroke{/if}">
          <use
            xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#favorites"
          ></use>
        </svg>
    </button>
{else}
    Не передан $product_id
{/if}