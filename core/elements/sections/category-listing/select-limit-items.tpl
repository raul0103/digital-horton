<div class="sortby-controls__item font-candara">
  <div class="sortby-controls__item-select">
    <div class="custom-select">
      <div data-custom-select-btn="items-limit">
        Показывать по <input type="text" value="24" readonly />

        <select name="mse_limit" id="mse2_limit" style="display: none;">
            {foreach [24, 48, 98] as $v}
                <option value="{$v}"{if $limit == $v} selected{/if}>{$v}</option>
            {/foreach}
        </select>
      </div>

      <div
        data-custom-select-element="items-limit"
        class="custom-select__dropdown hidden"
      >
        <div class="custom-select__dropdown-group">
          <div class="custom-select__dropdown-item" data-custom-select-item="">
            24
          </div>
          <div class="custom-select__dropdown-item" data-custom-select-item="">
            48
          </div>
          <div class="custom-select__dropdown-item" data-custom-select-item="">
            98
          </div>
        </div>
      </div>
    </div>


  </div>
</div>
