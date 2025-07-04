<?php

if (empty($data)) return [];

if (!function_exists("generateModal")) {
    function generateModal(&$menu_modals, $data)
    {
        $menu_modals .= "<div class='mobile-menu__modal' data-mobile-modal='mobile-modal-{$data['id']}'> <div class='mobile-menu__back' data-mobile-modal-back><svg width='16' height='16' class='icon' stroke='#fff'> <use xlink:href='/assets/template/icons/sprite.svg?v=3.11#arrow-left'></use> </svg> Назад</div> <div class='mobile-menu__items'>";

        foreach ($data['children'] as $children) {
            $menutitle = $children['menutitle'] ?: $children['pagetitle'];
            $open_btn = "";
            if ($children['children']) {
                $open_btn = "<span data-mobile-modal-open='mobile-modal-{$children['id']}'></span>";

                $menu_modals .= "<div class='mobile-menu__item'> <a href='{$children['uri']}'>$menutitle</a> $open_btn </div>";
            } else {
                $menu_modals .= "<div class='mobile-menu__item'> <a href='{$children['uri']}'>$menutitle</a> </div>";
            }
        }
        $menu_modals .= "</div></div>";

        // Формируем бесконечную вложенность
        foreach ($data['children'] as $children) {
            if ($children['children']) {
                generateModal($menu_modals,  $children);
            }
        }
    }
}

$menu_items = "";
$menu_modals = "";
foreach ($data as $catalog_item) {
    $menutitle = $catalog_item['menutitle'] ?: $catalog_item['pagetitle'];

    // $bestseller = $catalog_item['bestseller'] ? '<div class="rating-stars-static"><span class="full"></span></div>' : '';
    $open_btn = "";
    if ($catalog_item['children']) {
        $open_btn = "<span data-mobile-modal-open='mobile-modal-{$catalog_item['id']}'></span>";

        generateModal($menu_modals, $catalog_item);
    }

    $menu_items .= "<div class='mobile-menu__item'> <a href='{$catalog_item['uri']}'><img src='{$catalog_item['category_icon']}'/> $menutitle</a> $open_btn </div>";
}

return [
    "menu-items" => $menu_items,
    "menu-modals" => $menu_modals
];
