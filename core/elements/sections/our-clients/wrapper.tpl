
{set $data = "@FILE snippets/getJsonData.php" | snippet : [
    "path" => "/assets/template/json/sections/our-clients.json"
]}

{if $data['status'] == 'success'}
<div class="our-clients section-margin">
  <div class="container">
    <div class="our-clients__block">
      <h2 class="font-candara text-center fs-56-39">Наши клиенты</h2>

      <div class="our-clients__row">
        {foreach $data['data'] as $image}
            <img src="{$image}" loading="lazy"/>
        {/foreach}
      </div>
    </div>
  </div>
</div>
{/if}