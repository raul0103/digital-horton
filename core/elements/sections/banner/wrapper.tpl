<div class="banner section-margin">
  <div class="container">
    <div class="swiper" data-swiper="banner">
      <div class="swiper-wrapper">
        {foreach [
            ['title'=>'Надёжность, проверенная временем','text'=>'Выбирая HORTON, вы выбираете качество, компетентность и чётко слаженный процесс от поступления заявки до выполнения поставки и работ на объекте.','image'=>'/assets/template/images/sections/banner.jpg',''],
            ['title'=>'Производство и поставка полимерных труб и фитингов','text'=>'Доставка по всей России, индивидуальная система скидок в зависимости от объема поставки.','image'=>'/assets/template/images/sections/banner-2.jpg']
        ] as $slide}
        <div class="swiper-slide" style=" background-image: url('{$slide['image']}');" >
          <div class="banner__content">
            <div class="banner__content-title font-candara">{$slide['title']}</div>
            <div class="banner__content-text">{$slide['text']}</div>
          </div>
        </div>
        {/foreach}
      </div>
      {include "file:chunks/buttons/swiper-left.tpl"}
      {include "file:chunks/buttons/swiper-right.tpl"}
    </div>
  </div>
</div>
