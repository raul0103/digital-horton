{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}
    
    <div class="delivery-page section-margin">
        <div class="container">
            <h1 class="section-title">{$_modx->resource.pagetitle}</h1>

            <div class="text-content">
                {$_modx->resource.content}
            </div>
            <div class="delivery-page__cards">
                <h3>Собственный автопарк</h3>
                <div class="delivery-page__row">
                    {foreach [
                        ['image' => 'assets/template/images/sections/delivery/1.png', 'title' => 'Газели, 4 м', 'text' => 'Грузоподъемность — 1,6 тонн'],
                        ['image' => 'assets/template/images/sections/delivery/2.png', 'title' => 'Борт, 6 м', 'text' => 'Грузоподъемность — 5 тонн'],
                        ['image' => 'assets/template/images/sections/delivery/3.png', 'title' => 'Борт, 13 м', 'text' => 'Грузоподъемность — 20 тонн'],
                        ['image' => 'assets/template/images/sections/delivery/4.png', 'title' => 'Газель Next 6', 'text' => 'Грузоподъемность — 2 тонны'],
                        ['image' => 'assets/template/images/sections/delivery/5.png', 'title' => 'Манипулятор-Борт, 12 м', 'text' => 'Грузоподъемность — 6 тонн'],
                        ['image' => 'assets/template/images/sections/delivery/6.png', 'title' => 'Тентованная фура', 'text' => 'Грузоподъемность — 22 тонны'],
                    ] as $card}
                    <div class="delivery-page__card">
                        <img class="delivery-page__card-image" src="{$card['image']}" />
                        <div class="delivery-page__card-title">{$card['title']}</div>
                        <div class="delivery-page__card-text">{$card['text']}</div>
                    </div>
                    {/foreach}
                </div>
            </div>

            <div class="delivery-page__bottom-text">Стоимость доставки уточняйте у наших менеджеров</div>
        </div>
    </div>

    <div class="container">
        <div class="primary-block">
            <h2 class="fs-48-33 primary-block__title">Нормы загрузки труб</h2>
            {include "file:sections/loading-pipes/wrapper.tpl"}
        </div>
    </div>

    {include "file:sections/callback-map/wrapper.tpl"}
{/block}
