<div class="profile-feedback">


  {set $tickets = "@FILE snippets/getUserTickets.php" | snippet}

  {if $tickets}
  <button
    class="btn btn-primary big-btn mb-16"
    onclick="modals.events.open('modal-add-ticket')"
  >
    Написать обращение
  </button>

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
  {else}
  <div class="empty-page-block">
    <svg width="70" height="70" viewBox="0 0 70 70" fill="none" xmlns="http://www.w3.org/2000/svg">
      <rect width="70" height="70" rx="35" fill="white"/>
      <path d="M25 25H42.5M25 35H35M34.3478 44.5652L23.913 55V44.5652H20C17.2386 44.5652 15 42.3266 15 39.5652V20C15 17.2386 17.2386 15 20 15H50C52.7614 15 55 17.2386 55 20V39.5652C55 42.3266 52.7614 44.5652 50 44.5652H34.3478Z" stroke="#5779BC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    <div class="fs-48-33 font-candara fw-700">Вы пока не оставляли обращений</div>
    <button
      class="btn btn-primary big-btn mb-16"
      onclick="modals.events.open('modal-add-ticket')"
    >
      Написать обращение
    </button>
  </div>
  {/if}
</div>
