<?php

$options = [
    ["title" => "Диаметр, мм", "key" => "diametr_mm"],
    ["title" => "Тип", "key" => "product_type"],
    ["title" => "Толщина, мм", "key" => "tolshina_mm"],
];

// $ids_plitdorozh = $modx->getOption('ids_plitdorozh');
// if (!empty($ids_plitdorozh)) {
//     $ids_plitdorozh = explode(',', $ids_plitdorozh);
// } else {
//     $ids_plitdorozh = [];
// }

// if (!in_array($modx->resource->id, $ids_plitdorozh)) {
//     array_unshift($options, ["title" => "ГОСТ", "key" => "gost"]);
// }

return $options;
