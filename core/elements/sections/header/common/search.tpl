<form class="form header__search-block" action="search-result.html" method="get" fast-search-form="{$device}">
  <input type="text" name="search" placeholder="Поиск по сайту" fast-search-input="{$device}" />
  <button class="btn btn-circle  header__search-submit">
    <svg width="16" height="16" class="primary-stroke">
      <use
        xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#search"
      ></use>
    </svg>
  </button>
</form>
