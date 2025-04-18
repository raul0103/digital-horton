{set $data = "@FILE snippets/getJsonData.php" | snippet : [
    "path" => "/assets/template/json/sections/loading-pipes.json"
]}

{if $data['status'] == 'success'}
<!--noindex-->
<noindex>
    <div class="loading-pipes">
        {foreach $data['data'] as $data}
        <div class="loading-pipes__row">
            <ul>
                {foreach $data['items'] as $item}
                    <li>{$item}</li>
                {/foreach}
            </ul>
            <img src="{$data['image']}" />
        </div>
        {/foreach}
    </div>
</noindex>
<!--/noindex-->
{/if}