{set $products = "@FILE modules/cart/backend/snippets/getProducts.php" | snippet}

{set $total_summ = $_modx->getPlaceholder('product_total')['summ']}
{set $get_price = "@FILE snippets/getPrice.php" | snippet : [
  'price' => $total_summ,
  'user_discount' => $_modx->getPlaceholder('user_discount')
]}
{set $total_summ = $get_price['user_price'] ?: $get_price['price']}

<div class="order-page__sidebar">
  <div class="order-page__sidebar__wrap br-primary-small mb-24">
    <div class="block-title mb-16">Ваш заказ</div>
    <div class="d-grid gap-12 mb-16">
        <div>
        Товары,
        <span>{$_modx->getPlaceholder('product_total')['count']}</span>
        шт.
        </div>
        <div class="d-flex justify-between">
        <span>Стоимость товаров</span>
        <b><span>{$total_summ}</span> руб.</b>
        </div>

        <div>Без учёта стоимости доставки</div>
    </div>

    <div class="d-grid gap-8">
        <div class="font-candara fw-700">Товары в заказе</div>

        <div class="d-grid gap-12" data-opened-element="order-products">
            {foreach $products as $index => $product}
                {include "file:modules/product-cards/chunks/v4/wrapper.tpl" index=$index product=$product}
            {/foreach}
        </div>
        <button class="btn btn-show-more primary-light-color" type="button" data-opened-btn="order-products" data-active-text="Скрыть">
            Показать все
        </button>
    </div>
  </div>

  <button class="btn btn-primary w-100 mb-16">Оформить заказ</button>

  <label class="custom-checkbox">
    <input type="checkbox" checked required />
    <span class="checkmark border"></span>
    Нажимая кнопку «Отправить заявку», вы даёте своё согласие на
    обработку персональных данных
  </label>
</div>
