<?php

$outer = '<ul class="catalog-header__items">';
foreach ($data as $catalog_item) {

    $menutitle = $catalog_item['menutitle'] ?: $catalog_item['pagetitle'];

    // Идем по категориям
    if ($catalog_item['children'] && $catalog_item['id']) {
        // Идем по подкатегориям
        if (count($catalog_item['children']) > 0) {
            $subcat_html = "<ul class='catalog-header__dropdown' data-opened-element='catalog-subcat-{$catalog_item['id']}'>";
            foreach ($catalog_item['children'] as $subcat) {
                $subcat_menutitle = $subcat['menutitle'] ?: $subcat['pagetitle'];
                $subcat_html .= "<li>
                                     <a href='{$subcat['uri']}'>$subcat_menutitle</a>
                                 </li>";
            }
            $subcat_html .= "</ul>";
        }

        if ($catalog_item['category_icon']) {
            $image = "<img src='{$catalog_item['category_icon']}' />";
        }else{
            $image = "";
        }

        $outer .= "<li class='catalog-header__item'>
                        <div class='catalog-header__item-title'>
                          <a href='{$catalog_item['uri']}'>
                            $image
                            $bestseller $menutitle
                          </a>
                          <button data-opened-btn='catalog-subcat-{$catalog_item['id']}'>
                                <svg width='10' height='10' class='icon'>
                                    <use stroke='white' xlink:href='/assets/template/icons/sprite.svg?v=17#icon-arrow-down' stroke-width='3'></use>
                                </svg>
                          </button>
                        </div>
                        $subcat_html
                   </li>";
    } else {
        $outer .= "<li>
                        <a href='{$catalog_item['uri']}'>{$menutitle}</a>
                   </li>";
    }
}

$outer .= '</ul>';

return $outer;
