<div class="categories section-margin">
  <div class="container">
    <div class="categories__row">
      {if $show_sidebar}
      <div class="categories__menu primary-radius primary-dark-bg">
        <ul>
          {foreach $_modx->getPlaceholder('map-resources.catalog') as $catalog_item}
          <li>
            <a href="{$catalog_item['uri']}">
                {if $catalog_item['main_image']}
                    <img src="{$catalog_item['main_image']}" />
                {/if}
                {$catalog_item['menutitle']}
            </a>
          </li>
          {/foreach}
        </ul>
      </div>
      {/if}
      <div class="categories__blocks">
        {foreach $_modx->getPlaceholder('map-resources.catalog') as $index => $catalog_item}
            {if $index < 4}
            <div class="categories__blocks__item">
                <div class="categories__blocks__item-title font-candara d-flex gap-8" data-opened-btn="cb-{$catalog_item['id']}">
                    <svg width="16" height="16" class="icon">
                        <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#arrow-right"></use>
                    </svg>
                    {$catalog_item['menutitle']}
                </div>
                <div class="categories__blocks__item-childs" data-opened-element="cb-{$catalog_item['id']}">
                    {foreach $catalog_item['children'] as $child}
                      <a href="{$child['uri']}" class="categories__blocks__item-childs-item">
                        {if $child['main_image']}
                            <img src="{$child['main_image']}" />
                        {/if}

                        {$child['menutitle']}
                      </a>
                    {/foreach}
                </div>
            </div>
            {/if}
        {/foreach}
      </div>
    </div>
  </div>
</div>
