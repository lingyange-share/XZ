<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
	<link href="favicon.ico" rel="shortcut icon">
	  <script type="text/javascript" src="../../jquery-easyui-1.6.3/jquery.min.js"></script>
	  <script type="text/javascript" src="../../jquery-easyui-1.6.3/jquery.easyui.min.js"></script>
	  <link rel="stylesheet" href="../../jquery-easyui-1.6.3/themes/default/easyui.css" type="text/css"></link>
	  <link rel="stylesheet" href="../../jquery-easyui-1.6.3/themes/icon.css" type="text/css"></link>
	  <script type="text/javascript" src="../../jquery-easyui-1.6.3/locale/easyui-lang-zh_CN.js"></script>
	
	<script type="text/javascript">
	var a;
		$(function(){
		 	$("#bdy").layout("collapse","west");
		});
		function getAb(){
		//第一个参数为方法  第二个参数 为 方法所需要的参数
			a = $("#bdy").layout("panel","center"); 
			console.info(a.panel('options'));
		}
		function showWest(){
			$("#bdy").layout("expand","west");
		}
		function hideWest(){
			$("#bdy").layout("collapse","west");
		}
	</script>
</head>
<body class="easyui-layout" id = "bdy">
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>
    <div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div>
    <div data-options="region:'east',title:'East',split:true" style="width:100px;"></div>
    <div data-options="region:'west',title:'West',split:true" style="width:100px;"></div>
    <div data-options="region:'center',title:'center title'"  style="padding:5px;background:#eee;">
    		<button onclick="getAb()">获取属性</button>
    		<button onclick="showWest()">展开左边</button>
    		<button onclick="hideWest()">关闭左边</button>
    </div>
</body>
</html>