<?php

if ($modx->user->hasSessionContext($modx->resource->context_key)) {
    $profile_id = $modx->getOption('profile_id');
    $url = $modx->makeUrl($profile_id);
    $modx->sendRedirect($url);
}
