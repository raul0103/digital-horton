<?php

if (!$discount = $modx->getPlaceholder('user_discount')) {
    $user_id = $modx->user->id;
    if (!$user_id) return false;

    $modx->addPackage('usershop', $modx->getOption('core_path') . 'components/usershop/model/');

    $row = $modx->getObject('UserDiscount', [
        'user_id' => $user_id
    ]);
    if (!$row) return false;

    $modx->setPlaceholder('user_discount', $row->discount);

    return $row->discount;
}

return $discount;
