<div class="big-form">
  <div class="container">
    <div class="big-form__row">
      <div class="big-form__info">
        <div class="fs-48-33 fw-700 white-color font-candara">
          Оставьте заявку на расчёт стоимости и сроки доставки
        </div>
        <div class="fs-28-19 white-color">
          Наш менеджер свяжется с вами в ближайшее рабочее время
        </div>
      </div>
      <form class="form dark">
        <div class="d-grid gap-16">
          <div class="d-flex xs-column gap-16">
            <div class="w-100">
              <label>Имя *</label>
              <input type="text" placeholder="Имя" required />
            </div>
            <div class="w-100">
              <label>E-mail</label>
              <input type="email" placeholder="email@email.ru" />
            </div>
            <div class="w-100">
              <label>Телефон *</label>
              <input type="tel" value="+7" />
            </div>
          </div>

          <div class="xs-d-block">
            <label>* поля, обязательные для заполнения</label>
          </div>

          <div class="d-grid xs-column col-2 gap-16">
            <div>
              <label>Ваш заказ</label>
              <input type="text" placeholder="Плиты укрепления П-1, 20 шт." />
            </div>

            <div>
              <label>Адрес доставки</label>
              {include "file:sections/big-form/address-select.tpl"}
            </div>
          </div>

          <div class="d-grid col-2 gap-16 xs-d-none">
            <label>* поля, обязательные для заполнения</label>

            <label class="custom-checkbox">
              <input type="checkbox" checked="" required="" />
              <span class="checkmark"></span>
              Нажимая кнопку «Отправить заявку», вы даёте своё согласие на
              обработку персональных данных
            </label>
          </div>

          <div class="big-form__controls">
            <label class="btn btn-bordered white d-flex gap-8 cursor-pointer">
              <svg stroke="white" width="15" height="15">
                <use
                  xlink:href="/assets/template/icons/sprite.svg?v=13#skrepka"
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
            <label class="btn btn-bordered white d-flex gap-8 cursor-pointer">
              <svg stroke="white" width="15" height="15">
                <use
                  xlink:href="/assets/template/icons/sprite.svg?v=13#skrepka"
                ></use>
              </svg>
              Прикрепить документы
              <input
                type="file"
                name="documents"
                style="display: none"
                accept=".pdf, .doc, .docx, .xls, .xlsx, .png, .jpg, .jpeg, .webp"
              />
            </label>
            <button class="btn btn-white">Отправить заявку</button>
          </div>

          <div class="xs-d-block">
            <label class="custom-checkbox">
              <input type="checkbox" checked="" required="" />
              <span class="checkmark"></span>
              Нажимая кнопку «Отправить заявку», вы даёте своё согласие на
              обработку персональных данных
            </label>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
