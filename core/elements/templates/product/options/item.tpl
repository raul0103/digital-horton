{foreach $options as $option}
  {if $option.value is array}
      {set $value = $option.value | join : ', '}
  {else}
      {set $value = $option.value}
  {/if}
  {if $value}
    <div class="product-page__options-item">
        <div>{$option.caption}</div>
        <span class="delimiter"></span>
        <div class="product-page__options-item-value">{$value}</div>
    </div>
  {/if}
{/foreach}