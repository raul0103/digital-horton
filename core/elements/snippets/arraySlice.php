<?php

$even = [];
$odd = [];

foreach (array_values($array) as $index => $value) {
    if ($index % 2 === 0) {
        $even[] = $value;
    } else {
        $odd[] = $value;
    }
}

return [$even, $odd];
