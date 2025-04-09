<div class="product-card--v3" id="product_{$product['id']}">
    <img class="product-card--v3-image" src="{$product['thumb']}" />
    <div class="product-card--v3-content">
        <a class="font-candara fs-17-13 fw-700 text-uppercase" href="{$product['uri']}">{$product['pagetitle']}</a>
        <ul class="product-card--v3-content-info">
            {if $product['option-1']}<li>{$product['option-1']}</li><li>•</li>{/if}
            {if $product['option-2']}<li>{$product['option-2']}</li><li>•</li>{/if}
            <li>{$product.price} {if $product.unit}за {$product.unit}{/if}</li>
        </ul>
        <div class="mt-auto">
            <button class="btn btn-simple">
                <svg width="18" height="22" class="secondary-gray-stroke">
                    <use
                      xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#favorites"
                    ></use>
                </svg>
            </button>
        </div>
    </div>

    <div class="product-card--v3-cart-info">
        {include "file:modules/cart/frontend/chunks/cart-controls-default.tpl" product_count=$product.count product_id=$product.id price=$product.price}
        {include "file:modules/product-cards/chunks/common/product-price.tpl" type_simple=true price=$product.price old_price=$product.old_price}
        <button class="btn btn-simple btn-bucket" onclick="product_{$product['id']}.remove();cart.events.remove({$product['id']});">
            <svg width="22" height="24" class="secondary-gray-stroke">
                <use
                  xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#bucket"
                ></use>
            </svg>
        </button>
    </div>
</div>