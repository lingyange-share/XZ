<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  

<script type="text/javascript" charset="UTF-8">
	$(function(){
	var editRow = undefined; //用于 记录正在编辑的行数
		$('#datagrid').datagrid({
			url:"showList.do",//
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
						{field:'id',title:'Code',width:100,sortable:true,checkbox:true},
						{field:'username',title:'用户名',width:100,//datetimebox 需要扩展
							editor:{type:'validatebox',options:{required:true}}//此属性让改列具备被编辑特性 需要开启编辑状态  否则这里写了不起效果
						},{field:'password',title:'密码',width:100,
							editor:{type:'validatebox',options:{required:true}}
						}
				    ]],
		    toolbar:[
		    			{iconCls:'icon-add',text:'增加',handler:function(){
// 			    			if(editRow != undefined){
// 			    				$("#datagrid").datagrid("endEdit",0);
// 			    			}
			    			if(editRow == undefined){
			    				$('#datagrid').datagrid('addEditor',{//扩展的方法
					    					filed:'username',//改变哪个列
					    					editor:{type:'validatebox',options:{required:true}}
				    				});
			    			
			    					$('#datagrid').datagrid('insertRow',{
					    					index:0,//起始位置
					    					row:{
					    						username:'ccc'
					    					}
				    				});
				    				$("#datagrid").datagrid("beginEdit",0);//手动开启 编辑模式  第二个参数为 哪一行
				    				editRow=0;//增加后记录索引
			    			}
		    			
		    			}},'-',//此处作用为添加分隔符
		    			{iconCls:'icon-remove',text:'删除',handler:function(){
		    				var rows = $("#datagrid").datagrid("getSelections");//所有被选中的行
		    				if(rows.length>0){
		    					$.messager.confirm('请确认', "Are You Sure ?", function(b){//确定为true 取消fasle
		    						if(b){
		    							var ids = [];
		    							for(var i =0 ; i < rows.length;i++){
		    								ids.push(rows[i].id);
		    							}
		    							console.info(ids.join(","));
		    							//ajax 删除成功后 调用一次刷新     	$("#datagrid").datagrid("unselectAll");//取消选中
		    							
		    						}
		    					});
		    				}else{
		    					$.messager.alert("提示","无选择项","error");
		    				}
		    				
		    			}},
		    			{iconCls:'icon-edit',text:'编辑',handler:function(){
		    				var rows = $("#datagrid").datagrid("getSelections");
		    				if(rows.length==1){
		    				
		    						$('#datagrid').datagrid('removeEditor','password');//扩展的方法 可以传入数组定义多个禁止填写
			    			
		    				
		    						if(editRow != undefined){
			    						$("#datagrid").datagrid("endEdit",editRow);
					    			}
					    			if(editRow == undefined){
						    			var index = $("#datagrid").datagrid("getRowIndex",rows[0]);
								    	$("#datagrid").datagrid("beginEdit",index);//手动开启 编辑模式  第二个参数为 哪一行
					    				editRow=index;//增加后记录索引
					    				//$("#datagrid").datagrid("unselectAll");//可直接选中下一条 但会往后台传入数据
					    			}
		    				
		    				}else{
		    					$.messager.alert("提示","请只选择一行");
		    				}
		    			}},
		    			{iconCls:'icon-search',text:'查看',handler:function(){
		    			
		    			}},'-',{iconCls:'icon-save',text:'保存',handler:function(){
			    					if(editRow != undefined){//保存撤销编辑状态
	 			    				$("#datagrid").datagrid("endEdit",editRow);
								}
		    			}},'-',{iconCls:'icon-redo',text:'撤销',handler:function(){
			    					editRow = undefined;
			    					$("#datagrid").datagrid("rejectChanges");
			    					$("#datagrid").datagrid("unselectAll");//取消选中
		    			}}
		    		],
			    onAfterEdit:function(rowIndex, rowData, changes){//调用endEdit 方法会自动执行
			   		console.info(rowData);
			   		//插入 编辑 同理
			   		var insert = $("#datagrid").datagrid("getChanges","inserted");//获取 第二个参数为编辑方式
			   		var update = $("#datagrid").datagrid("getChanges","updated");
			   		if(insert.length<1&&update.length<1){
			   			editRow = undefined;
			   			$("#datagrid").datagrid("unselectAll");
			   		}
			   		var  url = "";
			   		if(insert>0){
			   			url="xxx!ccc.do";
			   		}
			   		//调用 ajax 成功之后调用  $("#datagrid").datagrid("accpetChanges") 告诉前台后台已经改变 无法撤回
			   		//失败调用回滚
			   		editRow=undefined;//放在ajax 内部 防止异步未执行时执行 然后执行取消选中$("#datagrid").datagrid("unselectAll");
			    },onDblClickRow:function(rowIndex, rowData){//添加双击事件
			    
			    			if(editRow != undefined){
			    				$("#datagrid").datagrid("endEdit",editRow);
			    			}
			    			if(editRow == undefined){
			    			console.info(rowIndex);
						    	$("#datagrid").datagrid("beginEdit",rowIndex);//手动开启 编辑模式  第二个参数为 哪一行
			    				editRow=rowIndex;//增加后记录索引
			    			}
			    },onRowContextMenu:function(e, rowIndex, rowData){
			    	e.preventDefault();
			    	$(this).datagrid("unselectAll");
			    	$(this).datagrid("selectRow",rowIndex);
			    	$('#menu').menu('show', {
					    left: e.clientX,
					    top: e.clientY
					});
			    }
		});
	});
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
						<td><input name="username"/></td>
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
