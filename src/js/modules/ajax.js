export default function initAjax() {
  window.getChangeCitySubdomain = async (city_name) => {
    const response = await fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/text",
      },
      body: JSON.stringify({
        action: "get-change-city-subdomain",
        ajax_connect: true,
        city_name,
      }),
    });

    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }
    return await response.text();
  };

  window.getNewsResource = async (resource_id, e) => {
    e.classList.add("loading");

    const response = await fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/text",
      },
      body: JSON.stringify({
        action: "get-news-resource",
        ajax_connect: true,
        resource_id,
      }),
    });

    e.classList.remove("loading");

    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }

    let modal_content = document.getElementById("modal-content");
    if (modal_content) {
      let modal_content_container = modal_content.querySelector(
        "#modal-content-container"
      );
      if (modal_content_container) {
        modal_content_container.innerHTML = await response.text();
        modals.events.open("modal-content");
      }
    }
  };

  window.addOrderReview = async (event) => {
    event.preventDefault();

    let form = event.target;
    form.classList.add("loading");

    const response = await fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        action: "add-order-review",
        ajax_connect: true,
        content: form.content.value,
        order_id: window.order_id, // Устанавливается на кнопке открытия модалки
      }),
    });

    form.classList.remove("loading");

    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }

    let data = await response.json();

    if (data.success) {
      modals.events.closeCurrent();
      notifications.success(data.message);

      form.content.value = null;
    } else {
      notifications.error(data.message);
    }
  };

  window.addTicket = async (event) => {
    event.preventDefault();

    let form = event.target;
    form.classList.add("loading");

    const response = await fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        action: "add-ticket",
        ajax_connect: true,
        subject: form.subject.value,
        content: form.content.value,
      }),
    });

    form.classList.remove("loading");

    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }

    let data = await response.json();

    if (data.success) {
      modals.events.closeCurrent();
      notifications.success(data.message);

      form.subject.value = null;
      form.content.value = null;
    } else {
      notifications.error(data.message);
    }
  };

  window.deleteAccount = async (e) => {
    e.classList.add("loading");

    const response = await fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        action: "delete-account",
        ajax_connect: true,
      }),
    });

    e.classList.remove("loading");

    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }

    let data = await response.json();

    if (data.success) {
      modals.events.closeCurrent();
      notifications.success(data.message);

      setTimeout(() => location.reload(), 1000);
    } else {
      notifications.error(data.message);
    }
  };

  window.changePassword = async (event) => {
    event.preventDefault();

    let form = event.target;
    form.classList.add("loading");

    const response = await fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        action: "change-password",
        ajax_connect: true,
        old_password: form.old_password.value,
        new_password: form.new_password.value,
        new_password_confirm: form.new_password_confirm.value,
      }),
    });
    form.classList.remove("loading");

    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }

    let data = await response.json();

    if (data.success) {
      modals.events.closeCurrent();
      notifications.success(data.message);
    } else {
      notifications.error(data.message);
    }
  };

  window.copyOrder = async (e, order_id) => {
    e.classList.add("loading");

    const response = await fetch("/", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        action: "copy-order",
        order_id: order_id,
        ajax_connect: true,
      }),
    });

    e.classList.remove("loading");

    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }

    let text = await response.text();
    let data;
    try {
      data = text ? JSON.parse(text) : null;
    } catch (e) {
      console.error("Ошибка при парсинге JSON", e);
      data = null;
    }

    if (data?.success !== false) {
      notifications.success("Заказ скопирован");

      setTimeout(() => location.reload(), 1000);
    } else {
      notifications.error(data.message);
    }
  };
}
