{'!FetchIt' | snippet : [
'form' => '@INLINE
<form class="form">
  <div class="font-candara fs-25-18-16 mb-16">
    {$title ?: "Есть вопросы? Заполните форму ниже и мы перезвоним вам !"}
  </div>
  <div class="d-grid gap-16 col-md-3 align-end">
    <div class="form__group">
      <label>E-mail</label>
      <input type="email" name="email"/>
    </div>
    <div class="form__group">
      <label>Телефон *</label>
      <input type="tel" name="phone" placeholder="+7" required />
    </div>
    <button class="btn btn-primary big-btn w-100">Закать звонок</button>
  </div>
</form>'
  'emailTo' => 'email' | config
  'emailSubject' => $email_subject
  'emailTpl' => '@FILE chunks/fetchit-email-tpl.tpl'
  'hooks' => 'email'
  'snippet' => 'FormIt'
  'customValidators' => 'phone-format'
  'validate' => 'phone:required:phone-format'
]}