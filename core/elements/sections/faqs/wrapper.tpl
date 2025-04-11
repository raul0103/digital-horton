{set $data = "@FILE snippets/getJsonData.php" | snippet : [
    "path" => "/assets/template/json/sections/faqs.json"
]}

{if $data['status'] == 'success'}
<div class="faqs">
    <div class="faqs__row">
        {foreach $data['data'] as $index => $item}
        <div class="faqs__item">
            <div class="faqs__item-question fw-700 font-candara fs-25-18" data-opened-btn="answer-{$index_column}{$index}">{$item['question']}</div>
            <div class="faqs__item-answer" data-opened-element="answer-{$index_column}{$index}">{$item['answer']}</div>
        </div>
        {/foreach}
    </div>
</div>
{/if}
