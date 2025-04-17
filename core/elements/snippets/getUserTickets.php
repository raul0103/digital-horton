<?php

/**
 * Отдает список обращений пользователя
 */

if (!$modx->user->hasSessionContext($modx->context->key)) return;

$user_id = $modx->user->id;

$modx->addPackage('usershop', $modx->getOption('core_path') . 'components/usershop/model/');

return $modx->getCollection("UserTickets", [
    "user_id" => $user_id
]);
