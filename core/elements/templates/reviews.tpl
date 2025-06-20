{extends "file:layouts/base.tpl"} 

{block 'content'}
    {include "file:sections/breadcrumbs/wrapper.tpl"}

    <div class="reviews-page section-margin">
        <div class="container">

            <h1 class="section-title text-start">{$_modx->resource.pagetitle}</h1>

            <div class="reviews-page__row">
                {set $sources = 'mltreviews_sources' | option}
                {if $sources}
                    {set $sources = $sources | fromJSON}

                    {foreach $sources as $source}
                        {set $reviews_outer = "@FILE modules/reviews/snippets/mltReviewItems.php" | snippet : [
                            'tpl' => '@FILE modules/reviews/chunks/review-item-page.tpl',
                            'tplOuter' => '@INLINE {$items}',
                            'where' => ["source"=> $source['key']]
                        ]}
                        {if $reviews_outer}
                            <div class="reviews-page__group">
                                <div class="reviews-page__group-title fs-28-19-16 font-candara">
                                    <img src="{$source['logo']}" />
                                    {$source['name']}
                                </div>
                                
                                <div class="d-grid gap-16 col-md-3">{$reviews_outer}</div>
                            </div>
                        {/if}
                    {/foreach}


                    {set $reviews_outer = "@FILE modules/reviews/snippets/mltReviewItems.php" | snippet : [
                        'tpl' => '@FILE modules/reviews/chunks/review-item-page.tpl',
                        'tplOuter' => '@INLINE {$items}',
                        'where' => ["source"=> null]
                    ]}
                    {if $reviews_outer}
                    <div class="reviews-page__group">
                        <div class="reviews-page__group-title fs-28-19-16 font-candara">Отзывы из других источников</div>
                        <div class="d-grid gap-16 col-md-3">{$reviews_outer}</div>
                    </div>
                    {/if}
                {/if}
            </div>

        </div>
    </div>

    {include "file:sections/big-form/wrapper.tpl"}
    {include "file:sections/main-map/wrapper.tpl"}
{/block}
