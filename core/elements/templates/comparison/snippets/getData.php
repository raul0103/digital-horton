<?php

if (!$product_ids || !$options) return;

$options_sql = [];
foreach ($options as $option) {
    $options_sql[] = "MAX(CASE WHEN po.key = '$option' THEN po.value END) AS `$option`";
}
$options_sql = implode(',', $options_sql);

$table_prefix = $modx->getOption('table_prefix');
$sql = "SELECT 
    p.id AS id,
    p.uri AS uri,
    p.parent AS parent_id,
    parent.pagetitle AS parent_title,
    p.pagetitle AS pagetitle,
    mp.price as price,
    mp.image as `image`,
    mp.thumb as thumb,

    $options_sql

FROM 
    {$table_prefix}ms2_products AS mp
JOIN 
    {$table_prefix}site_content AS p ON mp.id = p.id
LEFT JOIN 
    {$table_prefix}ms2_product_options AS po ON po.product_id = p.id
LEFT JOIN 
    {$table_prefix}site_content AS parent ON p.parent = parent.id
WHERE 
    p.id IN (" . implode(',', $product_ids) . ")
    AND p.published = 1 
    AND p.deleted = 0
GROUP BY 
    p.id, p.parent, p.pagetitle, parent.pagetitle
ORDER BY 
    p.parent, p.id;";

$result = $modx->query($sql);
$rows = $result->fetchAll(PDO::FETCH_ASSOC);

$output = [];
foreach ($rows as $row) {
    if (!$output[$row['parent_id']]) $output[$row['parent_id']] = [];
    $output[$row['parent_id']][] = $row;
}
return $output;

// exit(json_encode($output, JSON_UNESCAPED_UNICODE));
