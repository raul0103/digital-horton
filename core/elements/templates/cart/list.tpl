{set $total_summ = $_modx->getPlaceholder('product_total')['summ']}
{set $get_price = "@FILE snippets/getPrice.php" | snippet : [
  'price' => $total_summ,
  'user_discount' => $_modx->getPlaceholder('user_discount')
]}
{set $total_summ = $get_price['user_price'] ?: $get_price['price']}

{set $products = "@FILE modules/cart/backend/snippets/getProducts.php" | snippet : [
    'options' => [
        'option-1' => 'razmer-mm',
        'option-2' => 'obem-m3',
    ]
]} 
        
{if !$products}
    {include "file:chunks/empty.tpl" page="cart"}
{else}
<div class="cart-page mb-32-24">
    <div class="cart-page__wrap">
        <div class="cart-page__list">
            <div class="cart-page__list-top br-primary-small">
                <label class="custom-checkbox fw-500">
                    <input type="checkbox" onchange="changeCheckboxAll('product',this)"/>
                    <span class="checkmark"></span>
                    Выбрать всё
                </label>

                <button onclick="deleteChangeProduct('product')" class="fw-500 d-flex gap-8 btn btn-simple primary-light-color font-montserrat">
                    <svg width="16" height="16" stroke="#5779BC" >
                        <use
                          xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#bucket-v2"
                        ></use>
                    </svg>
                    Очистить
                </button>
            </div>
            <div class="cart-page__list-row">
                {foreach $products as $product}
                    {include "file:modules/product-cards/chunks/v3/desktop.tpl" product=$product}
                    {include "file:modules/product-cards/chunks/v3/mobile.tpl" product=$product}
                {/foreach}
            </div>
        </div>

        <div class="cart-page__sidebar br-primary-small">
            <div class="mb-14">Товары, <span data-cart-total-count>{$_modx->getPlaceholder('product_total')['count']}</span> шт.</div>
            <div class="cart-page__sidebar-title block-title">
                Итого<span><span data-cart-total-summ>{$total_summ}</span>  руб.</span>
            </div>
            <div class="secondary-gray-color fs-14 mb-16">Без учёта стоимости доставки </div>
            <a class="btn btn-primary w-100 d-block text-center" href="{$_modx->makeURL('order_id' | option)}">Перейти к оформлению</a>
        </div>
    </div>
</div>
{/if}