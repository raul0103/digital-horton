<div class="news-page__item" onclick="getNewsResource({$id},this)">
    <div class="news-page__item-image">
        {if $main_image}
        <img src="{$main_image}" />
        {/if}
    </div>
    <div class="news-page__item-content">
        <div class="fs-25-18-16 font-candara">{$introtext}</div>
        <div class="fs-21-15 secondary-gray-color">{$content | truncate : 150 : ' ... '}</div>
        <div class="fs-17-13 secondary-gray-color">{$publishedon | date : 'd.m.Y'}</div>
    </div>
</div>