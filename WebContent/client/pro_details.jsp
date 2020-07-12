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
<body>
<div class="body-wrapper">
   <%@ include file="top1.jsp" %>
  <div class="offset"></div>
   
<div class="pcw">
    <div class="container inner">
      <h1 class="post-title text-center">${dressgetByid.dname }</h1>
      <p class="text-center">${dressgetByid.ddesc }</p>
      
      <div class="divide25"></div>
      <ul class="basic-gallery text-center">
      <c:forEach items="${imgs }" var="imgs" > <!-- width="770" height="530" alt=""  -->
         <li><div class="item"><img src="${ctx}/static/${imgs.src}" width="900" height="650" alt="" /></div></li>
      </c:forEach> 
      </ul>
    </div>
    
    
    <div class="dark-wrapper">
      <div class="container inner text-center">
        <h1 class="share-button">价格：${dressgetByid.dprice } 
        <span class="colored">
        			<c:if test="${loginUser.uid == null }"> 
					 	<a href="#" onclick="noMan()"><i class="budicon-shopping-cart"></i></a>
		            </c:if>
		            <c:if test="${loginUser.uid != null }">
		            	<a href="${ctx }/addcart?op=pid&id=${dressgetByid.pid}&uid=${loginUser.uid }"><i class="budicon-shopping-cart"></i></a> 
		            </c:if>
        	  
        </span> 
	    </h1>
        <!-- /.share-links --> 
      </div>
      <!-- /.container --> 
    </div>
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
<!-- .body-wrapper --> 
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