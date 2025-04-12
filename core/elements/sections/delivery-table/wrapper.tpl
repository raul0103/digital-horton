{set $data = "@FILE snippets/getJsonData.php" | snippet : [
    "path" => "/assets/template/json/sections/delivery-table.json"
]}

<div class="delivery-table">
  <div class="text-content">
    <p>
      Мы предлагаем быструю и удобную доставку 24/7, в том числе в выходные дни
      — стоимость рассчитывается индивидуально, учитывая расстояние до вашего
      объекта. Если нужные материалы есть в наличии, заказ будет у вас уже через
      2 часа. В случае отсутствия товара, мы согласуем с вами удобное время
      доставки.
    </p>
    <p>
      Заказать продукцию и оформить доставку можно по телефону
      <a class="link" href="tel:{'phone'|config}">{'phone'|config}</a>,
      воспользовавшись формой обратной связи на нашем сайте или написав на
      электронную почту
      <a class="link" href="tel:{'email'|config}">{'email'|config}</a>.
    </p>
  </div>
  {if $data['status'] == 'success'}
  <div class="table-container">
    <table class="table">
      <thead>
        <tr>
          <th>Способ доставки</th>
          <th>Макс. длина груза</th>
          <th>Стоимость доставки по СПб</th>
        </tr>
      </thead>
      <tbody>
        {foreach $data['data'] as $data}
        <tr>
          <td>{$data[0]}</td>
          <td>{$data[1]}</td>
          <td>{$data[2]}</td>
        </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  {/if}
</div>
