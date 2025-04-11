<div class="news-page__item-full">
    <div class="news-page__item-full-image">
        <img src="{$resource->getTVvalue('main_image')}" />
    </div>
    <div class="news-page__item-full-content">
        <div class="fs-25-18 font-candara">{$resource->introtext}</div>
        <div class="fs-21-15 secondary-gray-color">{$resource->content}</div>
        <div class="fs-17-13 secondary-gray-color">{$resource->publishedon | date : 'd.m.Y'}</div>
    </div>
</div>