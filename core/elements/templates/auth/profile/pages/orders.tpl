{set $orders = "@FILE modules/cart/backend/snippets/getMinishopOrdersByUser.php" | snippet}

{if $orders}
<div class="profile-orders">
    {foreach $orders as $order}
    <div class="profile-orders__item">
        <div class="profile-orders__item-header">
            <div class="fs-28-19 font-candara">Заказ №{$order->num} от {$order->createdon | date : 'd.m.Y'}</div>

            {include "file:chunks/order-status.tpl" status_id=$order->status}

            <div class="d-flex gap-8 ml-auto">
                {if $order->status == 1000}
                    <span class="success-color fs-21-15">Оплачен</span>
                {/if}
                <span class="fw-700 font-candara fs-25-18">{$order->cost|number_format:0:',':' '} руб.</span>
            </div>
        </div>
        
        <div class="profile-orders__item-opened" data-opened-btn="order-{$order->id}">{count($order->Products)|declension:'товар|товара|товаров':true}</div>
        <div class="profile-orders__item-products" data-opened-element="order-{$order->id}">
            {foreach $order->ProductsArray as $product}
                {include "file:modules/product-cards/chunks/v4/wrapper.tpl" product=$product}
            {/foreach}
        </div>

        <div class="profile-orders__item-controls">
            <button class="btn btn-primary big-btn">Повторить заказ</button>
            
            {if $order->status == 1000}
                <button class="btn btn-bordered big-btn d-flex gap-8">
                    <svg width="20" height="22" class="primary-stroke">
                        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#download"></use>
                    </svg>
                    Оставить отзыв
                </button>
            {/if}
        </div>
    </div>
    {/foreach}
</div>
{else}
    {include "file:chunks/empty.tpl" page="orders"}
{/if}