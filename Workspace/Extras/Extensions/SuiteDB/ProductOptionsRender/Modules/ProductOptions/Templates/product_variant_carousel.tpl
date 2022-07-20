{{#if variantToShow}}
<section class="item-variants">
  <h2 class="center">From other sellers</h2>
  <div class="item-variants-carousel">
    {{#each variantToShow }}
        <div class="carousel-variant">
            <div class="variant-seller-placard"></div>
            {{#if optionSelected}}
            <p><b class="variant-seller-text-organe" style="font-size: 16px;">{{amount}} </b><span style="font-size: 12px;">({{rate}} / count)</span></p>
            <p>{{optionSelected.quantity}} units</p>
            {{else}}
              
            {{/if}}
            <div class="variant-seller-options">
              {{#each options}}
                <div class="variant-seller-option {{#if selected}}variant-seller-option-selected{{/if}}" data-id="{{../id}}-{{unitName}}">
                  <p>{{price}} for {{quantity}}</p>
                </div>
              {{/each}}
            </div>
            <p><b>soldBy: </b><span class="variant-seller-text-organe">{{soldBy}}</span></p>
            <a href="#" class="variant-seller-text-organe">Learn more</a>
            <button class="variant-seller-add-to-cart" data-id="{{id}}">Add to cart</button>
        </div>
    {{/each}}
  </div>
</section>
{{/if}}
