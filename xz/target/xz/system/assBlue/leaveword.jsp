<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线留言</title>
<link href="${pageContext.request.contextPath }/css/society.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/blue.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/css/xn.apps.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
<script src="../js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix("img");
    </script>
<![endif]-->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function send(){
//		alert("点击了");
//		var title=$("#title").val();
		var title=document.getElementById("title").value;
//		alert(title);
		if(title==""){
			alert("请输入标题!");
		}else{
			alert("留言成功!");
			document.getElementById("f").submit();
		}
	}
</script>
</head>

<body>
<!--头部部分开始-->
   <div class="headerbox">
      <div class="header_top">
       <span class="hd_back"><a href="../frontPage/index.jsp">>>返回外贸进出口示范总部基地</a></span>
       <span class="hd_msg">
         <ul><li>您好！adminmasdagf&nbsp;|<a href="#">通知（10）</a><a href="#">留言（10）</a>&nbsp;|<a href="#">管理中心</a>&nbsp;|<a href="#">企业空间</a><a href="#" class="exit">[退出登录]</a></li></ul>
        </span>
     </div>
     <div class="header_logo"><img src="${pageContext.request.contextPath }/images/society/blue/logo.png" /></div>
   </div>
<!--头部部分结束-->

<!--导航栏部分开始-->
<div class="nav">
    <div class="navbox">
       <ul id="bannerUlId"> 
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
            <li class="nav_block"><a href="assBlue.action">首页</a></li>
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
            <li class="nav_block"><a href="introduceBlue.action?color=1&type=1">协会介绍</a></li>
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
            <li class="nav_block"><a href="listDynamicBlue.action">协会动态</a></li>
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
            <li class="nav_block"><a href="listInformBlue.action">通知公告</a></li>  
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
            <li class="nav_block"><a href="listServiceBlue.action">会员服务</a></li>
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
            <li class="nav_block"><a href="listRecommandBlue.action">会员推荐</a></li>
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
            <li class="nav_block"><a href="listFriendBlue.action?continent=1">友好商会</a></li>
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
        </ul>
    </div>
</div>
<!--导航栏部分结束-->


<div class="position">您所在位置：在线留言</div>

<div class="contentbox">
      <div class="leavewordbox">
      <form id="f" action="addLeaveword.action" method="post">
         <div class="leave_conbox">
         <input type="hidden" name="c.color" value="1"/>
           <div class="leave_title">留言标题：<input type="text" id="title" name="c.title" /></div> 
           <div class="leave_content">留言内容：<textarea id="text" name="c.text"></textarea></div>
           <%SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");%>
           <input type="hidden" name="c.sendPerson" value="adminmasdagf"/> 
           <input type="hidden" name="c.sendTime" value="<%=sdf.format(new Date())%>"/>  
         </div>
         <div class="leave_btn"> 
         <input type="button" value="发 送" onclick="send()"/>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a href="assBlue.action"><input type="button" value="取 消"/></a>
         </div>
         </form>
         <div class="leave_img"><img src="${pageContext.request.contextPath }/images/society/leave.png" /></div>
      </div>
</div>





<div class="clear"></div>
<div class="bottombox" id="bot">
 <ul>
   <li><a>平台介绍</a> | <a>平台动态</a> | <a>媒体关注</a> | <a>服务团队</a> | <a>联系我们</a></li>
   <li>Copyright Reserved © 2013北京市东城区商务委员会</li>
 </ul>
</div>
</body>
</html>
