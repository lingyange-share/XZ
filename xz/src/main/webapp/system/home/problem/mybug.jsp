<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  

<script type="text/javascript" charset="UTF-8">
	CKEDITOR.editorConfig = function( config ) {
		config.language = 'zh-cn';
		config.uiColor = '#F7B42C';
		config.height = 300;
		config.toolbarCanCollapse = true;
	};
	$(function(){
	var editRow = undefined; //用于 记录正在编辑的行数
		$('#datagrid').datagrid({
			url:"getBugList.do",//
		//	title:"第一个列表",
			iconCls:"icon-save",
			pagination:true,
			fit:true, //为了宽高自适应
			//fitColumns:false,//界面缩小是否显示横向滚动条 false 有 true 没有  做冻结列不能具备该属性
			pageSize:5,
		
			pageList:[5,10,15],//上面每页显示行数 下部分 多选 必须为上部分倍数
			nowrap:true,//是否 换行 默认true 不换行
			border:false,
			idFiled:"id",//作为 唯一标识 翻页能够被记录
			//冻结列滚动条的起始位位置横向  被冻结的下方无滚动条
// 			frozenColumns:[[{field:'id',title:'Code',width:100,sortable:true,checkbox:true},
// 						{field:'username',title:'用户名',width:100,//datetimebox 需要扩展
// 							editor:{type:'validatebox',options:{required:true}}//此属性让改列具备被编辑特性 需要开启编辑状态  否则这里写了不起效果
// 						}]],
			columns:[[
						{field:'qid',title:'Code',width:200,sortable:true,checkbox:true,align:'center'},
						{field:'dscr',title:'问题描述',width:200,align:'center',//datetimebox 需要扩展
							editor:{type:'validatebox',options:{required:true}}//此属性让改列具备被编辑特性 需要开启编辑状态  否则这里写了不起效果
						},
						{field:'ccc',title:'操作',width:200,align:'center',formatter:function(value,row,index){
						
							return "<a href='showDetail.do?qid="+row.qid+"' target='_blank'>详情</a>/<a href='#' onClick='delb("+row.qid+")'>删除</a>";
							
						}}
						
				    ]],
		    toolbar:[
		    			{iconCls:'icon-add',text:'增加',handler:function(){
							//$("#addDia").dialog('open',true);
							window.open("problem/test.jsp");
		    			}},'-',//此处作用为添加分隔符
		    			{iconCls:'icon-remove',text:'删除',handler:function(){
		    				
		    				
		    			}},
		    			{iconCls:'icon-edit',text:'编辑',handler:function(){
		    				
		    			}},
		    			{iconCls:'icon-search',text:'查看',handler:function(){
		    			
		    			}},'-',{iconCls:'icon-save',text:'保存',handler:function(){
			    				
		    			}},'-',{iconCls:'icon-redo',text:'撤销',handler:function(){
			    					
		    			}}
		    		],
			    onAfterEdit:function(rowIndex, rowData, changes){//调用endEdit 方法会自动执行
			   		
			    },onDblClickRow:function(rowIndex, rowData){//添加双击事件
			    
			    },onRowContextMenu:function(e, rowIndex, rowData){
			    	
			    }
		});
		
		$("#addDia").dialog({
			buttons:[
				{text:'确定',handler:function(){
				//$("#fup").get(0).files[0].name;//获取多文件的值  get(0)转换为js对象
				   	$("#upfrm").attr("action","addNewBug.do");
				$("#upfrm").submit();
				   	$("#addDia").dialog("close",true);
				}},
				{text:'取消',handler:function(){
						$("#addDia").dialog("close",true);
					
				}}
			]
		});
		
	});
	function delb(qid){
		$.messager.confirm('提示','确定删除？',function(r){
			if(r){
				$.ajax({
						   type: "POST",
						   url: "delbug.do",
						   data: {'qid':qid},
						   success: function(msg){
						   var b = jQuery.parseJSON(msg);
						     	if(b){
						     	 $.messager.alert("提示","删除成功");
						     		
						     	}else{
						     		$.messager.alert("提示","删除失败");
						     	}
						   }
						});
			}
		});
	}
	function sub(){
	console.info(xz.serializeObject($("#xz_search").form()));
	//reload 会停留在当前页面  查询 serializeObject自动洗序列化 并转换为对象
		$("#datagrid").datagrid('load',xz.serializeObject($("#xz_search").form()));
	}
	function xclear(){
	
		$("#datagrid").datagrid('load',{});
		$("#xz_search").find('input').val('');
	}
</script>
<!-- 两种方式都可以 -->
<!-- <div class="easyui-tabs" fit="true" border="false" > -->
<!-- 	<div title="UserManger" border="false"> -->
<!-- 		<table id="datagrid"></table> -->
<!-- 	</div> -->
<!-- </div> -->

	<div class="easyui-layout" fit="true" border="false" >
		<div region="north" border="false" title="筛选" style="height:100px;overflow:hidden">
			<form id = "xz_search">
				<table class= "datagrid-toolbar" style="with:100%;height:100%">

					<tr>
						<th>用户名</th>
						<td><input name="username" /></td>
					</tr>
				</table>
				<a id="btn" href="#" class="easyui-linkbutton" onclick="sub()" >查询</a>
				<a id="btn" href="#" class="easyui-linkbutton" onclick="xclear()" >清空</a>
			</form>
		
		</div>
		<div region="center" border="false">
			<table id="datagrid"></table>
		</div>
		<div id = "menu" class="easyui-menu" style="width: 120px;display: none;">
			<div onclick="" iconCls="icon-add">增加</div>
			<div onclick="">增加</div>
			<div onclick="">增加</div>
		</div>
	</div>
	<div class="easyui-dialog" id="addDia" data-options="closed:true,title:'添加'" style="width: 500;height: 400">
			<form method="post" id="upfrm" enctype="multipart/form-data">
			<textarea  id = "editor" rows="20" cols="2" class="ckeditor"></textarea>
			</form>
			
	</div>
