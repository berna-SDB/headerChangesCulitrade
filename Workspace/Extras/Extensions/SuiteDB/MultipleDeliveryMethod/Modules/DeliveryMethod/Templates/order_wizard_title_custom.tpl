{{#unlessEquals title 'Delivery Method'}}
	<{{tag}} class="order-wizard-title" {{attributes}} data-id="{{title}}">
		{{title}}
	</{{tag}}>
	{{#if showDetails}}
		<p>
			{{details}}
		</p>
	{{/if}}
{{/unlessEquals }}



{{!----
Use the following context variables when customizing this template: 
	
	tag (String)
	attributes (String)
	details (String)
	title (String)
	showDetails (Boolean)

----}}
