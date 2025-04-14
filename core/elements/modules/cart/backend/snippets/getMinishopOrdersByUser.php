<?php

// $order = $modx->getObject('msOrder', 44);
// $output = array(
//     'order' => $order->toArray(),
//     'user' => $order->User->toArray(),
//     'profile' => $order->UserProfile->toArray(),
//     'address' => $order->Address->toArray(),
//     'delivery' => $order->Delivery->toArray(),
//     'payment' => $order->Payment->toArray(),
//     'status' => $order->Status->toArray(),
//     'products' => []
// );
// foreach ($order->Products as $product) {
//     $output['products'][] = $product->toArray();
// }

// print_r($output);


$user_id = $modx->getPlaceholder('modx.user.id');
// Получаем пользователя
$user = $modx->getObject('modUser', $user_id);
if (!$user) {
    return 'Пользователь не найден';
}

// Получаем заказы этого пользователя
$orders = $modx->getCollection('msOrder', [
    'user_id' => $user->get('id')
]);

return $orders;
