{set $footer_menu_ids = 'footer_menu_ids' | config | fromJSON}

{*set $items_0 = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
'data' => $_modx->getPlaceholder('map-resources.categories'),
'where' => '{"id:in":['~$footer_menu_ids[0]|join~']}'
]*}
{*set $items_1 = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
'data' => $_modx->getPlaceholder('map-resources.categories'),
'where' => '{"id:in":['~$footer_menu_ids[1]|join~']}'
]*}
{set $items_2 = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.menu'),
  'where' => '{"id:in":['~$footer_menu_ids[2]|join~']}'
]}
{set $items_3 = "@FILE modules/map-resources/mapGetResourcesByWhere.php" | snippet : [
  'data' => $_modx->getPlaceholder('map-resources.menu'),
  'where' => '{"id:in":['~$footer_menu_ids[3]|join~']}'
]}

{set $catalog = "@FILE snippets/arraySlice.php" | snippet : ['array' => $_modx->getPlaceholder('static-categories')]}

<div class="footer__menu">
  <div class="fs-18 fw-700 mb-16">Каталог</div>
  <div class="footer__menu-wrap">
    <div class="footer__menu-group">
      <div class="d-grid gap-8 footer__menu-group-item">
        {foreach $catalog[0] as $item}
            <a class="fs-15" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a>
        {/foreach}
      </div>
      <div class="d-grid gap-8 footer__menu-group-item">
        {foreach $catalog[1] as $item}
            <a class="fs-15" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a>
        {/foreach}
      </div>
    </div>
    <div class="footer__menu-group">
      <div class="d-grid gap-16 footer__menu-group-item">
        {foreach $items_2 as $item}
            <a class="fw-700 fs-18" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a>
        {/foreach}
      </div>
      <div class="d-grid gap-16 footer__menu-group-item">
        {foreach $items_3 as $item}
            <a class="fw-700 fs-18" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a>
        {/foreach}
      </div>
    </div>
  </div>
</div>
