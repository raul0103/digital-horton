<?php

if (empty($data) || empty($where)) return;

$where = json_decode($where, true);

// Рекурсивная сортировка по menuindex
if (!function_exists('sortByMenuIndexRecursive')) {
    function sortByMenuIndexRecursive(array &$items): void
    {
        usort($items, function ($a, $b) {
            return ($a['menuindex'] ?? 0) <=> ($b['menuindex'] ?? 0);
        });

        foreach ($items as &$item) {
            if (isset($item['children']) && is_array($item['children'])) {
                sortByMenuIndexRecursive($item['children']);
            }
        }
    }
}

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

                    if (strpos($key, ':') !== false) {
                        [$field, $operator] = explode(':', $key, 2);
                    }

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

                    if (!$matched) break;
                }

                // Обрабатываем детей
                if (isset($item['children']) && is_array($item['children'])) {
                    $handler($item['children']);
                }

                if ($matched) {
                    $result[] = $item;
                }
            }
        };

        // Сначала сортируем всё дерево
        sortByMenuIndexRecursive($data);

        // Потом фильтруем
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
