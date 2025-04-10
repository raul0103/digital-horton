<div class="category-listing section-margin" id="mse2_mfilter">
  <div class="container">
    <div class="category-listing__row">
      <div class="category-listing__filters" data-filter-window>

        <div class="category-listing__filters-header sm-d-block">
          <button class="btn btn-simple" data-filter-window-close>
            <svg width="14" height="14" stroke="#000">
              <use
                xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#close"
              ></use>
            </svg>
          </button>
        </div>

        <div class="category-listing__filters__wrap">
          <div class="category-listing__filters-title">
            Фильтры
            <button class="btn btn-simple category-listing__filters-close" data-mfilter-reset data-filter-window-close>
              Сбросить
              <svg width="10" height="10">
                <use
                  xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#close"
                ></use>
              </svg>
            </button>
          </div>

          <form
            class="form category-listing__filters-row"
            action="{$_modx->resource.id | url}"
            method="post"
            id="mse2_filters"
          >
            {$filters}
            
            <button class="sm-d-block mb-8 w-100 btn btn-primary" data-filter-window-close>Применить</button>
            <button class="w-100 btn btn-bordered" type="reset">Сбросить фильтры</button>
          </form>
        </div>

      </div>

      <div class="category-listing__content">
     
          <div class="sortby__controls">
            <button class="sm-d-block sortby__controls-filter font-candara" data-filter-window-open>
              <svg width="18" height="12" stroke="#000">
                <use
                  xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#filter"
                ></use>
              </svg>
              Фильтр
            </button>

            <div class="sortby__controls-item sm-d-none" id="mse2_sort">
              <label class="sm-d-none">Сортировать по </label>
              <a
                class="sortby__controls-item-sort-item"
                href="#"
                data-sort="tv|hits_page"
                data-default="desc"
              >
              <span class="sm-d-block"></span>
                Популярности
              </a>
              <a
                class="sortby__controls-item-sort-item"
                href="#"
                data-sort="ms|price"
                data-default="desc"
              >
                Цене
              </a>
            </div>

            <div class="sortby__controls-item font-candara arrow-bottom">
              <label>Показывать по</label>
              <div class="sortby__controls-item-select">
                  <select name="mse_limit" id="mse2_limit" >
                      {foreach [24, 48, 98] as $v}
                          <option value="{$v}"{if $limit == $v} selected{/if}>{$v}</option>
                      {/foreach}
                  </select>
              </div>
            </div>

          </div>

          <div class="chips">
            <div class="chips__row" id="mse2_selected" style="display: none;"></div>
          </div>

          <div class="category-listing__products" id="mse2_results">
            {$results}
          </div>

          <div class="mse2_pagination">{'page.nav' | placeholder}</div>

      </div>
    </div>
  </div>
</div>
