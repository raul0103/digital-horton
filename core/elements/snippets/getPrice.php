<?php

/**
 * Отдает цену в зависимости от скидки
 * $price - Цена
 * $placeholder - Ключ плейхолдера куда будет закэширована скидка на время работы страницы
 * $get_user_discount - Если true тогда будет поиск текущей скидки пользователя
 * $user_discount = Если передан то будет расчет по данной скидке, и не будет поиска текущей скидки у пользователя
 */

// >>> Цена в число
$value = str_replace([' ', "\xC2\xA0", "\t"], '', $price); // Убираем пробелы, неразрывные пробелы и табы
$value = str_replace(',', '.', $value); // Заменяем запятую на точку (если есть)
$price = (float) $value;
// <<<

$output = [
    'price' => number_format($price, $decimals, '.', ' '),
];

$user_id = $modx->user->id;
if (!$user_id) return $output;

try {
    // Получаем текущую скидку авторизованного пользователя если get_user_discount = true
    if ($get_user_discount) {
        if (!$placeholder) $placeholder = "user_discount";

        // При вызове в первый раз сниппет сохранит user_discount в плейсхолдер, и в цикле товаров не будет каждый раз его искать
        if (!$user_discount = $modx->getPlaceholder($placeholder)) {
            $modx->addPackage('usershop', $modx->getOption('core_path') . 'components/usershop/model/');
            $row = $modx->getObject('UserDiscount', [
                'user_id' => $user_id
            ]);
            if (!$row) return $output;

            $user_discount = $row->discount;
            $modx->setPlaceholder($placeholder, $user_discount);
        }
    }

    if (!$user_discount)   return $output;

    $output["user_discount"] = $user_discount;
    $output["user_price"] = $price - ($price / 100 * $user_discount);
    $output["user_price"] = number_format($output["user_price"], $decimals, '.', ' ');

    return $output;
} catch (Exception $e) {
    return $output;
}
