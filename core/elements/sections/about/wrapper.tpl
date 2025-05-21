{set $info_items = [
  ['value' => '10+', 'text' => 'лет на рынке'],
  ['value' => '10 000+', 'text' => 'клиентов по всей России'],
  ['value' => '18', 'text' => 'тонн полимерных труб поставлено'],
  ['value' => '300+', 'text' => 'заводов по всей России'],
]}

<div class="about section-margin">
  <div class="container">
    <div class="about__wrap">
      <div class="about__main">
        <div class="about__main-content">
          <div class="blind-gray-color fw-400 fs-24-17 mb-16-8">О компании</div>
          <div class="about__main-content-title mb-24-16">Horton Group</div>
          <div class="fs-21-15 mb-16-8">
            В настоящий момент компания HORTON GROUP - это сплоченная команда
            специалистов в области поставок инженерных решений для разных
            областей строительства.
          </div>
          <div class="fs-21-15">
            За 10  лет работы мы поставили более 18000 тн полимерных труб в
            разные точки России, сотни наименований запорной арматуры,
            более 27000 единиц стальных и полимерных фитингов.
          </div>
          <a class="btn btn-white about__main-btn-more fs-17" href="/about/">Подробнее</a>
        </div>
      </div>
      <div class="about__image">
        <img src="/assets/template/images/sections/about/3.png" />
      </div>
    </div>
    <div class="about__info">
      {foreach $info_items as $item}
      <div class="about__info-item">
        <div class="about__info-item-value">{$item['value']}</div>
        <div class="about__info-item-text">{$item['text']}</div>
      </div>
      {/foreach}
    </div>
  </div>
</div>
