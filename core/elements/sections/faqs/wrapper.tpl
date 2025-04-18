{set $data = "@FILE snippets/getJsonData.php" | snippet : [
    "path" => "/assets/template/json/sections/faqs.json"
]}

{if $data['status'] == 'success'}
<div class="accordion">
    <div class="accordion__row accordion-col-2">
        {foreach $data['data'] as $index => $item}
        <div class="accordion__item">
            <div class="accordion__item-header fw-700 font-candara fs-25-18" data-opened-btn="content-{$index_column}{$index}">{$item['question']}</div>
            <div class="accordion__item-content" data-opened-element="content-{$index_column}{$index}">
                <div class="accordion__item-content__wrap">{$item['answer']}</div>
            </div>
        </div>
        {/foreach}
    </div>
</div>
{/if}
