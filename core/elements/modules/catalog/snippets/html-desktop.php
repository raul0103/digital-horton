<?php

$outer = '<ul class="catalog-header__items">';
foreach ($data as $catalog_item) {
    // Идем по категориям
    if ($catalog_item['children'] && $catalog_item['id']) {
        // Идем по подкатегориям
        if (count($catalog_item['children']) > 0) {
            $subcat_html = "<ul class='catalog-header__dropdown'>";
            foreach ($catalog_item['children'] as $subcat) {
                $subcat_html .= "<li>
                                     <a href='{$subcat['uri']}'>{$subcat['menutitle']}</a>
                                 </li>";
            }
            $subcat_html .= "</ul>";
        }

        $outer .= "<li class='catalog-header__item' data-opened-element='catalog-subcat-{$catalog_item['id']}'>
                        <div class='catalog-header__item-title'>
                          <a href='{$catalog_item['uri']}'>$bestseller {$catalog_item['menutitle']}</a>
                          <button data-opened-btn='catalog-subcat-{$catalog_item['id']}'>
                                <svg width='10' height='10' class='icon'>
                                    <use stroke='white' xlink:href='/assets/template/icons/sprite.svg?v=16#icon-arrow-down'></use>
                                </svg>
                          </button>
                        </div>
                        $subcat_html
                   </li>";
    } else {
        $outer .= "<li>
                        <a href='{$catalog_item['uri']}'>{$catalog_item['menutitle']}</a>
                   </li>";
    }
}

$outer .= '</ul>';

return $outer;
