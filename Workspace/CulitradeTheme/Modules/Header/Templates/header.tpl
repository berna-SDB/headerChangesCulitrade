<div class="header-message" data-view="Message.Placeholder"></div>

<div class="header-main-wrapper {{#if isStandalone}}header-main-wrapper-standalone{{/if}}">
	{{#unless isStandalone}}
	<div class="header-subheader">
		<div class="header-subheader-container">
			<div class="header-sidebar-toggle-wrapper">
				<button class="header-sidebar-toggle" data-action="header-sidebar-show">
					<i class="header-sidebar-toggle-icon"></i>
				</button>
			</div>
			{{!-- <ul class="header-subheader-options">
				{{#if showLanguagesOrCurrencies}}
				<li class="header-subheader-settings">
					<a href="#" class="header-subheader-settings-link" data-toggle="dropdown"
						title="{{translate 'Settings'}}">
						<i class="header-menu-settings-icon"></i>
						<i class="header-menu-settings-carret"></i>
					</a>
					<div class="header-menu-settings-dropdown">
						<h5 class="header-menu-settings-dropdown-title">{{translate 'Site Settings'}}</h5>
						{{#if showLanguages}}
						<div data-view="Global.HostSelector"></div>
						{{/if}}
						{{#if showCurrencies}}
						<div data-view="Global.CurrencySelector"></div>
						{{/if}}
					</div>
				</li>
				{{/if}}
				<li class="header-menu-profile" data-view="StoreLocatorHeaderLink"></li>
				<li class="header-menu-profile"><a href="#"><span class="contact-us-link">Contact Us</span> </a> </li>
				<!-- <li data-view="RequestQuoteWizardHeaderLink"></li> -->
				<!-- <li data-view="QuickOrderHeaderLink"></li> -->
				<li data-view="Header.Profile"></li>

			</ul> --}}
		</div>
	</div>
	{{/unless}}

	<nav class="header-main-nav">
		<div id="banner-header-top" class="content-banner banner-header-top" data-cms-area="header_banner_top"
			data-cms-area-filters="global"></div>
		<div class="header-sidebar-toggle-wrapper">
			<button class="header-sidebar-toggle" data-action="header-sidebar-show">
				<i class="header-sidebar-toggle-icon"></i>
			</button>
		</div>
		<div class="header-content">
			<div class="header-logo-wrapper">
				<div data-view="Header.Logo"></div>
			</div>
			<div class="searchindesktop" data-view="SiteSearch"></div>
			<div class="header-right-menu">
				{{#unless isStandalone}}
				<div class="header-menu-locator-mobile" data-view="StoreLocatorHeaderLink"></div>
				<!-- 	<div class="header-menu-searchmobile" data-view="SiteSearch.Button"></div> -->
				<div class="header-menu-cart">
					<div class="header-menu-cart-account">
						{{!-- TODO BER delets Commnets --}}
						{{!-- <svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" width="36.001" height="31.501"
							viewBox="0 0 36.001 31.501">
							<path id="Icon_awesome-heart" data-name="Icon awesome-heart"
								d="M32.505,4.4a9.615,9.615,0,0,0-13.12.956L18,6.785,16.615,5.358A9.615,9.615,0,0,0,3.495,4.4,10.1,10.1,0,0,0,2.8,19.02L16.4,33.068a2.2,2.2,0,0,0,3.185,0L33.195,19.02A10.09,10.09,0,0,0,32.505,4.4Z"
								transform="translate(0.001 -2.248)" />
						</svg> --}}
						<svg id="Icon_awesome-account" data-name="Icon awesome-account"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="20" height="20">
							<path
								d="M224 256c70.7 0 128-57.31 128-128s-57.3-128-128-128C153.3 0 96 57.31 96 128S153.3 256 224 256zM274.7 304H173.3C77.61 304 0 381.6 0 477.3c0 19.14 15.52 34.67 34.66 34.67h378.7C432.5 512 448 496.5 448 477.3C448 381.6 370.4 304 274.7 304z" />
						</svg>
						<a class="   " href="#" data-hashtag="#request-a-quote" data-touchpoint="customercenter"
							title="Request a Quote">Account</a>
						{{!-- <a></a> --}}
					</div>
					<div class=" header-menu-cart-dropdown">
						<div data-view="Header.MiniCart"></div>
					</div>
				</div>
				{{/unless}}
			</div>
		</div>

		<div id="banner-header-bottom" class="content-banner banner-header-bottom" data-cms-area="header_banner_bottom"
			data-cms-area-filters="global"></div>
	</nav>

</div>

<div class="header-sidebar-overlay" data-action="header-sidebar-hide"></div>
<div class="header-secondary-wrapper{{#if isStandalone}} header-secondary-wrapper-standalone{{/if}}"
	data-view="Header.Menu" data-phone-template="header_sidebar" data-tablet-template="header_sidebar"></div>
<!-- 
  <div class="search-mobile" data-view="SiteSearch"></div>   -->



{{!----
Use the following context variables when customizing this template:

profileModel (Object)
profileModel.addresses (Array)
profileModel.addresses.0 (Array)
profileModel.creditcards (Array)
profileModel.firstname (String)
profileModel.paymentterms (undefined)
profileModel.phoneinfo (undefined)
profileModel.middlename (String)
profileModel.vatregistration (undefined)
profileModel.creditholdoverride (undefined)
profileModel.lastname (String)
profileModel.internalid (String)
profileModel.addressbook (undefined)
profileModel.campaignsubscriptions (Array)
profileModel.isperson (undefined)
profileModel.balance (undefined)
profileModel.companyname (undefined)
profileModel.name (undefined)
profileModel.emailsubscribe (String)
profileModel.creditlimit (undefined)
profileModel.email (String)
profileModel.isLoggedIn (String)
profileModel.isRecognized (String)
profileModel.isGuest (String)
profileModel.priceLevel (String)
profileModel.subsidiary (String)
profileModel.language (String)
profileModel.currency (Object)
profileModel.currency.internalid (String)
profileModel.currency.symbol (String)
profileModel.currency.currencyname (String)
profileModel.currency.code (String)
profileModel.currency.precision (Number)
showLanguages (Boolean)
showCurrencies (Boolean)
showLanguagesOrCurrencies (Boolean)
showLanguagesAndCurrencies (Boolean)
isHomeTouchpoint (Boolean)
cartTouchPoint (String)

----}}