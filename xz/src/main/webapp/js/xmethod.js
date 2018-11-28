//定义全局变量
var xz =$.extend({},xz);
//页面使用xz.ale()即可调用 并且能够传参
xz.ale = function(a) {
	return a;
};
$(function() {/*页面加载时显示等待信息*/
	$.messager.progress({
		text:'加载中....',
		interval:100
	});
});
$.parser.onComplete = function() {/*页面easyui组件渲染完毕关闭等待信息*/
	window.setTimeout(function() {
		$.messager.progress('close');
	},500);
};
xz.serializeObject = function(form){/*将表单序列化成对象*/
	var o = {};
	$.each(form.serializeArray(),function(index){
		if(o[this['name']]){
			o[this['name']]=o[this['name']]+","+this['value'];
		}else{
			o[this['name']] = this['value'];
		}
		
	});
	return o;
};
//easyui 编辑器扩展
$.extend($.fn.datagrid.defaults.editors, {
    datetimebox: {
		init: function(container, options){
			var editor = $('<input />').appendTo(container);
			options.editable = false;
			editor.datatimebox(options);
			return editor;
		},
		destroy: function(target){
			$(target).datetimebox('destory');
		},
		getValue: function(target){
			return $(target).datetimebox('getValue');
		},
		setValue: function(target, value){
			$(target).datetimebox('setValue',value);
		},
		resize: function(target, width){
			$(target).datetimebox('resize',width);
		}
    }
});
//$.fn.datagrid.methods 方法扩展
$.extend($.fn.datagrid.methods,{
	addEditor:function(jq,param){//第一个参数组件本身
		if(param instanceof Array){
			$.each(param,function(index,item){
				var e =$(jq).datagrid('getColumnOption',item.filed);
				e.editor = item.editor;
			});
		}else{
			var e =$(jq).datagrid('getColumnOption',param.filed);
			e.editor = param.editor;
		}
	},
	removeEditor:function(jq,param){
		if(param instanceof Array){
			$.each(param,function(index,item){
				var e =$(jq).datagrid('getColumnOption',item);
				e.editor = {};
			});
		}else{
			var e =$(jq).datagrid('getColumnOption',param);
			e.editor = {};
		}
	}
	
});