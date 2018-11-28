<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>详情</title>
<link href="${pageContext.request.contextPath }/css/society.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/blue.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/css/xn.apps.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
<script src="../js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix("img");
    </script>
<![endif]-->
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
            <li class="nav_block current"><a href="listFriendBlue.action?continent=1">友好商会</a></li>
            <li><img src="${pageContext.request.contextPath }/images/society/device.png" align="absmiddle" /></li>
        </ul>
    </div>
</div>
<!--导航栏部分结束-->

<div class="position">您所在位置：友好商会 > 详情</div>
<fmt:parseDate var="t" value="${c.publishTime}" type="both" pattern="yyyy-MM-dd HH:mm"/>
<fmt:formatDate var="time" value="${t}" pattern="yyyy年MM月dd日 HH:mm"/>

<div class="detailbox clearfix">
      <div class="detail_title">${c.title}</div>
      <div class="detail_append">发布时间：${time }<span>作者：${c.publishPerson}</span></div>
      <div class="detail_con clearfix">
       <ul>
        <li>${c.text}</li>
       </ul>
       <div class="detail_addr">
        <ul>
          <li>市商务委地址：${c.address}</li>
          <li>联系人：${c.contactPerson}</li>
          <li>联系电话：${c.contactPhone}</li>
          <li class="detail_down"><img src="${pageContext.request.contextPath }/images/society/down.png" />项目表格表格项目表格项目表格项目表格项1<a>下载</a><a>打开</a></li>
          <li class="detail_down"><img src="${pageContext.request.contextPath }/images/society/down.png" />项目表格项目表格表格项目表格项目表格项目表格项2<a>下载</a><a>打开</a></li>
        </ul>
       </div>
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
