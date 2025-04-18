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

        $outer = $pdoTools->getChunk("@FILE modules/product-cards/chunks/mini-product/item.tpl", [
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
