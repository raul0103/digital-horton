<div class="categories section-margin">
  <div class="container">
    <div class="categories__row">
      {if $sidebar_items}
        {set $current_url = "@FILE snippets/getCurrentUrl.php" | snippet}

        <div class="categories__menu primary-dark-bg">
          <ul>
            {foreach $sidebar_items as $catalog_item}
            <li>
             
              <a class="{if $catalog_item['uri'] == $current_url}active{/if}" href="{$catalog_item['uri']}">
                  {if $catalog_item['category_icon']}
                      <img src="{$catalog_item['category_icon']}" />
                  {/if}
                  {$catalog_item['menutitle'] ?: $catalog_item['pagetitle']}
              </a>
            </li>
            {/foreach}
          </ul>
        </div>
      {/if}

      <div class="categories__blocks">
            {foreach $categories as $category}
            <div class="categories__blocks__item">
              <div class="categories__blocks__item-title justify-between d-flex gap-8" {if !$category['children']}style="margin-bottom:0"{/if}>
                  <a class="font-candara" href="{$category['uri']}">
                    {$category['menutitle'] ?: $category['pagetitle']}
                  </a>

                  <svg data-opened-btn="cb-{$category['id']}" width="16" height="16" class="primary-stroke">
                      <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#arrow-right"></use>
                  </svg>
              </div>
              {if $category['children']}
              <div class="categories__blocks__item-childs" data-opened-element="cb-{$category['id']}">
                  {foreach $category['children'] as $children}
                    <a href="{$children['uri']}" class="categories__blocks__item-childs-item">
                      {if $children['main_image']}
                          <img src="{$children['main_image']}" />
                      {/if}

                      {$children['menutitle'] ?: $children['pagetitle']}
                    </a>
                  {/foreach}
              </div>
              {/if}
          </div>
            {/foreach}
      </div>

    </div>
  </div>
</div>