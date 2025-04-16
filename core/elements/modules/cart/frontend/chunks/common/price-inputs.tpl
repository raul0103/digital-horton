{set $user_discount = "@FILE snippets/getUserDiscount.php" | snippet}
<input type="hidden" name="user_discount" value="{$user_discount}">
<input type="hidden" name="price" value="{$price}" />
<input type="hidden" name="old_price" value="{$old_price}" />
<input type="hidden" name="id" value="{$product_id}" />
<input type="hidden" name="unit" value="{$unit | gettype == 'array' ? $unit[0] : $unit}" />
