{{#if foundItems}}
<article class="module-rendered">
	<h2 class="order-wizard-title">Shipping Method</h2>
	<div class="shipping-method-module">
		{{#each dealers}}
		<div class="shipping-method-dealer-container">
			<h3>{{ dealer }}</h3>

			{{#if itemsGreater}}
			<div class="shipping-method-greater-container">
				<div class="shipping-method-greater-container-left">
					{{#each itemsGreater}}
					<div class="shipping-method-line-item">
						<div class="shipping-method-line-item-image-container">
							<img src="{{image}}" alt="{{thumbnail.altimagetext}}">
						</div>
						<div class="shipping-method-line-item-data-container">
							<div class="shipping-method-line-item-name">
								<span><b>Item:</b> {{ item.displayname }}</span>
							</div>
							<span><b>Weight: </b>{{weight}}</span>
							<div class="shipping-method-line-item-data">
								<span><b>Quantity:</b> {{ quantity }}</span>
								<span><b>UnitPricing:</b> {{ rate }}</span>
								<span><b>Amount:</b> {{ amount }}</span>
								<h4>Options</h4>
								{{#each variantOptions}}
								<span><b>{{ name }}:</b> {{ value }}</span>
								{{/each}}
							</div>
						</div>
					</div>
					{{/each}}
				</div>
				<div class="shipping-method-greater-container-right">
					<div>
						<label>Need Lift Gate?</label>
						<div>
							<input id="yes" type="radio" name="{{dealer}}" data-action="need-lift-gate" {{#if needLiftGate}}checked{{/if}}><label>Yes</label>
							<input id="no" type="radio" name="{{dealer}}" data-action="need-lift-gate" {{#unless  needLiftGate}}checked{{/unless}}><label>No</label>
						</div>
					</div>
					<select name="sippingmethod-selector">
						<option value="-1" data-id="{{dealer}}" subgroup="Greater" selected>
							Select Shipping Method
						</option>
						{{#if needLiftGate}}
							{{#each ../ltlOptionsLiftGate}}
							<option value="{{this}}" data-id="{{../dealer}}" subgroup="Greater" {{#ifEquals this ../GreaterOptionSelected}}selected{{/ifEquals}}>
								{{ this }}
							</option>
							{{/each}}
						{{else}}
							{{#each ../ltlOptions}}
							<option value="{{this}}" data-id="{{../dealer}}" subgroup="Greater" {{#ifEquals this ../GreaterOptionSelected}}selected{{/ifEquals}}>
								{{ this }}
							</option>
							{{/each}}
						{{/if}}
						
					</select>
				</div>
			</div>
			{{/if}}

			{{#if itemsGreater}}
			{{#if itemsLess}}
			<hr />
			{{/if}}
			{{/if}}

			{{#if itemsLess}}
			<div class="shipping-method-less-container">
				<div class="shipping-method-less-container-left">
					{{#each itemsLess}}
					<div class="shipping-method-line-item">
						<div class="shipping-method-line-item-image-container">
							<img src="{{image}}" alt="{{thumbnail.altimagetext}}">
						</div>
						<div class="shipping-method-line-item-data-container">
							<div class="shipping-method-line-item-name">
								<span><b>Item:</b> {{ item.displayname }}</span>
							</div>
							<span><b>Weight: </b>{{weight}}</span>
							<div class="shipping-method-line-item-data">
								<span><b>Quantity:</b> {{ quantity }}</span>
								<span><b>UnitPricing:</b> {{ rate }}</span>
								<span><b>Amount:</b> {{ amount }}</span>
								<h4>Options</h4>
								{{#each variantOptions}}
								<span><b>{{ name }}:</b> {{ value }}</span>
								{{/each}}
							</div>
						</div>
					</div>
					{{/each}}
				</div>
				<div class="shipping-method-less-container-right">
					<select name="sippingmethod-selector">
						<option value="-1" data-id="{{dealer}}" subgroup="Less" selected>
							Select Shipping Method
						</option>
						{{#each ../parcelShippingProviders}}
						<option value="{{this}}" data-id="{{../dealer}}" subgroup="Less" {{#ifEquals this ../LessOptionSelected}}selected{{/ifEquals}}>
							{{ this }}
						</option>
						{{/each}}
					</select>
				</div>
			</div>
			{{/if}}

		</div>
		{{/each}}
	</div>
	{{/if}}
</article>