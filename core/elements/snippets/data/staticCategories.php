<?php

$categories = [
    [
        'menutitle' => 'Полимерные трубы',
        'category_icon' => 'assets/images/categories/common/icons/polimer.png',
        'uri' => 'https://horton/',
        'hide' => true
    ],
    [
        'menutitle' => 'Полимерные колодцы',
        'category_icon' => 'assets/images/categories/common/icons/kolodc.png',
        'hide' => true
    ],
    [
        'menutitle' => 'Кабель и провод',
        'category_icon' => 'assets/images/categories/common/icons/kabel.png',
        'uri' => 'https://horton/?category_id=584',
        'hide' => true
    ],
    [
        'menutitle' => 'Железобетонные изделия',
        'category_icon' => 'assets/images/categories/common/icons/zhbi.png',
        'uri' => 'https://zhbi.horton/'
    ],
    [
        'menutitle' => 'Пожарное оборудование',
        'category_icon' => 'assets/images/categories/common/icons/pozhar.png',
        'uri' => 'https://pozharka.horton/'
    ],
    [
        'menutitle' => 'Оборудование для нефтебаз',
        'category_icon' => 'assets/images/categories/common/icons/neft.png',
        'uri' => 'https://neft.horton/'
    ],
    [
        'menutitle' => 'Люки и дождеприёмники',
        'category_icon' => 'assets/images/categories/common/icons/luk.png',
        'uri' => 'https://horton/?category_id=573',
        'hide' => true
    ],
    [
        'menutitle' => 'Детали трубопроводов',
        'category_icon' => 'assets/images/categories/common/icons/trubop.png',
        'uri' => 'https://horton/?category_id=541',
        'hide' => true
    ],
    [
        'menutitle' => 'Запорная арматура',
        'category_icon' => 'assets/images/categories/common/icons/armatur.png',
        'uri' => 'https://horton/?category_id=507',
        'hide' => true
    ],
    [
        'menutitle' => 'Освещение',
        'category_icon' => 'assets/images/categories/common/icons/svet.png',
        'uri' => 'https://svet.horton/'
    ],
    [
        'menutitle' => 'КИП',
        'category_icon' => 'assets/images/categories/common/icons/kip.png',
        'uri' => 'https://kip.horton/'
    ],
];

// Версия 1: полная (все элементы)
if (!function_exists('getAllCategories')) {
    function getAllCategories(array $categories): array
    {
        return $categories;
    }
}

// Версия 2: только не скрытые (где нет hide или hide !== true)
if (!function_exists('getVisibleCategories')) {
    function getVisibleCategories(array $categories): array
    {
        return array_filter($categories, function ($category) {
            return empty($category['hide']);
        });
    }
}


return $show_all ? getAllCategories($categories) : getVisibleCategories($categories);
