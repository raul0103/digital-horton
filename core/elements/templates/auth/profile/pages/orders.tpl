{set $orders = "@FILE modules/cart/backend/snippets/getMinishopOrdersByUser.php" | snippet}

{if $orders}
    {foreach $orders as $order}
        <div class="mb-24 text-content">
            <ul>
                <li>{$order->id}</li>
                <li>{$order->cost} руб.</li>
                <li>{$order->status}</li>
                <li>{$order->createdon}</li>
            </ul>
        </div>
    {/foreach}
{/if}