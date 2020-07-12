<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>婚庆</title>
<!-- Bootstrap core CSS -->
<link href="${ctx}/static/style/css/bootstrap.css" rel="stylesheet">
<link href="${ctx}/static/style/css/settings.css" rel="stylesheet">
<link href="${ctx}/static/style/css/owl.carousel.css" rel="stylesheet">
<link href="${ctx}/static/style/js/google-code-prettify/prettify.css" rel="stylesheet">
<link href="${ctx}/static/style/js/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
<link href="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.2" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style.css" rel="stylesheet">
<link href="${ctx}/static/style/css/color/blue.css" rel="stylesheet">
<link href='#css?family=Josefin+Sans:400,600,700,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
<link href='#css?family=Raleway:400,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='#css?family=Dosis:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
<link href="${ctx}/static/style/type/fontello.css" rel="stylesheet">
<link href="${ctx}/static/style/type/budicons.css" rel="stylesheet">
</head>
<body>

<!-- 导航条 -->
	 
	<div class="body-wrapper">
<div class="navbar default">
    <div class="navbar-header">
      <div class="container">
        <div class="basic-wrapper"> 
        <a class="btn responsive-menu pull-right" data-toggle="collapse" data-target=".navbar-collapse">
        <i class='icon-menu-1'></i></a> 
        
        
        <nav class="collapse navbar-collapse pull-right">
          <ul class="nav navbar-nav">
            <li style="background-color: #33799a; width: 75px; height: 75px; margin-left: -420px">
          <img style="width: 60px;margin-top: 8px; margin-left: 7px" 
          src="static/style/images/logo1.png"  data-src="static/style/images/logo1.png" data-ret="" class="retina" />
           <p style="color: white;font-size: 10px; margin-left: 7px;margin-top: -2px" >TheMoon</p>
          </li>  
            <li><a href="getProList">首页</a></li>
            <li><a href="client/about.jsp">公司简介</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle js-activated">体验之境</a>
              <ul class="dropdown-menu">
                <li><a href="getdressList">婚纱</a></li>
	            <li><a href="getmarryList">婚礼</a></li>
	            <li><a href="showMan">婚礼匠人</a></li>
	            <li><a href="client/film.jsp">影视制作</a></li>
	            <li><a href="client/designer.jsp">最新活动</a></li>
              </ul>
            </li>
            <li class="dropdown"><a href="#" class="dropdown-toggle js-activated">真实之境</a>
              <ul class="dropdown-menu">
              	<li><a href="getAllList">真实客照</a></li>
                <li><a href="client/customer_Forum.jsp">客户论坛</a></li>
              </ul>
            </li>
            <li class="dropdown"><a href="#" class="dropdown-toggle js-activated">关于我们</a>
              <ul class="dropdown-menu">
                <li><a href="${ctx}/client/brand_story.jsp">品牌故事</a></li>
	            <li><a href="${ctx}/client/contact.jsp">联系我们</a></li>
              </ul>
            </li>
            <c:if test="${loginUser.username == null }">
            	<li><a href="Login.jsp">登录</a></li>
            	<li><a href="Register.jsp">注册</a></li>
            </c:if>
            <c:if test="${loginUser.username != null }">
            	<li><a href="${pageContext.request.contextPath }/userShow">用户名:${loginUser.username }</a></li>
            	<li><a href="${ctx }/loginOut">退出</a></li>
            	<li><a href="${ctx }/shoppingcart?${loginUser.uid}">购物车</a></li>
            </c:if>
            <!-- 用户名显示 -->
          </ul>
        </nav>
      </div>
    </div>
    <!--/.nav-collapse --> 
  </div>
 </div>
 
 <!-- 导航条 -->
</body>
<script src="${ctx}/static/style/js/jquery.min.js"></script> 
<script src="${ctx}/static/style/js/bootstrap.min.js"></script> 
<script src="${ctx}/static/style/js/twitter-bootstrap-hover-dropdown.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.themepunch.plugins.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.themepunch.revolution.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.easytabs.min.js"></script> 
<script src="${ctx}/static/style/js/owl.carousel.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.isotope.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.fitvids.js"></script> 
<script src="${ctx}/static/style/js/jquery.fancybox.pack.js"></script> 
<script src="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script> 
<script src="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-media.js?v=1.0.0"></script> 
<script src="${ctx}/static/style/js/jquery.slickforms.js"></script> 
<script src="${ctx}/static/style/js/instafeed.min.js"></script> 
<script src="${ctx}/static/style/js/retina.js"></script> 
<script src="${ctx}/static/style/js/google-code-prettify/prettify.js"></script> 
<script src="${ctx}/static/style/js/scripts.js"></script>
</html>
