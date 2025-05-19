<?php

$currentUrl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http");
$currentUrl .= "://{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";

echo $currentUrl;
