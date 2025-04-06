<?php

/**
 * Скрипт отдает одномерный массив ресурсов найденных по where
 * 
 * @param $where - JSON
 * @param $data - массив данных
 */

if (empty($data) || empty($where)) return;

// if (gettype($ids) == 'string')
//     $ids = explode(',', $ids);

$where = json_decode($where, true);

if (!function_exists('filterResources')) {
    function filterResources($data, $where)
    {
        $result = [];

        $handler = function ($items) use (&$handler, &$result, $where) {
            foreach ($items as $item) {
                $matched = true;

                foreach ($where as $key => $value) {
                    $field = $key;
                    $operator = '=';

                    // Разделяем ключ на поле и оператор
                    if (strpos($key, ':') !== false) {
                        [$field, $operator] = explode(':', $key, 2);
                    }

                    // Выполняем проверку в зависимости от оператора
                    switch ($operator) {
                        case 'in':
                            if (!in_array($item[$field] ?? null, $value)) {
                                $matched = false;
                            }
                            break;

                        case '=':
                        default:
                            if (($item[$field] ?? null) != $value) {
                                $matched = false;
                            }
                            break;
                    }

                    // Если уже не совпало — выходим
                    if (!$matched) break;
                }

                // Обрабатываем потомков, если есть
                if (isset($item['children']) && is_array($item['children'])) {
                    $handler($item['children']);
                }

                if ($matched) {
                    unset($item['children']);
                    $result[] = $item;
                }
            }
        };

        $handler($data);

        return $result;
    }
}


$cache_name = md5(serialize($scriptProperties));
$cache_options = [
    xPDO::OPT_CACHE_KEY => 'default/map-resources/mapGetResourcesByWhere/' . $modx->resource->context_key . '/',
];

if (!$output = $modx->cacheManager->get($cache_name, $cache_options)) {
    $output = filterResources($data, $where);
    $modx->cacheManager->set($cache_name, $output, 0, $cache_options);
}

return $output;
