export default function initAjax() {
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
}
