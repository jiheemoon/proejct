if (typeof jQuery === "undefined") {
	throw new Error("jQuery plugins need to be before this file");
}

$.MOON = {};
$.MOON.options = {
	colors: {
		red: '#F44336',
		pink: '#E91E63',
		purple: '#9C27B0',
		deepPurple: '#673AB7',
		indigo: '#3F51B5',
		blue: '#2196F3',
		lightBlue: '#03A9F4',
		cyan: '#00BCD4',
		teal: '#009688',
		green: '#4CAF50',
		lightGreen: '#8BC34A',
		lime: '#CDDC39',
		yellow: '#ffe821',
		amber: '#FFC107',
		orange: '#FF9800',
		deepOrange: '#FF5722',
		brown: '#795548',
		grey: '#9E9E9E',
		blueGrey: '#607D8B',
		black: '#000000',
		white: '#ffffff'
	},
	leftSideBar: {
		scrollColor: 'rgba(0,0,0,0.5)',
		scrollWidth: '4px',
		scrollAlwaysVisible: false,
		scrollBorderRadius: '0',
		scrollRailBorderRadius: '0',
		scrollActiveItemWhenPageLoad: true,
		breakpointWidth: 1170
	},
	dropdownMenu: {
		effectIn: 'fadeIn',
		effectOut: 'fadeOut'
	}
}

