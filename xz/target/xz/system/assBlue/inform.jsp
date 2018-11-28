<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>通知公告</title>
<link href="${pageContext.request.contextPath }/css/society.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/blue.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/css/xn.apps.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
<script src="../js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix("img");
    </script>
<![endif]-->
<script type="text/javascript">
		function go(){
		var page=document.getElementById("page");
		window.location.href="listInformBlue.action?pageNO="+page.value;
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
            <li class="nav_block current"><a href="listInformBlue.action">通知公告</a></li>  
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


<div class="position">您所在位置：通知公告</div>

<div class="contentbox clearfix">
<c:forEach items="${page.item}" var="c">
	<fmt:parseDate var="t" value="${c.publishTime}" type="date" pattern="yyyy-MM-dd"/>
	<fmt:formatDate var="time" value="${t}" pattern="yyyy-MM-dd"/>
      <div class="any_list clearfix">
        <ul>
          <li class="li_bottom">
          <a href="findInformById.action?id=${c.id}">${c.title}</a>
          <span>[${time}]</span>
          </li>
        </ul>
      </div>
      </c:forEach>
    <div class="action">
    共${page.totalCount}条记录 每页显示${page.pageSize }条 当前 ${page.pageNO }/${page.totalPage } 页  
       <a href='listInformBlue.action?pageNO=1'>首页</a>
       <a href='listInformBlue.action?pageNO=${page.pageNO-1 }'>上一页</a>
       <a href='listInformBlue.action?pageNO=${page.pageNO}' >${page.pageNO}</a>
       <c:forEach var="i" begin="${page.pageNO+1}" end="${page.pageNO+4}">
       <a href='listInformBlue.action?pageNO=${i}' >${i}</a>
       </c:forEach>
       <a href='listInformBlue.action?pageNO=${page.pageNO+1}' >...</a>
       <a href='listInformBlue.action?pageNO=${page.pageNO+1 }' >下一页</a> 
       <a href='listInformBlue.action?pageNO=${page.totalPage }' >尾页</a>
       跳转到第<input id="page" name="page" size="5"/>页
       <button type="button" onclick="go()">Go</button>
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
