/**
 * Слушает отправки форм
 */

export default function fetchItObserve() {
  document.addEventListener(FetchIt.events.success, async function (event) {
    /**
     * Если форма заказа то
     * - Другой текст уведомления
     * - Очистить козину
     * - Перезагрузить страницу
     */
    let form_id = event.detail.form.dataset.formId;
    if (form_id == "order-form") {
      const form_data = {};
      for (let [key, value] of event.detail?.formData.entries()) {
        form_data[key] = value;
      }

      await cart.events.minishopCreateOrder(form_data);
      await cart.events.clear(false);
      location.reload();
    } else {
      notifications.success("Форма успешно отправлена");
    }

    console.log(event.detail);
  });

  document.addEventListener(FetchIt.events.error, function (event) {
    notifications.error("Ошибка при отправке формы");
    console.log(event.detail);
  });
}
