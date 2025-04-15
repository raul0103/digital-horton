{if $status_id == 1}
<div class="order-status">
    <svg width="16" height="16" class="primary-stroke">
        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#order-status-1"></use>
    </svg>
    Обработка заявки
</div>
{elseif $status_id == 2}
<div class="order-status">
    <svg width="16" height="16" class="primary-stroke">
        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#order-status-2"></use>
    </svg>
    Отгрузка со склада
</div>
{elseif $status_id == 1001}
<div class="order-status">
    <svg width="16" height="16" class="primary-stroke">
        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#order-status-3"></use>
    </svg>
    Выгрузка на объекте
</div>
{elseif $status_id == 3}
<div class="order-status">
    <svg width="16" height="16" class="primary-stroke">
        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#order-status-4"></use>
    </svg>
    В пути
</div>
{elseif $status_id == 1000}
<div class="order-status">
    <svg width="16" height="16" class="primary-stroke">
        <use xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#order-status-5"></use>
    </svg>
    Завершен
</div>
{/if}