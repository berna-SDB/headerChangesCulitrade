	{{#if isMoving}}
		<button class="product-list-control-button-move" data-action="show-productlist-control" data-toggle="showFlyout" type="button">
			{{translate 'Move'}}
		</button>
	{{else}}
		<button class="product-list-control-button-wishlist" data-action="show-productlist-control" data-toggle="showFlyout" type="button" >
            <svg class="svg-wishlist" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 36.001 31.501">
                <path id="Icon_awesome-heart" data-name="Icon awesome-heart" d="M32.505,4.4a9.615,9.615,0,0,0-13.12.956L18,6.785,16.615,5.358A9.615,9.615,0,0,0,3.495,4.4,10.1,10.1,0,0,0,2.8,19.02L16.4,33.068a2.2,2.2,0,0,0,3.185,0L33.195,19.02A10.09,10.09,0,0,0,32.505,4.4Z" transform="translate(0.001 -2.248)" />
              </svg>	{{translate 'Add to Wishlist'}}
		</button>
	{{/if}}
	<div class="product-list-control-flyout {{#if isMoving}}product-list-control-move{{/if}}" data-type="productlist-control" {{#if showControl}}style="display: block"{{/if}} data-dropdown-content>

	{{#unless isMoving}}
		<div data-confirm-message=""></div>
	{{/unless}}

	<h5 class="product-list-control-flyout-title">
		{{#if isMoving}}
			{{translate 'Add to'}}
			{{#if hasProductLists}}
				({{productListLength}}
				{{#if hasOneProductList}}
					{{translate 'list'}})
				{{else}}
					{{translate 'lists'}})
				{{/if}}
			{{/if}}:
		{{else}}
			{{translate 'Add to'}}
		{{/if}}
	</h5>
	<ul class="product-list-control-flyout-product-lists">
		{{#if isEmpty}}
			<li class="product-list-control-nolists-messages">
				{{#if isMoving}}
					{{translate 'There are no other lists'}}
				{{else}}
					{{translate 'There are no lists'}}
				{{/if}}
			</li>
		{{/if}}
	</ul>
	<h5 class="product-list-control-flyout-title">{{translate 'Or: '}}</h5>
	<div class="product-list-control-new-product-list-container" data-type="new-item-container"></div>
</div>




{{!----
Use the following context variables when customizing this template: 
	
	isMoving (Boolean)
	showControl (Boolean)
	isEmpty (Boolean)
	hasOneProductList (Boolean)
	hasProductLists (Boolean)
	productListLength (Number)

----}}