/* Left Sidebar - Function =================================================================================================
*  You can manage the left sidebar menu options
*  
*/
$.MOON.leftSideBar = {
	init: function(ctxPath, ctlPath) {
		
		const searchParams = new URLSearchParams(location.search);
		$.LOGGER.debug(searchParams);
		const menuUrl = searchParams.get('menuUrl');
		$.LOGGER.debug(menuUrl);
		
		ctxPath = ctxPath || '';
		// MenuTree
		$.MOON.json.post({
			url: ctxPath + '/MenuTree.do',
			data: {
				menuUrl: menuUrl//ctlPath
			},
			async: false,
			done: function(data) {
				var menu = data || [], naviMenu = [], prevStep = 1;
				var ul = $('#leftSideMenuBar');
				var mList = ul.parent();
				ul.empty();
				$.each(menu, function(i, o) {
					var step = o.menuStep || 1;
					if ('Y' == o.isMenu) naviMenu = o;
					if ('Y' == o.isActive) naviMenu.fullPath = o.fullPath;
					if (1 >= step) {
						//$.LOGGER.debug(o.menuId);
						var li = $('<li />').attr('id', o.menuId).appendTo(ul);
						if ('Y' == o.isActive) li.addClass('active');
						var atag = $('<a />').attr('href', !isEmpty(o.menuUrl) ? ctxPath + '/material/menu?menuUrl=' + o.menuUrl : 'javascript:void(0);').appendTo(li);
						if ('Y' != o.isLeaf) atag.addClass('menu-toggle');
						var itag = $('<i />').addClass('material-icons md-24').text(o.menuIcon || 'apps').appendTo(atag);
						var span = $('<span />').text(o.menuNm).appendTo(atag);
					} else {
						var li = $('#' + o.menuPid);
						//$.LOGGER.debug(o.menuPid);
						//$.LOGGER.debug(li);
						if (li) {
							var cUl = li.children('.ml-menu')[0];
							if (!cUl) cUl = $('<ul />').addClass('ml-menu').appendTo(li);
							//$.LOGGER.debug(cUl);
							var cLi = $('<li />').attr('id', o.menuId).appendTo(cUl);
							if ('Y' == o.isActive) cLi.addClass('active');
							if ('Y' == o.isLeaf) {
								var atag = $('<a />').text(o.menuNm).attr('href', !isEmpty(o.menuUrl) ? ctxPath + '/material/menu?menuUrl=' + o.menuUrl : 'javascript:void(0);').appendTo(cLi);
							} else {
								var atag = $('<a />').addClass('menu-toggle').attr('href', !isEmpty(o.menuUrl) ? ctxPath + '/material/menu?menuUrl=' + o.menuUrl : 'javascript:void(0);').appendTo(cLi);
								//var itag = $('<i />').addClass('material-icons').text('home').appendTo(atag);
								var span = $('<span />').text(o.menuNm).appendTo(atag);
							}
						}
					}
				});
				//---------------------------------------------------------------
				//<div class="row">
				//    <div class="col-sm-12">
				//        <ol class="breadcrumb breadcrumb-bg-black">
				//            <li><a href="javascript:void(0);">Home</a></li>
				//            <li><a href="javascript:void(0);">Library</a></li>
				//            <li class="active">Data</li>
				//        </ol>
				//    </div>
				//</div>
				//---------------------------------------------------------------
				var ol = $('#breadcrumb');
				ol.addClass("breadcrumb");
				ol.empty();

				var li = $('<li />').appendTo(ol);
				var atag = $('<a />').attr('href', ctxPath + '/material').text(' Home').appendTo(li);
				var itag = $('<i />').addClass('material-icons').text('home').prependTo(atag);

				naviMenu.fullPath = naviMenu.fullPath || '';
				var txtList = naviMenu.fullPath.split('>');
				for (var i in txtList) {
					if (txtList[i] && 0 < txtList[i].length) {
						var li = $('<li />').text(txtList[i]).appendTo(ol);
					}
				}
			}
		});
		
		$.MOON.leftSideBar.activate();
	},
	activate: function() {
		var _this = this;
		var $body = $('body');
		var $overlay = $('.overlay');

		//Close sidebar
		$(window).click(function(e) {
			var $target = $(e.target);
			if (e.target.nodeName.toLowerCase() === 'i') { $target = $(e.target).parent(); }

			if (!$target.hasClass('bars') && _this.isOpen() && $target.parents('#leftsidebar').length === 0) {
				if (!$target.hasClass('js-right-sidebar')) $overlay.fadeOut();
				$body.removeClass('overlay-open');
			}
		});

		$.each($('.menu-toggle.toggled'), function(i, val) {
			$(val).next().slideToggle(0);
		});

		//When page load
		$.each($('.menu .list li.active'), function(i, val) {
			var $activeAnchors = $(val).find('a:eq(0)');

			$activeAnchors.addClass('toggled');
			$activeAnchors.next().show();
		});

		//Collapse or Expand Menu
		$('.menu-toggle').on('click', function(e) {
			var $this = $(this);
			var $content = $this.next();

			if ($($this.parents('ul')[0]).hasClass('list')) {
				var $not = $(e.target).hasClass('menu-toggle') ? e.target : $(e.target).parents('.menu-toggle');

				$.each($('.menu-toggle.toggled').not($not).next(), function(i, val) {
					if ($(val).is(':visible')) {
						$(val).prev().toggleClass('toggled');
						$(val).slideUp();
					}
				});
			}

			$this.toggleClass('toggled');
			$content.slideToggle(320);
		});

		//Set menu height
		_this.setMenuHeight(true);
		_this.checkStatusForResize(true);
		$(window).resize(function() {
			_this.setMenuHeight(false);
			_this.checkStatusForResize(false);
		});

		//Set Waves
		Waves.attach('.menu .list a', ['waves-block']);
		Waves.init();
	},
	setMenuHeight: function(isFirstTime) {
		if (typeof $.fn.slimScroll != 'undefined') {
			var configs = $.MOON.options.leftSideBar;
			var height = ($(window).height() - ($('.legal').outerHeight() + $('.user-info').outerHeight() + $('.navbar').innerHeight()));
			var $el = $('.list');

			if (!isFirstTime) {
				$el.slimscroll({
					destroy: true
				});
			}

			$el.slimscroll({
				height: height + "px",
				color: configs.scrollColor,
				size: configs.scrollWidth,
				alwaysVisible: configs.scrollAlwaysVisible,
				borderRadius: configs.scrollBorderRadius,
				railBorderRadius: configs.scrollRailBorderRadius
			});

			//Scroll active menu item when page load, if option set = true
			if ($.MOON.options.leftSideBar.scrollActiveItemWhenPageLoad) {
				var item = $('.menu .list li.active')[0];
				if (item) {
					var activeItemOffsetTop = item.offsetTop;
					if (activeItemOffsetTop > 150) $el.slimscroll({ scrollTo: activeItemOffsetTop + 'px' });
				}
			}
		}
	},
	checkStatusForResize: function(firstTime) {
		var $body = $('body');
		var $openCloseBar = $('.navbar .navbar-header .bars');
		var width = $body.width();

		if (firstTime) {
			$body.find('.content, .sidebar').addClass('no-animate').delay(1000).queue(function() {
				$(this).removeClass('no-animate').dequeue();
			});
		}

		if (width < $.MOON.options.leftSideBar.breakpointWidth) {
			$body.addClass('ls-closed');
			$openCloseBar.fadeIn();
		}
		else {
			$body.removeClass('ls-closed');
			$openCloseBar.fadeOut();
		}
	},
	isOpen: function() {
		return $('body').hasClass('overlay-open');
	}
};
//==========================================================================================================================

