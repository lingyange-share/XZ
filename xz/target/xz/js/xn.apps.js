var X = {};
X.hook = function() {
	var pre_init_str = 'xn_init_hook_';
	for ( var h in window) {
		if (0 != h.indexOf(pre_init_str))
			continue;
		var func = window[h];
		if (typeof func == 'function') {
			try {
				func();
			} catch (e) {
			}
		}
	}
};
jQuery(document).ready(X.hook);

X.get = function(u) {
	return X.ajax(u, 'GET');
};
X.post = function(u) {
	return X.ajax(u, 'POST');
};
X.ajax = function(u, method) {
	jQuery.ajax({
		type : method,
		url : u,
		dataType : "json",
		success : X.json
	});
	return false;
};

X.json = function(r) {
	var type = r['data']['type'];
	var data = r['data']['data'];
	if (type == 'alert') {
		alert(data);
	} else if (type == 'eval') {
		eval(data);
	} else if (type == 'refresh') {
		window.location.reload();
	} else if (type == 'updater') {
		var id = data['id'];
		var inner = data['html'];
		jQuery('#' + id).html(inner);
	} else if (type == 'dialog') {
		X.boxShow(data, true);
	} else if (type == 'mix') {
		for ( var x in data) {
			r['data'] = data[x];
			X.json(r);
		}
	}
};

X.getXY = function() {
	var x, y;
	if (document.body.scrollTop) {
		x = document.body.scrollLeft;
		y = document.body.scrollTop;
	} else {
		x = document.documentElement.scrollLeft;
		y = document.documentElement.scrollTop;
	}
	return {
		x : x,
		y : y
	};
};

X.boxMask = function(display) {
	var height = jQuery('body').height() + 'px';
	var width = jQuery(window).width() + 'px';
	jQuery('#pagemasker').css({
		'position' : 'absolute',
		'z-index' : '3000',
		'width' : width,
		'height' : height,
		'filter' : 'alpha(opacity=0.5)',
		'opacity' : 0.5,
		'top' : 0,
		'left' : 0,
		'background' : '#CCC',
		'display' : display
	});
	jQuery('#dialog').css('display', display);
};

X.boxShow = function(innerHTML, mask) {
	var dialog = jQuery('#dialog');
	dialog.html(innerHTML);

	if (mask) {
		X.boxMask('block');
	}
	var ew = dialog.get(0).scrollWidth;
	var ww = jQuery(window).width();
	var lt = (ww / 2 - ew / 2) + 'px';
	var wh = jQuery(window).height();
	var xy = X.getXY();
	var tp = (wh * 0.350 + xy.y) + 'px';

	dialog.css('background-color', '#FFF');
	dialog.css('left', lt);
	dialog.css('top', tp);
	dialog.css('z-index', 9999);
	dialog.css('display', 'block');

	return false;
};

X.boxClose = function() {
	jQuery('#dialog').html('').css('z-index', -9999);
	X.boxMask('none');
	return false;
};

window.xn_init_hook_validator = function() {
	jQuery('form.validator').each(function() {
		jQuery.fn.checkForm(this);
	});
};
window.xn_init_hook_click = function() {
	jQuery('#layout-msg-success span.msg-top-close').click(function() {
		return !jQuery('#layout-msg-success').remove();
	});
	jQuery('#layout-msg-error span.msg-top-close').click(function() {
		return !jQuery('#layout-msg-error').remove();
	});
	jQuery('a.ajaxlink').click(function() {
		if (jQuery(this).attr('no') == 'yes') {
			return false;
		}
		var ask = jQuery(this).attr('ask');
		if (ask && !confirm(ask)) {
			return false;
		}
		X.get(jQuery(this).attr('href'));
		return false;
	});
	jQuery('a.dialog').click(function() {
		var dialogid = jQuery(this).attr('dialogid');
		if (dialogid) {
			html = jQuery("#"+dialogid).html();
			X.boxShow(html,true);
			return false;
		}
		return false;
	});
};

