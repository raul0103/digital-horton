<?php

if ($modx->user->hasSessionContext($modx->resource->context_key)) {
    $url = $modx->makeUrl($page_id);
    $modx->sendRedirect($url);
}
