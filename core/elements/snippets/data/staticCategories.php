<?php

$domains = [
    "web" => "https://mz-horton.ru/",
    "zhbi" => "https://zhbi-moskva.mz-horton.ru/",
    "kip" => "https://kip-moskva.mz-horton.ru/",
    "pozhsnab" => "https://pozhsnab-moskva.mz-horton.ru/",
    "neft" => "https://neft-moskva.mz-horton.ru/",
    "svet" => "https://svet-moskva.mz-horton.ru/",
];

$url = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$host = parse_url($url, PHP_URL_HOST);
$host_array = explode('.', $host);
if (count($host_array) > 2) {
    $subdomain = $host_array[0];
    $subdomain = str_replace([
        'zhbi-',
        'kip-',
        'pozhsnab-',
        'neft-',
        'svet-'
    ], ['', '', '', '', '', '', '',], $subdomain);
    foreach ($domains as $key => $url) {
        if ($key == 'web') {
            $domains[$key] = "https://$subdomain.mz-horton.ru/";
        } else {
            $domains[$key] = "https://$key-$subdomain.mz-horton.ru/";
        }
    }
}

$categories = [
    [
        'id' => 439,
        'menutitle' => 'Полимерные трубы',
        'category_icon' => 'assets/images/categories/common/icons/polimer.png',
        'uri' => $domains['web'],
        'children' => [
            ['id' => 440, 'menutitle' => 'Водоснабжение', 'uri' => $domains['web'] . 'vodosnabzhenie/'],
            ['id' => 464, 'menutitle' => 'Газораспределение', 'uri' => $domains['web'] . 'gazoraspredelenie/'],
            ['id' => 469, 'menutitle' => 'Водоотведение', 'uri' => $domains['web'] . 'vodootvedenie/'],
            ['id' => 481, 'menutitle' => 'Кабелезащита', 'uri' => $domains['web'] . 'kabelezashchita/'],
            ['id' => 487, 'menutitle' => 'Фитинги', 'uri' => $domains['web'] . 'fitingi/'],
        ]
    ],
    [
        'id' => 18062,
        'menutitle' => 'Полимерные колодцы',
        'category_icon' => 'assets/images/categories/common/icons/kolodc.png',
        'uri' => $domains['web'] . 'polimernyie-kolodczyi/',
        'children' => [
            ['id' => 472, 'menutitle' => 'Перепадные пластиковые колодцы', 'uri' => $domains['web'] . 'perepadnye-plastikovye-kolodcy/'],
            ['id' => 473, 'menutitle' => 'Канализационные пластиковые колодцы', 'uri' => $domains['web'] . 'kanalizacionnye-plastikovye-kolodcy/'],
            ['id' => 474, 'menutitle' => 'Дождеприемные (ливневые) пластиковые колодцы', 'uri' => $domains['web'] . 'dozhdepriemnye-livnevye-plastikovye-kolodcy/'],
            ['id' => 463, 'menutitle' => 'Колодцы для напорных систем', 'uri' => $domains['web'] . 'kolodcy-dlya-napornyh-sistem/'],
            ['id' => 486, 'menutitle' => 'Пластиковые кабельные колодцы', 'uri' => $domains['web'] . 'plastikovye-kabelnye-kolodcy/'],
        ]
    ],
    [
        'id' => 754,
        'menutitle' => 'Железобетонные изделия',
        'category_icon' => 'assets/images/categories/common/icons/zhbi.png',
        'uri' => $domains['zhbi'],
        'children' => [
            ['id' => 417, 'menutitle' => 'Железобетонные колодцы', 'uri' => $domains['zhbi'] . 'zhelezobetonnyie-kolodczyi/'],
            ['id' => 419, 'menutitle' => 'Колодцы сетей связи', 'uri' => $domains['zhbi'] . 'kolodczyi-setej-svyazi/'],
            ['id' => 423, 'menutitle' => 'Железобетонные плиты', 'uri' => $domains['zhbi'] . 'zhelezobetonnyie-plityi/'],
            ['id' => 427, 'menutitle' => 'Железобетонные кольца', 'uri' => $domains['zhbi'] . 'zhelezobetonnyie-kolcza/'],
        ]
    ],
    [
        'id' => 507,
        'menutitle' => 'Запорная арматура',
        'category_icon' => 'assets/images/categories/common/icons/armatur.png',
        'uri' => $domains['web'] . 'zapornaya-armatura/',
        'children' => [
            ['id' => 508, 'menutitle' => 'Запорно-регулирующая арматура', 'uri' => $domains['web'] . 'zaporno-reguliruyushchaya-armatura/'],
            ['id' => 512, 'menutitle' => 'Задвижки чугунные', 'uri' => $domains['web'] . 'zadvizhki-chugunnye/'],
            ['id' => 517, 'menutitle' => 'Задвижки стальные', 'uri' => $domains['web'] . 'zadvizhki-stalnye/'],
            ['id' => 520, 'menutitle' => 'Затворы', 'uri' => $domains['web'] . 'zatvory/'],
            ['id' => 529, 'menutitle' => 'Шаровые краны', 'uri' => $domains['web'] . 'sharovye-krany/'],
        ]
    ],
    [
        'id' => 573,
        'menutitle' => 'Люки и дождеприёмники',
        'category_icon' => 'assets/images/categories/common/icons/luk.png',
        'uri' => $domains['web'] . 'lyuki-i-dozhdepriemniki/',
        'children' => [
            ['id' => 574, 'menutitle' => 'Люки', 'uri' => $domains['web'] . 'lyuki/'],
            ['id' => 577, 'menutitle' => 'Дождеприемники', 'uri' => $domains['web'] . 'dozhdepriemniki/'],
        ]
    ],
    [
        'id' => 541,
        'menutitle' => 'Детали трубопроводов',
        'category_icon' => 'assets/images/categories/common/icons/trubop.png',
        'uri' => $domains['web'] .  'stalnyie-i-chugunnyie-detali-truboprovodov/',
        'children' => [
            ['id' => 542, 'menutitle' => 'Чугунные детали', 'uri' => $domains['web'] . 'chugunnye-detali/'],
            ['id' => 546, 'menutitle' => 'Стальные детали', 'uri' => $domains['web'] . 'stalnye-detali/'],
        ]
    ],
    [
        'id' => 793,
        'menutitle' => 'Освещение',
        'category_icon' => 'assets/images/categories/common/icons/svet.png',
        'uri' => $domains['svet'],
        'children' => [
            ['id' => 430, 'menutitle' => 'Светильники уличные', 'uri' => $domains['svet'] . 'svetilniki-ulichnyie/'],
            ['id' => 435, 'menutitle' => 'Светильники промышленные', 'uri' => $domains['svet'] . 'svetilniki-promyishlennyie/'],
            ['id' => 438, 'menutitle' => 'Опоры освещения', 'uri' => $domains['svet'] . 'oporyi-osveshheniya/'],
        ]
    ],
    [
        'id' => 794,
        'menutitle' => 'КИП',
        'category_icon' => 'assets/images/categories/common/icons/kip.png',
        'uri' => $domains['kip'],
        'children' => [
            ['id' => 367, 'menutitle' => 'Манометры', 'uri' => $domains['kip'] . 'manometryi/'],
            ['id' => 368, 'menutitle' => 'Термометры', 'uri' => $domains['kip'] . 'termometryi/'],
            ['id' => 371, 'menutitle' => 'Датчики', 'uri' => $domains['kip'] . 'datchiki/'],
        ]
    ],
    [
        'id' => 676,
        'menutitle' => 'Пожарное оборудование',
        'category_icon' => 'assets/images/categories/common/icons/pozhar.png',
        'uri' => $domains['pozhsnab'],
        'children' => [
            ['id' => 375, 'menutitle' => 'Стальные подставки', 'uri' => $domains['pozhsnab'] . 'stalnyie-podstavki/'],
            ['id' => 381, 'menutitle' => 'Чугунные подставки', 'uri' => $domains['pozhsnab'] . 'chugunnyie-podstavki/'],
            ['id' => 388, 'menutitle' => 'Гидранты', 'uri' => $domains['pozhsnab'] . 'gidrantyi/'],
            ['id' => 391, 'menutitle' => 'Оросители', 'uri' => $domains['pozhsnab'] . 'orositeli/'],
        ]
    ],
    [
        'id' => 715,
        'menutitle' => 'Оборудование для нефтебаз',
        'category_icon' => 'assets/images/categories/common/icons/neft.png',
        'uri' => $domains['neft'],
        'children' => [
            ['id' => 396, 'menutitle' => 'Клапаны', 'uri' => $domains['neft'] . 'klapanyi/'],
            ['id' => 408, 'menutitle' => 'Хлопушки', 'uri' => $domains['neft'] . 'xlopushki/'],
            ['id' => 412, 'menutitle' => 'Люки', 'uri' => $domains['neft'] . 'lyuki/'],
            ['id' => 416, 'menutitle' => 'Мостики', 'uri' => $domains['neft'] . 'mostiki/'],
        ]
    ],
    [
        'id' => 584,
        'menutitle' => 'Кабель и провод',
        'category_icon' => 'assets/images/categories/common/icons/kabel.png',
        'uri' => $domains['web'] . 'kabel-i-provod/',
        'children' => [
            ['id' => 585, 'menutitle' => 'Кабели связи', 'uri' => $domains['web'] . 'kabeli-svyazi/'],
            ['id' => 586, 'menutitle' => 'Провода установочные', 'uri' => $domains['web'] . 'provoda-ustanovochnye/'],
            ['id' => 587, 'menutitle' => 'Кабели силовые', 'uri' => $domains['web'] . 'kabeli-silovye/'],
        ]
    ],
];

return $categories;

// // Версия 1: полная (все элементы)
// if (!function_exists('getAllCategories')) {
//     function getAllCategories(array $categories): array
//     {
//         return $categories;
//     }
// }

// // Версия 2: только не скрытые (где нет hide или hide !== true)
// if (!function_exists('getVisibleCategories')) {
//     function getVisibleCategories(array $categories): array
//     {
//         return array_filter($categories, function ($category) {
//             return empty($category['hide']);
//         });
//     }
// }


// return $show_all ? getAllCategories($categories) : getVisibleCategories($categories);
