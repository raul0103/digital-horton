{set $data = "@FILE snippets/getJsonData.php" | snippet : [
    "path" => "/assets/template/json/sections/advantages.json"
]}

{if $data['status'] == 'success'}
<div class="advantages section-margin">
  <div class="container">
    <div class="advantages__wrap">
        <h2 class="section-title">Наши преимущества</h2>
        <div class="advantages__row">
            {foreach $data['data'] as $item}
            <div class="advantages__item">
                <div class="advantages__item-image">
                <img src="{$item['image']}" loading="lazy"/>
                </div>
                <div class="advantages__item-content">
                <div class="advantages__item-title">{$item['title']}</div>
                <div class="advantages__item-text">{$item['text']}</div>
                </div>
            </div>
            {/foreach}
        </div>
    </div>
  </div>
</div>
{/if}