/* Right Sidebar - Function ================================================================================================
*  You can manage the right sidebar menu options
*  
*/
$.MOON.rightSideBar = {
	activate: function() {
		var _this = this;
		var $sidebar = $('#rightsidebar');
		var $overlay = $('.overlay');

		//Close sidebar
		$(window).click(function(e) {
			var $target = $(e.target);
			if (e.target.nodeName.toLowerCase() === 'i') { $target = $(e.target).parent(); }

			if (!$target.hasClass('js-right-sidebar') && _this.isOpen() && $target.parents('#rightsidebar').length === 0) {
				if (!$target.hasClass('bars')) $overlay.fadeOut();
				$sidebar.removeClass('open');
			}
		});

		$('.js-right-sidebar').on('click', function() {
			$sidebar.toggleClass('open');
			if (_this.isOpen()) { $overlay.fadeIn(); } else { $overlay.fadeOut(); }
		});
	},
	isOpen: function() {
		return $('.right-sidebar').hasClass('open');
	}
}
//==========================================================================================================================

/* Searchbar - Function ================================================================================================
*  You can manage the search bar
*  
*/
var $searchBar = $('.search-bar');
$.MOON.search = {
	activate: function() {
		var _this = this;

		//Search button click event
		$('.js-search').on('click', function() {
			_this.showSearchBar();
		});

		//Close search click event
		$searchBar.find('.close-search').on('click', function() {
			_this.hideSearchBar();
		});

		//ESC key on pressed
		$searchBar.find('input[type="text"]').on('keyup', function(e) {
			if (e.keyCode == 27) {
				_this.hideSearchBar();
			}
		});
	},
	showSearchBar: function() {
		$searchBar.addClass('open');
		$searchBar.find('input[type="text"]').focus();
	},
	hideSearchBar: function() {
		$searchBar.removeClass('open');
		$searchBar.find('input[type="text"]').val('');
	}
}
//==========================================================================================================================

/* Navbar - Function =======================================================================================================
*  You can manage the navbar
*  
*/
$.MOON.navbar = {
	activate: function() {
		var $body = $('body');
		var $overlay = $('.overlay');

		//Open left sidebar panel
		$('.bars').on('click', function() {
			$body.toggleClass('overlay-open');
			if ($body.hasClass('overlay-open')) { $overlay.fadeIn(); } else { $overlay.fadeOut(); }
		});

		//Close collapse bar on click event
		$('.nav [data-close="true"]').on('click', function() {
			var isVisible = $('.navbar-toggle').is(':visible');
			var $navbarCollapse = $('.navbar-collapse');

			if (isVisible) {
				$navbarCollapse.slideUp(function() {
					$navbarCollapse.removeClass('in').removeAttr('style');
				});
			}
		});
	}
}
//==========================================================================================================================

