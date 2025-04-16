[[!Profile]]

<form class="form order-page__wrap" data-form-id="order-form">
  <input type="hidden" name="user_discount" value="{$_modx->getPlaceholder('user_discount')}">

  <div class="order-page__forms d-grid col-sm-2 br-primary-small">
    <div class="d-grid gap-16">
      <div class="block-title">Покупатель</div>
      
      <div class="form__group">
        <label>Контактное лицо *</label>
        <input type="text" name="name" placeholder="ФИО" required value="[[+fullname]]" />
      </div>

      <div class="d-grid col-sm-2 gap-16">
        <div class="form__group">
          <label>Электронная почта *</label>
          <input type="email" name="email" required value="[[+email]]"/>
        </div>
        <div class="form__group">
          <label>Телефон *</label>
          <input type="tel" name="phone" placeholder="+7 (___) ___-__-__" value="[[+phone]]" />
          <span class="error-color" data-error="phone" style="display: none;"></span>
        </div>
      </div>

      <div class="form__group">
        <label>Название компании</label>
        <input type="text" name="company-name" />
      </div>

      <div class="form__group">
        <label>Юридический адрес</label>
        <input type="text" name="ur-address" />
      </div>

      <div class="d-grid col-sm-2 gap-16">
        <div class="form__group">
          <label>ИНН</label>
          <input type="text" name="inn" />
        </div>
        <div class="form__group">
          <label>КПП</label>
          <input type="text" name="kpp" />
        </div>
      </div>

      <div class="d-grid col-sm-2 gap-16">
        <label
          class="btn big-btn btn-bordered d-flex gap-8 cursor-pointer w-100"
        >
          <svg class="primary-stroke" width="15" height="15">
            <use
              xlink:href="/assets/template/icons/sprite.svg?v={'file_version'|config}#skrepka"
            ></use>
          </svg>
          Прикрепить реквизиты
          <input
            type="file"
            name="requisites"
            style="display: none"
            accept=".pdf, .doc, .docx, .xls, .xlsx, .png, .jpg, .jpeg, .webp"
          />
        </label>

        <div class="fs-12 secondary-gray-color">
          Загрузите файл с реквизитами компании вместо заполнения полей. Макс.
          размер файла 5 Мб.
        </div>
      </div>
    </div>
    <div class="d-grid gap-16">
      <div class="block-title">Адрес доставки</div>

      {include "file:chunks/form/address-select.tpl"}

      <div class="form__group">
        <label>Улица</label>
        <input type="text" name="street" />
      </div>
      <div class="form__group">
        <label>Комментарий</label>
        <textarea name="comment" rows="5" cols="33"></textarea>
      </div>

      <div>
        <div class="block-title mb-24-16">Способ оплаты</div>
        <div class="custom-radio">
          <input
            type="radio"
            id="beznal"
            name="payment"
            value="Безналичный расчет"
            checked
          />
          <span class="radio-mark"></span>
          <label for="beznal">Безналичный расчет</label>
        </div>
      </div>
    </div>
  </div>

  {include "file:templates/order/sidebar.tpl"}
</form>
