<div class="categories section-margin">
  <div class="container">
    <div class="categories__row">
      {if $show_sidebar}
        {set $items = $_modx->getPlaceholder('map-resources.categories')}
        <div class="categories__menu primary-dark-bg">
          <ul>
            {foreach $items as $index => $catalog_item}
            <li>
              <a class="{if $index == 0}active{/if}" data-opened-btn="category-{$catalog_item['id']}" data-toggle-not="true" data-close-early="categories">
                  {if $catalog_item['category_icon']}
                      <img src="{$catalog_item['category_icon']}" />
                  {/if}
                  {$catalog_item['menutitle'] ?: $catalog_item['pagetitle']}
              </a>
            </li>
            {/foreach}

            {foreach $_modx->getPlaceholder('static-categories') as $index => $catalog_item}
            <li>
              <a href="{$catalog_item['uri']}">
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

      {foreach $_modx->getPlaceholder('map-resources.categories') as $index => $catalog_item}
        {set $childrens = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
          'data' => $_modx->getPlaceholder('map-resources.categories'),
          'where' => '{"parent":'~$catalog_item['id']~'}'
        ]}

        <div class="categories__blocks {if $index == 0}opened{/if}" data-opened-element="category-{$catalog_item['id']}">
              {foreach $childrens as $child}
              <div class="categories__blocks__item">
                <div class="categories__blocks__item-title font-candara d-flex gap-8" data-opened-btn="cb-{$child['id']}" {if !$child['children']}style="margin-bottom:0"{/if}>
                    <svg width="16" height="16" class="primary-stroke">
                        <use xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#arrow-right"></use>
                    </svg>
                    {$child['menutitle'] ?: $child['pagetitle']}
                </div>
                {if $child['children']}
                <div class="categories__blocks__item-childs" data-opened-element="cb-{$child['id']}">
                    {foreach $child['children'] as $child}
                      <a href="{$child['uri']}" class="categories__blocks__item-childs-item">
                        {if $child['main_image']}
                            <img src="{$child['main_image']}" />
                        {/if}

                        {$child['menutitle'] ?: $child['pagetitle']}
                      </a>
                    {/foreach}
                </div>
                {/if}
            </div>
              {/foreach}
        </div>
      {/foreach}
    </div>
  </div>
</div>
