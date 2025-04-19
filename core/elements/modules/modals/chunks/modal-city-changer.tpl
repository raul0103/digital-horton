{extends "file:modules/modals/layots/base.tpl"} 

{block 'params'}
  {set $id='modal-city-changer'}
  {set $title="Выбор города"}
{/block}

{block 'body'}
    {include "file:modules/city-changer/chunks/wrapper.tpl"}
{/block}