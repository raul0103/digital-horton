{set $fields = [
    'name' => 'Имя / Контактное лицо',
    'phone' => 'Телефон',
    'email' => 'Почта',
    'order-type' => 'Тип покупателя',
    'product-buy-click' => 'Купить в один клик',
    'city'=>'Город',
    'street'=>'Улица',
    'address'=>'Адрес',
    'comment'=>'Комментарий',
    'company_name'=>'Название компании',
    'yur-address'=>'Юрилический адрес',
    'innkpp'=>'ИНН/КПП',
    'payment'=>'Оплата',
]}

{set $form_data = []}
{foreach $fields as $field => $field_name}
    {set $value = $_pls[$field]}
    {if $value}
        {set $form_data[$field_name] = $value}
        <p><b>{$field_name}</b>: {$value}</p>
    {/if}
{/foreach}

{set $products = "@FILE modules/cart/backend/snippets/getProducts.php" | snippet}
{if $products}
    <br>
    <br>
    <p><b>Ссылка на EXCEL:</b> {"@FILE snippets/orderEXCEL.php" | snippet : ['products' => $products, 'form_data' => $form_data]}</p>
    <p><b>ТОВАРЫ В КОРЗИНЕ</b></p>
    {foreach $products as $product}
        <p><b>{$product['pagetitle']}</b>: {$product['count']} x {$product['price']} руб.</p>
    {/foreach}
{/if}