/*
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
*/

(function($) {

	var	$window = $(window),
		$body = $('body');

	// Breakpoints.
		breakpoints({
			xlarge:   [ '1281px',  '1680px' ],
			large:    [ '981px',   '1280px' ],
			medium:   [ '737px',   '980px'  ],
			small:    [ '481px',   '736px'  ],
			xsmall:   [ '361px',   '480px'  ],
			xxsmall:  [ null,      '360px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Menu.
		$('#menu')
			.append('<a href="#menu" class="close"></a>')
			.appendTo($body)
			.panel({
				visibleClass: 'is-menu-visible',
				target: $body,
				delay: 500,
				hideOnClick: true,
				hideOnSwipe: true,
				resetScroll: true,
				resetForms: true,
				side: 'right'
			});

	// Banner.
		var $banner = $('#banner'),
			$header = $('#header');

		if ($banner.length > 0) {

			// IE: Height fix.
				if (browser.name == 'ie') {

					breakpoints.on('>small', function() {
						$banner.css('height', '100vh');
					});

					breakpoints.on('<=small', function() {
						$banner.css('height', '');
					});

				}

			// More button.
				$banner.find('.more')
					.addClass('scrolly');

			// Header.
				$header
					.addClass('with-banner')
					.addClass('alt');

				$banner.scrollex({
					mode: 'top',
					top: '-100vh',
					bottom: 10,
					enter: function() { $header.addClass('alt'); },
					leave: function() { $header.removeClass('alt'); }
				});

		}

	// Spotlights.
		var $spotlight = $('.spotlight');

		if ($spotlight.length > 0
		&&	browser.canUse('transition'))
			$spotlight.each(function() {

				var $this = $(this);

				$this.scrollex({
					mode: 'middle',
					top: '-10vh',
					bottom: '-10vh',
					initialize: function() { $this.addClass('inactive'); },
					enter: function() { $this.removeClass('inactive'); }
				});

			});

	// Features.
		var $features = $('.features');

		if ($features.length > 0
		&&	browser.canUse('transition'))
			$features.each(function() {

				var $this = $(this);

				$this.scrollex({
					mode: 'middle',
					top: '-20vh',
					bottom: '-20vh',
					initialize: function() { $this.addClass('inactive'); },
					enter: function() { $this.removeClass('inactive'); }
				});

			});

	// Scrolly.
		$('.scrolly').scrolly();

	// Initial scroll.
		$window.on('load', function() {
			$window.trigger('scroll');
		});

})(jQuery);