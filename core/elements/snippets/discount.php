<?php

if ($old_price < $price) return 0;
$result = ($old_price - $price) / $old_price * 100;
return round($result);
