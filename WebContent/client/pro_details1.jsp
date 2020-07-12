<%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
    pageEncoding="UTF-8"%>
         <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="${ctx}/static/style/images/favicon.png">
<title>Frost</title>
<!-- Bootstrap core CSS -->
<link rel="shortcut icon" href="${ctx}/static/style/images/favicon.png">
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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="style/images/favicon.png">
<title>Frost</title>
<!-- Bootstrap core CSS -->
<link href="style/css/bootstrap.css" rel="stylesheet">
<link href="style/css/settings.css" rel="stylesheet">
<link href="style/css/owl.carousel.css" rel="stylesheet">
<link href="style/js/google-code-prettify/prettify.css" rel="stylesheet">
<link href="style/js/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
<link href="style/js/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.2" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet">
<link href="style/css/color/blue.css" rel="stylesheet">
<link href='#css?family=Josefin+Sans:400,600,700,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
<link href='#css?family=Raleway:400,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='#css?family=Dosis:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
<link href="style/type/fontello.css" rel="stylesheet">
<link href="style/type/budicons.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="style/js/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
</head>
<body>
<div class="body-wrapper">
   <%@ include file="top1.jsp" %>
  <div class="offset"></div>
  <div class="pcw">
    <div class="container inner">
      <div class="owl-carousel portfolio-slider custom-controls"  style="width: 1170px;height: 650px; overflow: hidden;">
        <c:forEach items="${mimgs }" var="imgs" >
        	<div class="item"><img src="${ctx}/static/${imgs.src}" /></div>
        </c:forEach>
      </div>
      <div class="divide30"></div>
      <h1 class="post-title">${marrygetByid.mname}</h1>
      <div class="row">
        <div class="col-sm-8">
          <p>${marrygetByid.mdesc }</p>
          <a href="#" class="btn">加入购物车</a>
           <h3 class="share-button">
		        <span class="colored">
		        	<c:if test="${loginUser.uid == null }"> 
					 	<a href="#" onclick="noMan()"><i class="budicon-shopping-cart"></i></a>
		            </c:if>
		            <c:if test="${loginUser.uid != null }">
		            	<a href="${ctx }/addcart?op=mid&id=${marrygetByid.mid }&uid=${loginUser.uid }"><i class="budicon-shopping-cart"></i></a>
		            </c:if>
		        	  
		        </span> 
			    </h3>
        </div>
        <!-- /.col-sm-8 -->
        <div class="col-sm-4 lp30">
          <ul class="item-details">
            <li>
              <h4>价格:</h4>
              ${marrygetByid.mprice }</li>
          </ul>
        </div>
        <!-- /.col-sm-4 --> 
      </div>
      <!-- /.row --> 
      
    </div>
   <!--  <div class="dark-wrapper">
      <div class="container inner text-center">
        <h1 class="share-button">Click <span class="colored">&</span> Share the Love</h1>
        <div class="share-links">
          <ul>
            <li><a class="btn share-facebook" href="#">Like</a></li>
            <li><a class="btn share-twitter" href="#">Tweet</a></li>
            <li><a class="btn share-pinterest" href="#">Pin it</a></li>
          </ul>
        </div>
        /.share-links 
      </div>
      /.container 
    </div> -->
    <!-- /.dark-wrapper --> 
  </div>
  <!-- /.pcw -->
<%@ include file="footer.jsp"%>
</div>
<script type="text/javascript">
	function noMan(){
		alert("请登录后添加购物车！！");
		window.location.href = "${ctx}/Login.jsp"
	}
</script>
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
</body>
</html>