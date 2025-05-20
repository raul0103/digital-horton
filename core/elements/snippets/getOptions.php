<?php

$options = [
    "web" => [
        ["key" => "unit", "title" => "Единица измерения"],
        ["key" => "massa-kg", "title" => "Масса, кг"],
        // ["key" => "material", "title" => "Материал"],
        ["key" => "strana-izgotovitel", "title" => "Страна изготовитель"],
        ["key" => "marka-stali", "title" => "Марка стали"],
        ["key" => "tip-zatvora", "title" => "Тип затвора"],
        ["key" => "rabochaya-temperatura-s", "title" => "Рабочая температура, °С"],
        ["key" => "diametr-mm", "title" => "Диаметр, мм"],
        ["key" => "davlenie-bar", "title" => "Давление, бар"],
    ],
    "kip" => [
        ["key" => "unit", "title" => "Единица измерения"],
        ["key" => "massa-kg", "title" => "Масса, кг"],
        ["key" => "klass-tochnosti", "title" => "Класс точности"],
        ["key" => "stepen-pylevlagozashchity", "title" => "Степень пылевлагозащиты"],
        ["key" => "srok-sluzhby", "title" => "Срок службы"],
    ],
    "pozharka" => [
        ["key" => "unit", "title" => "Единица измерения"],
        ["key" => "sfera-primeneniya", "title" => "Сфера применения"],
        ["key" => "perekhod-na-diametr-mm", "title" => "Переход на диаметр, мм"],
        ["key" => "vnutrennij-diametr-mm", "title" => "Внутренний диаметр, мм"],
        ["key" => "cvet-snaruzhi", "title" => "Цвет снаружи"],
        ["key" => "strana-izgotovitel", "title" => "Страна изготовитель"],
        ["key" => "struktura ", "title" => "Структура"],
    ],
    "neft" => [
        ["key" => "unit", "title" => "Единица измерения"],
        ["key" => "diametr-mm", "title" => " Диаметр, мм"],
        ["key" => "vysota-mm", "title" => "Высота, мм"],
        ["key" => "dlina-mm", "title" => "Длина, мм"],
        ["key" => "massa-kg", "title" => "Масса, кг"],
    ],
    "zhbi" => [
        ["key" => "unit", "title" => "Единица измерения"],
        ["key" => "marka-betona", "title" => "Марка бетона"],
        ["key" => "vysota-mm", "title" => "Высота, мм"],
        ["key" => "massa-t", "title" => "Масса, т"],
        ["key" => "gost", "title" => "Гост"],
        ["key" => "obem-betona-m3", "title" => "Объем бетона, м3"],
    ],
    "svet" => [
        ["key" => "unit", "title" => "Единица измерения"],
        ["key" => "diametr-mm", "title" => "Диаметр, мм"],
        ["key" => "massa-kg", "title" => "Масса, кг"],
        ["key" => "tip-stvola-opory", "title" => "Тип ствола опоры"],
    ],
];

return $options[$modx->context->key];
