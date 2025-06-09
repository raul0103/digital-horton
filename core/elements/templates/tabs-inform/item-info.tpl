<div class="tabs-inform-page__item">
  <div class="d-flex gap-8 font-candara">
    <svg width="18" height="22" class="primary-stroke">
      <use
        xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#document"
      ></use>
    </svg>
    <span class="fw-500 fs-25-18">{$item['title']}</span>
  </div>
  <div class="tabs-inform-page__item-controls">
    <a class="btn btn-bordered" href="{$item['href']}" target="_blank"
      >Открыть</a
    >
    <button
      class="btn btn-bordered d-flex gap-8"
      onclick="downloadFile('{$item['href']}','{$item['title']}')"
    >
      <svg width="20" height="22" class="primary-stroke">
        <use
          xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#download"
        ></use>
      </svg>
      Скачать
    </button>
  </div>
</div>
