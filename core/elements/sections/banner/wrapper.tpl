<div class="banner section-margin">
 <div class="container">
  <div class="swiper" data-swiper="banner">
   <div class="swiper-wrapper">
    {foreach [
      ['title'=>'Пластиковые трубы для защиты кабеля: надёжность, проверенная временем','text'=>'Мы поставляем ПНД трубы, которые отвечают современным требованиям безопасности и стандартизации. Ассортимент под любые задачи.','image'=>'/assets/template/images/sections/banner/1.jpg','classes' => 'no-shadow'],
      ['title'=>'Пластиковые колодцы: современный стандарт инженерных сетей','text'=>'Проектируем и производим колодцы под заказ — от ревизионных до распределительных. Гарантируем качество, быструю отгрузку и оптимальные решения под ваш проект.','image'=>'/assets/template/images/sections/banner/2.png','classes' => 'no-shadow']
      ['title'=>'Комплексные поставки инженерных решений: всё в одном месте','text'=>'Поставляем пластиковые трубы, колодцы, фитинги и арматуру. Комплексные решения помогают сократить подрядчиков и снизить риски.','image'=>'/assets/template/images/sections/banner/3.png','classes' => 'no-shadow']
    ] as $slide}
    <div class="swiper-slide {$slide['classes']}" style=" background-image: url('{$slide['image']}');" >
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
