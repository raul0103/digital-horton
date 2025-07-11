<div class="big-form mb-24">
  <div class="container">
    <div class="big-form__row">
      <div class="big-form__info">
        <div class="fs-48-33-26 fw-700 white-color font-candara">
          Оставьте заявку на расчёт стоимости и сроки доставки
        </div>
        <div class="fs-28-19-16 white-color">
          Наш менеджер свяжется с вами в ближайшее рабочее время
        </div>
      </div>

      {'!FetchIt' | snippet : [
      'form' => '@INLINE
      <form class="form dark" enctype="multipart/form-data">
        <div class="d-grid gap-16">
          <div class="d-flex xs-column gap-16">
            <div class="w-100">
              <label>Имя *</label>
              <input type="text" placeholder="Имя" required />
            </div>
            <div class="w-100">
              <label>E-mail</label>
              <input type="email" name="email" placeholder="email@email.ru" />
            </div>
            <div class="w-100">
              <label>Телефон *</label>
              <input type="tel" name="phone" placeholder="+7" required />
            </div>
          </div>

          <div class="xs-d-block">
            <label>* поля, обязательные для заполнения</label>
          </div>

          <div class="d-grid xs-column col-2 gap-16">
            <div>
              <label>Ваш заказ</label>
              <input type="text" placeholder="Название товара" />
            </div>

            <div>
              <label>Адрес доставки</label>
              <input name="address" placeholder="Укажите полный адрес" value="" />
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
                  xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#skrepka"
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
                  xlink:href="/assets/template/icons/sprite.svg?v={"file_version"|config}#skrepka"
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
      </form>'
        'emailTo' => 'email' | config
        'emailSubject' => "Заявка на расчет стоимости"
        'emailTpl' => '@FILE chunks/fetchit-email-tpl.tpl'
        'hooks' => 'email'
        'snippet' => 'FormIt'
        'customValidators' => 'phone-format'
        'validate' => 'phone:required:phone-format'
      ]}
    </div>
  </div>
</div>