/* Input - Function ========================================================================================================
*  You can manage the inputs(also textareas) with name of class 'form-control'
*  
*/
$.MOON.input = {
	activate: function($parentSelector) {
		$parentSelector = $parentSelector || $('body');

		//On focus event
		$parentSelector.find('.form-control').focus(function() {
			$(this).closest('.form-line').addClass('focused');
		});

		//On focusout event
		$parentSelector.find('.form-control').focusout(function() {
			var $this = $(this);
			if ($this.parents('.form-group').hasClass('form-float')) {
				if ($this.val() == '') { $this.parents('.form-line').removeClass('focused'); }
			}
			else {
				$this.parents('.form-line').removeClass('focused');
			}
		});

		//On label click
		$parentSelector.on('click', '.form-float .form-line .form-label', function() {
			$(this).parent().find('input').focus();
		});

		//Not blank form
		$parentSelector.find('.form-control').each(function() {
			if ($(this).val() !== '') {
				$(this).parents('.form-line').addClass('focused');
			}
		});
	}
}
//==========================================================================================================================

/* Form - Select - Function ================================================================================================
*  You can manage the 'select' of form elements
*  
*/
$.MOON.select = {
	activate: function() {
		if ($.fn.selectpicker) { $('select:not(.ms)').selectpicker(); }
	}
}
//==========================================================================================================================

/* DropdownMenu - Function =================================================================================================
*  You can manage the dropdown menu
*  
*/

$.MOON.dropdownMenu = {
	activate: function() {
		var _this = this;

		$('.dropdown, .dropup, .btn-group').on({
			"show.bs.dropdown": function() {
				var dropdown = _this.dropdownEffect(this);
				_this.dropdownEffectStart(dropdown, dropdown.effectIn);
			},
			"shown.bs.dropdown": function() {
				var dropdown = _this.dropdownEffect(this);
				if (dropdown.effectIn && dropdown.effectOut) {
					_this.dropdownEffectEnd(dropdown, function() { });
				}
			},
			"hide.bs.dropdown": function(e) {
				var dropdown = _this.dropdownEffect(this);
				if (dropdown.effectOut) {
					e.preventDefault();
					_this.dropdownEffectStart(dropdown, dropdown.effectOut);
					_this.dropdownEffectEnd(dropdown, function() {
						dropdown.dropdown.removeClass('open');
					});
				}
			}
		});

		//Set Waves
		Waves.attach('.dropdown-menu li a', ['waves-block']);
		Waves.init();
	},
	dropdownEffect: function(target) {
		var effectIn = $.MOON.options.dropdownMenu.effectIn, effectOut = $.MOON.options.dropdownMenu.effectOut;
		var dropdown = $(target), dropdownMenu = $('.dropdown-menu', target);

		if (dropdown.length > 0) {
			var udEffectIn = dropdown.data('effect-in');
			var udEffectOut = dropdown.data('effect-out');
			if (udEffectIn !== undefined) { effectIn = udEffectIn; }
			if (udEffectOut !== undefined) { effectOut = udEffectOut; }
		}

		return {
			target: target,
			dropdown: dropdown,
			dropdownMenu: dropdownMenu,
			effectIn: effectIn,
			effectOut: effectOut
		};
	},
	dropdownEffectStart: function(data, effectToStart) {
		if (effectToStart) {
			data.dropdown.addClass('dropdown-animating');
			data.dropdownMenu.addClass('animated dropdown-animated');
			data.dropdownMenu.addClass(effectToStart);
		}
	},
	dropdownEffectEnd: function(data, callback) {
		var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
		data.dropdown.one(animationEnd, function() {
			data.dropdown.removeClass('dropdown-animating');
			data.dropdownMenu.removeClass('animated dropdown-animated');
			data.dropdownMenu.removeClass(data.effectIn);
			data.dropdownMenu.removeClass(data.effectOut);

			if (typeof callback == 'function') {
				callback();
			}
		});
	}
}
//==========================================================================================================================

