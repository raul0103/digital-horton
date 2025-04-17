<div class="profile-feedback">
  <button
    class="btn btn-primary big-btn mb-16"
    onclick="modals.events.open('modal-add-ticket')"
  >
    Написать обращение
  </button>

  {set $tickets = "@FILE snippets/getUserTickets.php" | snippet}

  <div class="profile-feedback__row">
    {foreach $tickets as $ticket}
      <div class="profile-feedback__item">
        <div>
          <div class="d-flex justify-between mb-8">
            <span class="fw-700 text-uppercase">Тема обращения</span>
            <span class="fs-15 secondary-gray-color">{$ticket->publishedon | date : 'd.m.Y'}</span>
          </div>
            {$ticket->subject}
        </div>

        <div>
          <div class="fw-700 text-uppercase mb-8">Текст обращения</div>
          {$ticket->content}
        </div>

        {if $ticket->admin_response}
        <div>
          <div class="fw-700 text-uppercase mb-8">Ответ поддержки</div>
          {$ticket->admin_response}
        </div>
        {else}
        <div class="secondary-gray-color">
          <div class="fw-700 text-uppercase mb-8">Ответ поддержки</div>
          <span class="fs-15 secondary-gray-color">Обращение обрабатывается</span>
        </div>
        {/if}

      </div>
    {/foreach}
  </div>
</div>
