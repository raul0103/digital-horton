{set $orders = "@FILE modules/cart/backend/snippets/getMinishopOrdersByUser.php" | snippet}

{if $orders}
<div class="profile-orders">
    {foreach $orders as $order}

    {set $get_cost_price = "@FILE snippets/getPrice.php" | snippet : [
      'price' => $order->cost,
      'user_discount' => $order->ProductsArray[0].options.user_discount
    ]}
    {set $cost_price = $get_cost_price['user_price'] ?: $get_cost_price['price']}

    <div class="profile-orders__item">
        <div class="profile-orders__item-header">
            <div class="fs-28-19 font-candara">Заказ №{$order->num} от {$order->createdon | date : 'd.m.Y'}</div>

            {include "file:chunks/order-status.tpl" status_id=$order->status}

            <div class="d-flex gap-8 ml-auto">
                {if $order->status == 1000}
                    <span class="success-color fs-21-15">Оплачен</span>
                {/if}

                <div class="d-flex gap-8">
                    <span class="fw-700 font-candara fs-25-18">{$cost_price} руб.</span>
                    {if $get_cost_price['user_price']}
                        <span class="old-price fs-15">{$get_cost_price['price']} руб.</span>
                    {/if}
                </div>
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
                <button class="btn btn-bordered big-btn d-flex gap-8" onclick="window.order_id={$order->id};modals.events.open('modal-order-add-review')">
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