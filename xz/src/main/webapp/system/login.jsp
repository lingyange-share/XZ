<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'index.jssp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link href="favicon.ico" rel="<%=path %>/shortcut icon">
  <link rel="stylesheet" href="<%=path %>/jquery-easyui-1.6.3/themes/default/easyui.css" type="text/css"></link>
  <link rel="stylesheet" href="<%=path %>/jquery-easyui-1.6.3/themes/icon.css" type="text/css"></link>
  <script type="text/javascript" src="<%=path %>/jquery-easyui-1.6.3/jquery.min.js"></script>
  <script type="text/javascript" src="<%=path %>/jquery-easyui-1.6.3/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%=path %>/jquery-easyui-1.6.3/locale/easyui-lang-zh_CN.js"></script>
  <script type="text/javascript" src="<%=path %>/js/xmethod.js"></script>
  
  
  <script type="text/javascript">
	var flog ;
		$(function(){
		$("#dd").show();
		//alert(xz.ale("ttt"));
				flog = $('#dd').dialog({
			    title: 'ENTER',
			    width: 300,
			    height: 200,
			    closed: false,
			    cache: false,
			    modal: true,
			    buttons:[{text:'注册',iconCls:'icon-add',handler:function(){
			    	
			    }},
			    	{text:'登录',iconCls:'icon-tip',handler:function(){
			    	var uname = $("#uname").val();
			    	var pword = $("#pword").val();
// 			    	{username:uname,password:pword}
			    		$.ajax({
				    		type:"POST",
				    		url:"home/login.do",
			    			data:"username="+uname+"&password="+pword,
			    			success:function(msg){
			    			
			    				if(msg){
			    				
			    					flog.dialog("close");
			    					
			    					window.location.href="<%=path %>/system/home/dataGrid.jsp";
			    				}else{
			    					$.messager.alert('提示','账号或者密码有误');
			    				}
			    			}
			    		});
			    		
			    		
			    	}}
			    ]
			});
		});
		
		
   </script>
   <style type="text/css">
   	.inp{
   		width:200px;
   		margin-top: 20px;
   		
   	}
 	.frm1{
 		margin-left: 5px;
 	}
   
   </style>
  </head>
  	
  <body>
    <h1 align="center"  style="color:threedlightshadow;">Defense of the Ancients</h1>
    <p align="center"><button onclick="$('#dd').dialog('open')">点击登录</button></p>
    <div id="dd"  style="display: none">
    	<form id = "frm1">
    		&nbsp;用户名&nbsp;<input name = "name" class="inp" id="uname"/></br></br>
    		&nbsp;密&nbsp;&nbsp;&nbsp;码&nbsp;<input name="password" id="pword" class="inp" type="password" />
    	</form>
    </div>
    
  </body>
</html>
