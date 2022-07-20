<div class="product-collections-container">
  {{#each collectionOptions}}
  <div>
    <h3>{{collectionName}}</h3>
    <div class="product-options-container">
      {{#each options}}
          <div class="product-option  {{#ifEquals selected true}} product-option-selected {{/ifEquals}}" data-action="option-selected" data-id="option-{{value}}">
              <h3>{{value}}</h3>
          </div>
      {{/each}}
    </div>
  </div>
  {{/each}}
</div>
{{#if unitSelected}}
  {{#if variantAbailable}}
    <div class="product-results-container">
      {{#each variantsAvailables}}
        <div class="product-result {{#if selected}} product-result-selected {{/if}}" data-action="variant-selected" data-id="variant-{{id}}">
          <div>
              <p id="product-result-price">Price:</p> 
              <p>{{price}}</p>
          </div>
          <div >
              <p id="product-result-dealer">Dealer:</p>
              <p>{{name}}</p>
          </div>
        </div>
      {{/each}}
    </div>
  {{/if}}
{{/if}}
{{#if variantSelected}}
  {{#if variantSelected.qtySchedule}}
    <div class="qty_schedule_container">
      <table id="qty_schedule_table">
        <thead class="qty_schedule_thead">
            <tr>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody class="qty_schedule_tbody">
            {{#each variantSelected.qtySchedule}}
                <tr>
                  <td>{{quantity}}</td>
                  <td>{{price}}</td>
                </tr>
            {{/each}}
        </tbody>
      </table>
    </div>
  {{/if}}
<div class="seller-data-container">
  <div class="seller-data-group">
      <p>Ships from</p>
      <p id="ships_from">{{variantSelected.address}}</p>
  </div>
  <div class="seller-data-group">
      <p>Sold by</p>
      <p id="sold_by">{{variantSelected.name}}</p>
  </div>
</div>
{{/if}}