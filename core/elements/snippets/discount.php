<?php

if (!function_exists('parsePrice')) {
    function parsePrice($value)
    {
        // Убираем пробелы, нечисловые символы, оставляем точку
        $value = str_replace([' ', ','], ['', '.'], $value);
        return is_numeric($value) ? (float)$value : 0;
    }
}
$old_price = parsePrice($old_price);
$price = parsePrice($price);

if ($old_price <= 0 || $price < 0 || $old_price < $price) {
    return 0;
}

$result = ($old_price - $price) / $old_price * 100;
return round($result);