X.misc = {};
X.misc.copyToCB = function(tid) {
	var o = jQuery('#' + tid);
	o.select();
	var maintext = o.val();
	if (window.clipboardData) {
		if ((window.clipboardData.setData("Text", maintext))) {
			var tip = o.attr('tip');
			if (tip)
				alert(tip);
			return true;
		}
	} else if (window.netscape) {
		netscape.security.PrivilegeManager
				.enablePrivilege('UniversalXPConnect');
		var clip = Components.classes['@mozilla.org/widget/clipboard;1']
				.createInstance(Components.interfaces.nsIClipboard);
		if (!clip)
			return;
		var trans = Components.classes['@mozilla.org/widget/transferable;1']
				.createInstance(Components.interfaces.nsITransferable);
		if (!trans)
			return;
		trans.addDataFlavor('text/unicode');
		var str = new Object();
		var len = new Object();
		var str = Components.classes["@mozilla.org/supports-string;1"]
				.createInstance(Components.interfaces.nsISupportsString);
		var copytext = maintext;
		str.data = copytext;
		trans.setTransferData("text/unicode", str, copytext.length * 2);
		var clipid = Components.interfaces.nsIClipboard;
		if (!clip)
			return false;
		clip.setData(trans, null, clipid.kGlobalClipboard);
		var tip = o.attr('tip');
		if (tip)
			alert(tip);
		return true;
	}
	return false;
};
X.misc.scaleimage = function(o, mw) {
	var w = jQuery(o).width();
	if (w > mw)
		jQuery(o).css('width', mw + 'px');
};

jQuery.fn.json2select = function(json, dft, name, deep, curvalue) {
	var _this = this, name = name || "sel", deep = deep || 0, dft = dft || [];
	curvalue = curvalue || 0;
	$("[name=" + name + deep + "]", _this).nextAll().remove();
	if (json[0]) {
		var slct = $("<select name='" + name + $("select", _this).length
				+ "'></select>");
		$("<option value=''>--无--</option>").appendTo(slct);
		$.each(json, function(i, sd) {
			if (sd.v != curvalue)
				$("<option value='" + sd.v + "'>" + sd.k + "</option>")
						.appendTo(slct).data("s", sd.s || []);
		});
		slct.change(
				function(e, dftflag) {
					$(this).val()
							&& _this.json2select(
									$(":selected", this).data("s"),
									dftflag ? dft.slice(1) : [], name, $(this)
											.attr("name").match(/\d+/)[0],
									curvalue);
				}).appendTo(_this).val(dft[0] || 0).trigger("change", [ true ]);
	}
	return _this;
};
jQuery.buildMultiSelect = function(setting) {
	if (!setting) {
		return;
	}
	var domdataname = "seldata";
	var key_value = setting.keyValue;
	var key_text = setting.keyText;
	var m_jsonData = setting.jsonData;
	this.selskeys = setting.selskeys;
	this.selsids = setting.selsids;
	this.showValues = setting.showValues || Array(3);
	this.sellen = this.selsids.length;
	var instance = this;

	var jsonobj = m_jsonData;
	var curidx = 0;
	for ( var i = 0; i < instance.sellen; i++) {
		var selobj = $("#" + instance.selsids[i]);

		if (i == 0) {
			jsonobj = jsonobj[instance.selskeys[i]];
		} else {
			if (!jsonobj[curidx]) {
				break;
			}
			jsonobj = jsonobj[curidx][instance.selskeys[i]];
		}
		if (!jsonobj) {
			break;
		}
		for ( var j = 0, l = jsonobj.length; j < l; j++) {
			try {
				if (jsonobj[j][key_value] == instance.showValues[i] || 0) {
					curidx = j;
					selobj.append("<option value='" + jsonobj[j][key_value]
							+ "' selected>" + jsonobj[j][key_text]
							+ "</option>");
				} else {
					selobj.append("<option value='" + jsonobj[j][key_value]
							+ "'>" + jsonobj[j][key_text] + "</option>");
				}
			} catch (e) {
			}
		}
		selobj.data(domdataname, {
			json : jsonobj,
			selidx : i
		});
		selobj.bind("change", function() {
			flushsel($(this).data(domdataname), $(this).get(0).selectedIndex);
		});
		selobj.css("zoom", 1);
	}

	function flushsel(seljsondata, selectedidx) {
		var jsonobj = seljsondata['json'][selectedidx];
		var selidx = seljsondata['selidx'];
		for ( var i = selidx + 1; i < instance.sellen; i++) {
			var selobj = $("#" + instance.selsids[i]);
			selobj.empty();
			try {
				if (i == selidx + 1) {
					jsonobj = jsonobj[instance.selskeys[i]];
				} else {
					if (!jsonobj || jsonobj.length == 0) {
						break;
					}
					jsonobj = jsonobj[0][instance.selskeys[i]];
				}
				if (!jsonobj) {
					break;
				}
				for ( var j = 0, l = jsonobj.length; j < l; j++) {
					selobj.append("<option value='" + jsonobj[j][key_value]
							+ "'>" + jsonobj[j][key_text] + "</option>");
				}
			} catch (e) {
			}
			selobj.data(domdataname, {
				json : jsonobj,
				selidx : i
			});
		}
		$("#" + instance.selsids[0]).parent().css("zoom", 1);
	}
}
