<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商城县国际DOTA协会</title>
<link href="${pageContext.request.contextPath }/css/society.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/blue.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/css/xn.apps.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]>
<script src="../js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix("img");
    </script>
<![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.cxslide.min.js"></script>

</head>

<body>
<!--头部部分开始-->
   <div class="headerbox">
      <div class="header_top">
       <span class="hd_back"><a href="../frontPage/find.action">>>返回外贸进出口示范总部基地</a></span>
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
            <li class="nav_block current"><a href="assBlue.action">首页</a></li>
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

<!--banner部分开始-->
<div class="banner">
 <div class="bannerbox"><img src="${pageContext.request.contextPath }/images/society/blue/bg.png" />
 <!--焦点图开始-->
  <div class="banner_foucs">
       <div id="slide_x" class="focus">
        <div class="box">
          <ul class="list">
            <li><a href="#"><img src="${pageContext.request.contextPath }/images/society/z.png" width="667" height="369"></a><p><img src="${pageContext.request.contextPath }/images/society/list.png" />素材1</p></li>
            <li><a href="#"><img src="${pageContext.request.contextPath }/images/society/slide_1.jpg" width="667" height="369"></a><p><img src="${pageContext.request.contextPath }/images/society/list.png" />素材2</p></li>
            <li><a href="#"><img src="${pageContext.request.contextPath }/images/society/slide_2.jpg" width="667" height="369"></a><p><img src="${pageContext.request.contextPath }/images/society/list.png" />素材3</p></li>
            <li><a href="#"><img src="${pageContext.request.contextPath }/images/society/slide_3.jpg" width="667" height="369"></a><p><img src="${pageContext.request.contextPath }/images/society/list.png" />素材4</p></li>
          </ul>
        </div>
        <div> 
          <ul class="btn">
            <li class="b_1 selected">1</li>
            <li class="b_2">2</li>
            <li class="b_3">3</li>
            <li class="b_4">4</li>
           </ul>
        </div>
       </div>
	  <script>$("#slide_x").cxSlide({plus:true,minus:true});</script>
  </div>
 <!--焦点图结束-->
 
  <div class="banner_dynamic">
  <span class="title">协会动态</span>
  <span style="float:right; margin-right:20px; margin-top:13px;">
	  <a style="*top:-42px;*position:relative;" href="listDynamicBlue.action">
	  <img src="${pageContext.request.contextPath }/images/society/more.png" />
	  </a>
  </span>
     <ul>
     <c:forEach items="${dlist}" var="d">
       <li><a href="findDynamicById.action?id=${d.id}">${d.title}</a></li>
    </c:forEach>
     </ul>
  </div>
 </div>
</div>
<!--banner部分结束-->

<div class="noticebox">
  <div class="noticebox_left">
    <ul>
      <li>
        <div class="noticebox_left_top"><img src="${pageContext.request.contextPath }/images/society/top1.png" />
          <span class="anyleft">通知公告</span>
          <span class="more">
          <a href="listInformBlue.action"><img src="${pageContext.request.contextPath }/images/society/more.png" /></a>
          </span>
        </div>
      </li>
      <li>
        <div class="noticebox_left_mid">
          <ul>
          <c:forEach items="${ilist}" var="i">
          <fmt:parseDate var="t" value="${i.publishTime}" type="date" pattern="yyyy-MM-dd"/>
		  <fmt:formatDate var="time" value="${t}" pattern="yyyy-MM-dd"/>
           <li class="li_bottom">
            <img src="${pageContext.request.contextPath }/images/society/list1.png" />
            <a href="findInformById.action?id=${i.id}">${i.title}</a>
            <span>${time}</span>
           </li>
           </c:forEach>
         </ul>
        </div>
      </li>
      <li><div class="noticebox_left_bot"><img src="${pageContext.request.contextPath }/images/society/bot1.png" /></div></li>
    </ul>
  </div>
  
  <div class="anybox_right">
    <ul>
      <li>
        <div class="anybox_right_top"><img src="${pageContext.request.contextPath }/images/society/top2.png" /><span class="anyright">中国国际贸易促进委员会东城区支会</span></div>
      </li>
      <li>
        <div class="anybox_right_mid">
          <ul>
           <li><a href="introduceBlue.action?color=1&type=1"><input type="button" class="inputone" value="商会简介" /></a></li>
           <li><a href="introduceBlue.action?color=1&type=2"><input type="button" class="inputtwo" value="商会章程" /></a></li>
           <li><a href="introduceBlue.action?color=1&type=3"><input type="button" class="inputthree" value="组织构成" /></a></li>
           <li><a><input type="button" class="inputfour" value="在线入会" /></a></li>
           <li><a href="introduceBlue.action?color=1&type=4"><input type="button" class="inputfive" value="商会服务" /></a></li>
           <li><a href="introduceBlue.action?color=1&type=5"><input type="button" class="inputsix" value="联系我们" /></a></li>
          </ul>
        </div>
      </li>
      <li><div class="anybox_right_bot"><img src="${pageContext.request.contextPath }/images/society/bot2.png" /></div></li>
    </ul>
  </div>
  
 <div class="linebox">
    <ul>
     <li><a href="leaveword.jsp" class="linebox_bg"></a></li>
    </ul>
  </div>
</div>


<div class="anybox">
  <div class="anybox_left">
    <ul>
      <li>
        <div class="anybox_left_top"><img src="${pageContext.request.contextPath }/images/society/top1.png" />
          <span class="anyleft">会员服务</span><span class="more"><a href="listServiceBlue.action"><img src="${pageContext.request.contextPath }/images/society/more.png" /></a></span>
        </div>
      </li>
      <li>
        <div class="anybox_left_mid">
          <ul>
          <c:forEach items="${slist}" var="s">
          <fmt:parseDate var="t" value="${s.publishTime}" type="date" pattern="yyyy-MM-dd"/>
		  <fmt:formatDate var="time" value="${t}" pattern="yyyy-MM-dd"/>
           <li class="li_bottom">
           <img src="${pageContext.request.contextPath }/images/society/list1.png" />
           <a href="findServiceById.action?id=${s.id}">${s.title}</a>
           <span>${time}</span>
           </li>
           </c:forEach>
         </ul>
        </div>
      </li>
      <li><div class="anybox_left_bot"><img src="${pageContext.request.contextPath }/images/society/bot1.png" /></div></li>
    </ul>
  </div>
  
  <div class="anybox_right">
    <ul>
      <li>
        <div class="anybox_right_top">
        <img src="${pageContext.request.contextPath }/images/society/top2.png" />
        <span class="anyright">会员推荐</span>
        <span class="more">
        <a href="listRecommandBlue.action"><img src="${pageContext.request.contextPath }/images/society/more.png" /></a>
        </span>
        </div>
      </li>
      <li>
        <div class="anybox_mid">
          <ul>
           <c:forEach items="${rlist}" var="r">
           <li><a href="findRecommandById.action?id=${r.id}">${r.title}</a></li>
           </c:forEach>
         </ul>
        </div>
      </li>
      <li><div class="anybox_right_bot"><img src="${pageContext.request.contextPath }/images/society/bot2.png" /></div></li>
    </ul>
  </div>
</div>


<div class="friendbox">
   <ul>
     <li>
       <div class="friendbox_top"><img src="${pageContext.request.contextPath }/images/society/top3.png" /><span class="anyleft">友好商会</span></div>
     </li>
     <li>
       <div class="friendbox_mid">
         <ul>
           <li>
             <div class="friendbox_imgbox">
               <div class="friendbox_img"><a href="listFriendBlue.action?continent=1"><img src="${pageContext.request.contextPath }/images/society/oc.png" /></a></div>
               <div class="friendbox_ocean"><a href="listFriendBlue.action?continent=1">亚洲</a></div>
             </div>
           </li>
           <li>
             <div class="friendbox_imgbox">
               <div class="friendbox_img"><a href="listFriendBlue.action?continent=2"><img src="${pageContext.request.contextPath }/images/society/oc.png" /></a></div>
               <div class="friendbox_ocean"><a href="listFriendBlue.action?continent=2">欧洲</a></div>
             </div>
           </li>
           <li>
             <div class="friendbox_imgbox">
               <div class="friendbox_img"><a href="listFriendBlue.action?continent=3"><img src="${pageContext.request.contextPath }/images/society/oc.png" /></a></div>
               <div class="friendbox_ocean"><a href="listFriendBlue.action?continent=3">北美洲</a></div>
             </div>
           </li>
           <li>
             <div class="friendbox_imgbox">
               <div class="friendbox_img"><a href="listFriendBlue.action?continent=4"><img src="${pageContext.request.contextPath }/images/society/oc.png" /></a></div>
               <div class="friendbox_ocean"><a href="listFriendBlue.action?continent=4">南美洲</a></div>
             </div>
           </li>
           <li>
             <div class="friendbox_imgbox">
               <div class="friendbox_img"><a href="listFriendBlue.action?continent=5"><img src="${pageContext.request.contextPath }/images/society/oc.png" /></a></div>
               <div class="friendbox_ocean"><a href="listFriendBlue.action?continent=5">非洲</a></div>
             </div>
           </li>
           <li>
             <div class="friendbox_imgbox">
               <div class="friendbox_img"><a href="listFriendBlue.action?continent=6"><img src="${pageContext.request.contextPath }/images/society/oc.png" /></a></div>
               <div class="friendbox_ocean"><a href="listFriendBlue.action?continent=6">大洋洲</a></div>
             </div>
           </li>
         </ul>
       </div>
     </li>
     <li>
       <div class="friendbox_bot"><img src="${pageContext.request.contextPath }/images/society/bot3.png" /></div>
     </li>
   </ul>
</div>



<div class="anynav">
  <div class="anynav_title"><span>群站导航</span></div>
  <div class="anynav_list clearfix">
   <ul>
     <li><a>中国国际贸委员会北京市分会</a>|</li>
     <li><a>中国国际贸易促进委员会北京市分会</a>|</li>
     <li><a>中国国际贸易促进委员会北京市分会</a></li>
     <li><a>中国国际贸易员会北京市分会</a>|</li>
     <li><a>进委员会北京市分会</a>|</li>
     <li><a>中国国际贸易促进委员会北京市分会</a></li>
      <li><a>中国国际贸委员会北京市分会</a>|</li>
     <li><a>中国国际贸易促进委员会北京市分会</a>|</li>
     <li><a>中国国际贸易促进委员会北京市分会</a></li>
     <li><a>中国国际贸易员会北京市分会</a>|</li>
     <li><a>进委员会北京市分会</a>|</li>
     <li><a>中国国际贸易促进委员会北京市分会</a></li>
   </ul>
  </div>
</div>




<div class="clear"></div>
<div class="bottombox" id="bot">
 <ul>
   <li><a>平台介绍</a> | <a>平台动态</a> | <a>媒体关注</a> | <a>服务团队</a> | <a>联系我们</a></li>
   <li>Copyright Reserved © 中国国际贸易促进委员会东城区支会</li>
 </ul>
</div>

</body>
</html>
