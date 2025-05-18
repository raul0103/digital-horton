<?php

if ($_SERVER['REQUEST_METHOD'] !== 'POST') return;

$input = file_get_contents('php://input');
$data = json_decode($input, true);

if (empty($data['ajax_connect']) || empty($data['action'])) return;

$pdoTools = $modx->getService("pdoTools");

switch ($data['action']) {
    case 'get-news-resource':
        if (!$data['resource_id']) exit("Не передан resource_id");
        $resource = $modx->getObject('modResource', $data['resource_id']);
        if (!$resource) exit("Ресурс не найден");

        $outer = $pdoTools->getChunk("@FILE templates/news/full-item.tpl", [
            "resource" => $resource
        ]);

        exit($outer);
    case 'get-product-data':
        if (!$data['product_id']) exit("Не передан product_id");
        $product = $modx->getObject('msProduct', $data['product_id']);
        if (!$product) exit("Товар не найден");

        $outer = $pdoTools->getChunk("@FILE modules/product-cards/chunks/v4/wrapper.tpl", [
            "product" => $product->toArray()
        ]);

        exit($outer);

    case 'add-order-review':
        if (!$data['content']) exit(json_encode([
            "success" => false,
            "message" => "Не передан content"
        ]));
        if (strlen($data['content']) < 4) exit(json_encode([
            "success" => false,
            "message" => "Введите больше символов"
        ]));

        $modx->addPackage('usershop', $modx->getOption('core_path') . 'components/usershop/model/');

        $new_review = $modx->newObject('OrderReviews', [
            "user_id" => $modx->user->id,
            "order_id" => $data['order_id'],
            "content" => $data['content'],
        ]);

        if ($new_review->save()) {
            exit(json_encode([
                "success" => true,
                "message" => "Отзыв успешно отправлен"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при создании отзыва"
            ]));
        }

    case 'add-ticket':
        if (strlen($data['subject']) < 4 || strlen($data['content']) < 4) exit(json_encode([
            "success" => false,
            "message" => "Введите больше символов"
        ]));

        $modx->addPackage('usershop', $modx->getOption('core_path') . 'components/usershop/model/');

        $new_review = $modx->newObject('UserTickets', [
            "user_id" => $modx->user->id,
            "subject" => $data['subject'],
            "content" => $data['content'],
        ]);

        if ($new_review->save()) {
            exit(json_encode([
                "success" => true,
                "message" => "Обращение успешно отправлено"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при создании обращения"
            ]));
        }

    case 'delete-account':
        $user = $modx->getObject('modUser', $modx->user->id);
        if (!$user)     exit(json_encode([
            "success" => false,
            "message" => "Аккаунт не найден"
        ]));
        if ($user->remove()) {
            exit(json_encode([
                "success" => true,
                "message" => "Аккаунт успешно удален"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при удалении аккаунта"
            ]));
        }

    case 'change-password':
        $user = $modx->getObject('modUser', $modx->user->id);
        if (!$user) exit(json_encode([
            "success" => false,
            "message" => "Аккаунт не найден"
        ]));
        if (empty($data['old_password']))  exit(json_encode([
            "success" => false,
            "message" => "Введите старый пароль"
        ]));
        if ($data['new_password'] !==  $data['new_password_confirm'])  exit(json_encode([
            "success" => false,
            "message" => "Пароли не совпадают"
        ]));
        if (strlen($data['new_password']) < 8)  exit(json_encode([
            "success" => false,
            "message" => "Пароль должен содержать больше 8 символов"
        ]));

        if ($user->changePassword($data['new_password'], $data['old_password'])) {
            exit(json_encode([
                "success" => true,
                "message" => "Пароль успешно изменен"
            ]));
        } else {
            exit(json_encode([
                "success" => false,
                "message" => "Ошибка при смене пароля"
            ]));
        }

    case "copy-order":
        if (!$miniShop2 = $modx->getService('miniShop2')) exit(json_encode([
            "success" => false,
            "message" => "Не удалось подключить minishop2"
        ]));
        $miniShop2->initialize($modx->context->key);

        $user = $modx->getObject('modUser', $modx->user->id);
        if (!$user) exit(json_encode([
            "success" => false,
            "message" => "Пользователь не найден"
        ]));

        $user_discount = $pdoTools->runSnippet("@FILE snippets/getUserDiscount.php");

        // >>> Получаем заказы этого пользователя для проверки
        $q = $modx->newQuery('msOrder');
        $q->where([
            'user_id' => $user->get('id')
        ]);
        $q->sortby('createdon', 'DESC');
        $orders = $modx->getCollection('msOrder', $q);
        $user_order_ids = [];
        foreach ($orders as $order) {
            $user_order_ids[] = $order->id;
        }

        if (!in_array($data['order_id'], $user_order_ids)) exit(json_encode([
            "success" => false,
            "message" => "Заказ не пренадлежит данному пользователю"
        ]));
        // <<<

        // >>> Товары в новый заказ
        $order = $modx->getObject('msOrder', $data['order_id']);
        if (!$order) exit(json_encode([
            "success" => false,
            "message" => "Заказ не найден"
        ]));
        foreach ($order->Products as $product) {
            $miniShop2->cart->add($product->product_id, $product->count, [
                'user_discount' => $user_discount
            ]);
        }
        // <<<


        // Добавляем данные пользователя в заказ
        $order_data = $order->toArray();
        $order_address_data = $order->Address->toArray();

        $miniShop2->order->add('email', $order_address_data['email']);
        $miniShop2->order->add('receiver', $ororder_address_datader_data['name']);
        $miniShop2->order->add('phone', $order_address_data['phone']);
        $miniShop2->order->add('street', $order_address_data['street']);
        $miniShop2->order->add('city', $order_address_data['city']);
        $miniShop2->order->add('comment', $order_address_data['comment']);
        $miniShop2->order->add('delivery', $order_data['delivery']);
        $miniShop2->order->add('payment', $order_data['payment']);


        $profile = $user->getOne('Profile');
        if ($profile) {
            $miniShop2->order->add('email', $profile->email);
            $miniShop2->order->add('receiver', $profile->fullname);
            $miniShop2->order->add('phone', $profile->phone);
        }

        // Отправка заказа
        $response = $miniShop2->order->submit();
        if (!$response->success) exit(json_encode([
            "success" => true,
            "message" => "Ошибка при добавлении товаров в корзину"
        ]));

        exit(json_encode([
            "success" => true,
            "message" => "Заказ скопирован"
        ]));;


        // case 'get-catalog':
        //     $cache_options = [
        //         xPDO::OPT_CACHE_KEY => 'default/map-resources/' . $modx->context->key . '/',
        //     ];

        //     if ($cache_data = $modx->cacheManager->get($data['cache_name'], $cache_options)) {
        //         if ($data['device'] == 'desktop') {
        //             $output = $pdoTools->runSnippet("@FILE modules/catalog/snippets/html-desktop.php", [
        //                 'data' => $cache_data
        //             ]);
        //         } elseif ($data['device'] == 'mobile') {
        //             $output = $pdoTools->runSnippet("@FILE modules/mobile-menu/snippets/html-mobile.php", [
        //                 'data' => $cache_data
        //             ]);
        //             $output = json_encode($output);
        //         }

        //         exit($output);
        //     }
}