/* Browser - Function ======================================================================================================
*  You can manage browser
*  
*/
var edge = 'Microsoft Edge';
var ie10 = 'Internet Explorer 10';
var ie11 = 'Internet Explorer 11';
var opera = 'Opera';
var firefox = 'Mozilla Firefox';
var chrome = 'Google Chrome';
var safari = 'Safari';

$.MOON.browser = {
	activate: function() {
		var _this = this;
		var className = _this.getClassName();

		if (className !== '') $('html').addClass(_this.getClassName());
	},
	getBrowser: function() {
		var userAgent = navigator.userAgent.toLowerCase();

		if (/edge/i.test(userAgent)) {
			return edge;
		} else if (/rv:11/i.test(userAgent)) {
			return ie11;
		} else if (/msie 10/i.test(userAgent)) {
			return ie10;
		} else if (/opr/i.test(userAgent)) {
			return opera;
		} else if (/chrome/i.test(userAgent)) {
			return chrome;
		} else if (/firefox/i.test(userAgent)) {
			return firefox;
		} else if (!!navigator.userAgent.match(/Version\/[\d\.]+.*Safari/)) {
			return safari;
		}

		return undefined;
	},
	getClassName: function() {
		var browser = this.getBrowser();

		if (browser === edge) {
			return 'edge';
		} else if (browser === ie11) {
			return 'ie11';
		} else if (browser === ie10) {
			return 'ie10';
		} else if (browser === opera) {
			return 'opera';
		} else if (browser === chrome) {
			return 'chrome';
		} else if (browser === firefox) {
			return 'firefox';
		} else if (browser === safari) {
			return 'safari';
		} else {
			return '';
		}
	}
}

