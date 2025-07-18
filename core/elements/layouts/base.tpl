{'@FILE snippets/ajax/ajax.php' | snippet}
{'@FILE modules/cart/backend/snippets/ajax.php' | snippet}
{include 'file:modules/fast-search/chunks/init.tpl'}

{* Запишет в плейсхолдер *}
{set $user_discount = "@FILE snippets/getUserDiscount.php" | snippet}

{* Плейсхолдеры для модуля избранных и сравнения товаров *}
{'@FILE modules/store-product-selection/snippet/setPlaceholder.php' | snippet : ["cookie_key" => "favorite-products"]}
{'@FILE modules/store-product-selection/snippet/setPlaceholder.php' | snippet : ["cookie_key" => "comparison-products"]}

{set $product_total = "@FILE modules/cart/backend/snippets/getCartTotal.php" | snippet}
{$_modx->setPlaceholder('product_total',$product_total)}

{set $catalog_id = "catalog_id" | option}
{if $catalog_id}
  {"@FILE modules/map-resources/mapResources.php" | snippet : [
    'parents' => 'catalog_id' | config
    'toPlaceholder' => 'map-resources.categories'
    'includeTVs' => 'main_image,category_icon'
    'where' => '{"class_key":"msCategory", "template:in":[30,37,39], "deleted":0}'
    'depth' => 10,
  ]}

  {* Статичные категории *}
  {set $staticCategories = "@FILE snippets/data/staticCategories.php" | snippet}
  {$_modx->setPlaceholder('static-categories', $staticCategories)}
{else}
  Не найдена опция catalog_id
{/if}

{"@FILE modules/map-resources/mapResources.php" | snippet : [
  'parents' => 0
  'depth' => 2
  'where' => '{"class_key":"modDocument","deleted":0}'
  'toPlaceholder' => 'map-resources.menu'
]}

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <base href="/">

    <title>{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</title>

    <link rel="icon" type="image/png" href="/assets/template/favicon/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/svg+xml" href="/assets/template/favicon/favicon.svg" />
    <link rel="shortcut icon" href="/assets/template/favicon/favicon.ico" />
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/template/favicon/apple-touch-icon.png" />
    <link rel="manifest" href="/assets/template/favicon/site.webmanifest" />

    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

    <meta name="description" content="{$_modx->resource.description}">

    <link
      rel="stylesheet"
      href="/assets/template/css/main.css?{'file_version' | config}"
    />

  </head>
  <body>
    {include 'file:sections/header/wrapper.tpl'}
    {block 'content'}{/block}
    {include 'file:sections/footer/wrapper.tpl'}

    {include "file:sections/mobile-fixed-navigation/wrapper.tpl"}
    {include "file:modules/modals/chunks/all.tpl"}
    {block 'modals'}{/block}

    <script>
      const CITY_CHANGE = "{'@FILE modules/city-changer/snippets/cityDefinition.php'|snippet}"
      const CONTEXT_KEY = "{$_modx->context.key}"
      const MAIN_HOST = "{'main_host'|config}"
      const CONTEXT_PREFIX = { web: "", zhbi: "zhbi-", kip: "kip-", pozharka: "pozhsnab-", neft: "neft-", svet: "svet-", };
    </script>
    <script src="/assets/template/js/main.js?{'file_version' | config}" defer ></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    
    {if $_modx->isAuthenticated('mgr')}
      <!-- {$_modx->getInfo('', true, '@INLINE {$key} => {$value} <br>')} -->
    {/if}
  </body>
</html>
