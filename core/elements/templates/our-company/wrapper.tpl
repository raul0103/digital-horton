{extends "file:layouts/base.tpl"} 

{block 'content'}
{set $tabs = [
    ['classes' => 'active','title' => 'Обеспечиваем строительство сетей водоснабжения','text'=>'Наши высокое качество продукции и надёжная логистика гарантируют успешную реализацию проектов по возведению современных сетей комфортного водоснабжения для жителей на долгие годы.','image'=>'/assets/template/images/pages/our-company/1.jpg'],
    ['title' => 'Поставляем оборудование для нефтебаз','text'=>'Быстрая доставка и профессиональная поддержка позволяют нашим клиентам успешно справляться с любыми вызовами отрасли.','image'=>'/assets/template/images/pages/our-company/2.jpg'],    
    ['title' => 'Парковые зоны и общественные пространства','text'=>'Мы предлагаем разнообразные материалы для обустройства парков и зон отдыха. Наши решения способствуют созданию комфортных и привлекательных общественных пространств.','image'=>'/assets/template/images/pages/our-company/3.jpg'],
    ['title' => 'Помогаем возводить новые современные здания','text'=>'Активно сотрудничаем со многими строительными компаниями, обеспечивая их качественными материалами. Наше партнёрство основано на доверии и взаимовыгодных условиях для успешной реализации проектов.','image'=>'/assets/template/images/pages/our-company/4.jpg'],
    ['title' => 'Среди наших клиентов - промышленные предприятия с мировым именем','text'=>'Мы гордимся сотрудничеством и стремимся поддерживать высокие стандарты качества и надежности в каждой задаче.','image'=>'/assets/template/images/pages/our-company/5.jpg'],
]}

<div class="our-company">
    <div class="container">
        <div class="our-company__top section-margin">
            {include "file:sections/breadcrumbs/wrapper.tpl"}
            <div class="container">
                <h1 class="section-title text-start mb-0">{$_modx->resource.pagetitle}</h1>
            </div>
        </div>

        <div class="our-company__banner section-margin">
            <div class="our-company__banner-content">
                <div class="fs-56-39-30 fw-700 font-candara mb-16">Помогаем строить будущее</div>
                <div class="fs-21-15">
                    С каждым годом география наших поставок растет и клиенты доверяют нам не только важную часть работы по подбору и поставке труб, запорной арматуры, фитингов и оборудования для нефтебаз, но и работы по монтажу и сварке ПНД труб диаметром до 900 мм включительно.
                </div>
            </div>

            <div class="our-company__banner-tabs">
                {foreach $tabs as $index => $tab}
                <div class="our-company__banner-tab {$tab['classes']}" data-opened-btn="tab-{$index}" data-close-early="tabs" data-toggle-not="true" data-event-mouseover="true">
                    <div class="our-company__banner-tab-content">
                        <div class="our-company__banner-tab-content-row">
                            <div class="font-candara our-company__banner-tab-content-title">{$tab['title']}</div>
                            <div>{$tab['text']}</div>
                        </div>
                    </div>
                    <div class="our-company__banner-image">
                        <img src="{$tab['image']}" loading="lazy" data-opened-element="tab-{$index}"/>
                    </div>
                </div>
                {/foreach}
            </div>
        </div>

        <div class="our-company__info section-margin" >
            <div class="our-company__info-content" data-stats>
                <div class="our-company__info-content-item">
                    <div class="fw-700 fs-96-32 primary-blue-color"><span data-stat data-target="10">0</span>+</div>
                    <div class="fs-24-12 primary-blue-color">лет на рынке</div>
                </div>
                <div class="our-company__info-content-item">
                    <div class="fw-700 fs-96-32 primary-blue-color"><span data-stat data-target="10000">0</span>+</div>
                    <div class="fs-24-12 primary-blue-color">клиентов по всей России</div>
                </div>
                <div class="our-company__info-content-item">
                    <div class="fw-700 fs-96-32 primary-blue-color"><span data-stat data-target="18000">0</span>+</div>
                    <div class="fs-24-12 primary-blue-color">тонн полимерных труб поставлено</div>
                </div>
                <div class="our-company__info-content-item">
                    <div class="fw-700 fs-96-32 primary-blue-color"><span data-stat data-target="300">0</span>+</div>
                    <div class="fs-24-12 primary-blue-color">производителей по всей России</div>
                </div>
            </div>

        </div>

        <div class="our-company__history section-margin">
            <div class="our-company__history-content">
                <div class="fs-56-39-30 font-candara">История компании</div>
                <div class="fs-21-15">За 10  лет работы мы поставили более 18000 тонн полимерных труб в разные точки России , сотни наименований запорной арматуры, более 27000 единиц стальных и полимерных фитингов.</div>
            </div>
            <div class="our-company__history-image">
                <img src="/assets/template/images/pages/our-company/dates.png" />
            </div>
        </div>
    </div>

</div>

    {include "file:modules/reviews/chunks/wrapper.tpl"}
    {*include "file:sections/our-clients/wrapper.tpl"*}
    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
