<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
	<link href="<%=path %>/favicon.ico" rel="shortcut icon">
	  <script type="text/javascript" src="<%=path %>/jquery-easyui-1.6.3/jquery.min.js" charset="UTF-8"></script>
	  <script type="text/javascript" src="<%=path %>/jquery-easyui-1.6.3/jquery.easyui.min.js" charset="UTF-8"></script>
	  <script type="text/javascript" src="<%=path %>/ckeditor/ckeditor.js"></script>
	  <script type="text/javascript" src="<%=path %>/ckeditor/config.js"></script>
	  <link rel="stylesheet" href="<%=path %>/jquery-easyui-1.6.3/themes/default/easyui.css" type="text/css" charset="UTF-8"></link>
	  <link rel="stylesheet" href="<%=path %>/jquery-easyui-1.6.3/themes/icon.css" type="text/css" charset="UTF-8"></link>
	  <script type="text/javascript" src="<%=path %>/jquery-easyui-1.6.3/locale/easyui-lang-zh_CN.js"></script>
	  <script type="text/javascript" src="<%=path %>/js/xmethod.js"></script>
	  <script type="text/javascript">
			function ccc(){
						$.ajax({
						   type: "POST",
						   url: "xcx.do",
						   data:"",
						   dataType:"json",
						   success: function(msg){
						     console.info(msg);
						   }
						});
			}
			function xxx(){
						window.location.href = "xxx.do";
			}
				function zsAdd(){
						$.ajax({
						   type: "POST",
						   url: "zsAdd.do",
						   data:"",
						   dataType:"json",
						   success: function(msg){
						     	console.info(msg);
						   }
						});
			}
			
			function mytime(){
		        var a = new Date();
		        var b = a.toLocaleTimeString();
		        var c = a.toLocaleDateString();
		        document.getElementById("time1").innerHTML = c+"&nbsp"+b;
       		 }
   			 setInterval(function() {mytime();},1000);
			
			function menuman(t,jp){
				var a = $("#bdy").layout('panel','center');
				a.panel('refresh',jp);
				a.panel('setTitle',$(t).val());
			//	console.info(a.panel("options").href);
			}
			
	</script>
	<style type="text/css">
		.tinp{
			width: 116px;
			background-color:#95B8E7;
			margin-top: 2px;
		}
		.xdiv{
			
			text-align: center;
		}
	</style>
</head>
<body class="easyui-layout" id = "bdy" >
    <div data-options="region:'north',title:'当前用户:${log_user.username}',split:true" style="height:100px;">
    	<p id="time1" style="color: blueviolet;"></p>
    	
    </div>
    <div data-options="region:'south',title:'South Title',split:true,closed:true" style="height:100px;">
    	<button onclick="ccc()">测试请求---${count}</button>
    	<button onclick="xxx()">测试请求2</button>
    	<button onclick="zsAdd()">张三++</button>
    </div>
    <div data-options="region:'east',title:'东方',split:true" style="width:100px;">
    	
    </div>
    <div data-options="region:'west',title:'菜单列表',split:true" style="width:126px;">
    
    	<div class="easyui-accordion" data-options="fit:true,border:false">
    		<div title="问题汇总" class="xdiv">
    			<input class="tinp" value="遇到的bug"  onclick="menuman(this,'problem/mybug.jsp')" type="button" />
    			<input class="tinp" value="规则管理"  type="button" /> 
    		</div>
    		<div title="前台数据管理" class="xdiv">
    			<input class="tinp" value="管理中心"  type="button"/> 
    		</div>
    		<div title="后台数据管理" class="xdiv">
    			<input class="tinp" value="后台用户管理" onclick="menuman(this,'center.jsp')" type="button"/> 
    		</div>
    	</div>		
    
    </div>
    <div data-options="region:'center',title:'后台用户管理',href:'problem/mybug.jsp'"  style="background:#eee;">
    	
    </div>
</body>
</html>