$.MOON.json = {

	load: function(o) {
		o = o || {};
		var id = o.id;
		var url = o.url;
		var data = o.data || {};
		o.manualUnloading = (typeof o.manualUnloading === 'boolean') ? o.manualUnloading : false;
		try {
			// id 입력 여부 확인
			if (!id) {
				alert('MOON.json.load option에 id가 없습니다.');
				return;
			}
			// url 입력여부 확인
			if (!url) {
				alert('MOON.json.load option에 url이 없습니다.');
				return;
			}
			// 입력된 id에 해당하는 element 존재여부 확인
			var element = $('#' + id);
			if (!element.length) {
				alert('MOON.json.load 해당 id element가 없습니다.');
				return;
			}

			//			$.MOON.page.loading(true);

			// jqXHR: XMLHttpRequest
			element.load(url, data, function(response, status, jqXHR) {
				//
				//$.LOGGER.debug('MOON.json.load statusText', status);
				//$.LOGGER.debug('MOON.json.load statusCode', jqXHR.status);
				if ('error' == status && $.isFunction(o.fail)) {
					o.fail.call(this, status, jqXHR);
					element.empty(); // 자식노드제거
					$.LOGGER.debug('MOON.json.load error', jqXHR.status);
				}
				if ($.isFunction(o.done)) o.done.call(this, status, jqXHR);
				//
				if (!o.manualUnloading) {
					//					$.MOON.page.loading(false);
				}
			});

		} catch (e) {
			if (typeof window.console !== 'undefined' && typeof window.console.log === 'function') {
				window.console.log('MOON.json.load Exception.', e);
			}
			//			$.MOON.page.loading(false);
		}
	},
	/**
	 * @param o = {
	 *     url: 요청 URL,
	 *     data: 요청 parameters,
	 *     async: 비동기 동작 여부,
	 *     spinner: progressing 이미지 표시 여부,
	 *     done: 성공 callback function,
	 *     fail: HTTP status 500 오류 callback function,
	 *     always: callback function
	 * }
	 */
	post: function(o) {
		o = o || {};
		if (!o.url) {
			alert('MOON.json.post 요청 URL이 없습니다.');
			return;
		}
		o.async = (typeof o.async === 'boolean') ? o.async : true;
		var isJsonRequest = $.trim(o.contentType).toLowerCase() === 'json';

		//		$.MOON.page.loading(true);

		return $.post({
			url: o.url,
			processData: isJsonRequest ? false : true,
			data: isJsonRequest ? JSON.stringify(o.data || {}) : (o.data || ''),
			contentType: isJsonRequest ? 'application/json' : 'application/x-www-form-urlencoded; charset=UTF-8',
			dataType: 'json',
			async: o.async,
			beforeSend: function(xhr) {
				return $.isFunction(o.beforeSend) ? o.beforeSend.call(this) : true;
			}
		})
		.done(function(data, textStatus, jqXHR) {
			//$.LOGGER.debug('MOON.json.post done ' + jqXHR.status, o.url);
			if ($.isFunction(o.done)) o.done.call(this, data, textStatus, jqXHR);
		})
		.fail(function(jqXHR, textStatus, errorThrown) {
			$.LOGGER.debug('MOON.json.post fail', { url: o.url, textStatus: textStatus, errorThrown: errorThrown });
			if ($.isFunction(o.fail)) o.fail.call(this, jqXHR, textStatus, errorThrown);
		})
		.always(function() {
			if ($.isFunction(o.always)) o.always.apply(this);
			//				setTimeout(function() {
			//					$.MOON.page.loading(false);
			//				}, 500);
		});
	},
	file: function(o) {
		o = o || {};
		if (!o.url) {
			alert('MOON.json.file 요청 URL이 없습니다.');
			return;
		}
		if (!o.data) {
			alert('MOON.json.file 요청 DATA가 없습니다.');
			return;
		}

		//		$.MOON.page.loading(true);

		return $.ajax({
			type: "POST",
			enctype: 'multipart/form-data',
			url: o.url,
			data: o.data || {},
			processData: false,
			contentType: false,
			cache: false,
			async: (typeof o.async === 'boolean') ? o.async : false,
			beforeSend: function(xhr) {
				return $.isFunction(o.beforeSend) ? o.beforeSend.call(this) : true;
			}
		})
			.done(function(data, textStatus, jqXHR) {
				//$.LOGGER.debug('MOON.json.file data ', data);
				//$.LOGGER.debug('MOON.json.file done ' + jqXHR.status, o.url);
				if ($.isFunction(o.done)) o.done.call(this, data, textStatus, jqXHR);
			})
			.fail(function(jqXHR, textStatus, errorThrown) {
				$.LOGGER.debug('MOON.json.file fail', { url: o.url, textStatus: textStatus, errorThrown: errorThrown });
				if ($.isFunction(o.fail)) o.fail.call(this, jqXHR, textStatus, errorThrown);
			})
			.always(function() {
				if ($.isFunction(o.always)) o.always.apply(this);
				//				setTimeout(function() {
				//					$.MOON.page.loading(false);
				//				}, 500);
			});
	},
	/**
	 * 세션체크
	 */
	session: function(ctxPath) {
		var status = 200;
		ctxPath = ctxPath || '/';
		$.ajax({
			type: "POST",
			enctype: 'application/json',
			url: ctxPath,
			async: false,
			beforeSend: function(xhr) {
				xhr.setRequestHeader('AJAX', true);
			}
		})
			.done(function(data, textStatus, jqXHR) {
				$.LOGGER.debug('MOON.json.session done', jqXHR.status);
			})
			.fail(function(jqXHR, textStatus, errorThrown) {
				$.LOGGER.debug('MOON.json.session fail', { textStatus: textStatus, errorThrown: errorThrown });
			})
			.always(function() {
				//
			});
		if (999 == status) {
			$.MOON.popup.loginShow({ ctxPath: ctxPath });
		}
		return (999 != status);
	}
}
//==========================================================================================================================

$(function() {
	$.MOON.browser.activate();
	//	$.MOON.leftSideBar.activate();
	$.MOON.rightSideBar.activate();
	$.MOON.navbar.activate();
	$.MOON.dropdownMenu.activate();
	$.MOON.input.activate();
	$.MOON.select.activate();
	$.MOON.search.activate();

	setTimeout(function() { $('.page-loader-wrapper').fadeOut(); }, 50);
});