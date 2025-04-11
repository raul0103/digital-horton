{set $data = "@FILE snippets/getJsonData.php" | snippet : [
    "path" => "/assets/template/json/sections/requisites.json"
]}

{if $data['status'] == 'success'}
<div class="d-grid gap-16">
    {foreach $data['data'] as $group_name => $items}
      <div class="fs-25-18 fw-700">{$group_name}</div>
      <div class="d-grid gap-14">
        {foreach $items as $key => $value}
          {switch $value}
          {case 'email'}
            {set $value = 'email'|config}
          {case 'phone'}
            {set $value = 'phone'|config}
          {case 'address'}
            {set $value = 'address'|config}
          {case 'company_name'}
            {set $value = 'company_name'|config}
          {default}
          {/switch}
          <div class="requisites-page__item">
            <span class="fw-500">{$key}</span>
            <span class="delimiter"></span>
            <span>{$value}</span>
          </div>
        {/foreach}
      </div>
    {/foreach}
</div>
{/if}