<?php

/**
 * @param $product_ids - [array]
 */

$product_ids_str = implode(',', $product_ids);

$res = $modx->query("SELECT
    `key`
FROM
    modx_ms2_product_options
WHERE
    product_id IN ($product_ids_str)");
$result = $res->fetchAll(PDO::FETCH_COLUMN, 0);

return array_unique(array_values($result));
