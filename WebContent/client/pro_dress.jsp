<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="../error.jsp"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>婚纱</title>
<link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
<script type="text/javascript" src="${ctx}/static/js/js.js"></script>
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
<link href='#css?family=Dosis:200,300,400,500,600,700,800' 	rel='stylesheet' type='text/css'>
<link href="${ctx}/static/style/type/fontello.css" rel="stylesheet">
<link href="${ctx}/static/style/type/budicons.css" rel="stylesheet">
<link href="${ctx}/static/assets/css/pagination.css" rel="stylesheet">
<!--  -->
 <link rel="stylesheet" href="${ctx}/static/assets/brand_story/assets/css/main.css">
</head>

<body>
<div class="body-wrapper" >
	<%@ include file="top1.jsp"%>
  <div class="light-wrapper" >
    <div class="container inner">
      <h2 class="section-title text-center">婚纱</h2>
	</div>
  </div>
  <section class="destination-section pt-120 pb-120" style="margin-top: -100px;">
    <div class="container">
      <div class="row mb-none-30">
       <c:forEach items="${prodress.list }" var="dress">
        <div class="col-lg-4 col-sm-6">
          <div class="destination-item mb-30">
            <div class="thumb">
            <a href="${ctx}/getdressByid?pid=${dress.pid}">
              <img src="${ctx}/static/${dress.idpicpath}" alt="image"></a>
            </div>
            <div class="content">
              <h3 class="place-name"><a href="${ctx}/getdressByid?pid=${dress.pid}">
              ${dress.dname }</a></h3>
              <div class="info">
                <span ><i class="budicon-cash-yen"></i>价格: ${dress.dprice}</span>
                <span>
					<c:if test="${loginUser.uid == null }">
		            	<a href="#" class="more" onclick="noMan()">加入购物车</a> 
					 	<a href="#"><i class="budicon-shopping-cart"></i></a>
		            </c:if>
		            <c:if test="${loginUser.uid != null }">
		            	<a href="${ctx }/addcart?op=pid&id=${dress.pid}&uid=${loginUser.uid }" class="more">加入购物车</a> 
					 	<a href="${ctx }/addcart?op=pid&id=${dress.pid}&uid=${loginUser.uid }"><i class="budicon-shopping-cart"></i></a> 
		            </c:if></span>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
      <div class="pagination">
        <ul>
          <li><a href="${ctx}/getdressList?currpage=${prodress.pageNum-1}">上一页</a></li>
          <c:forEach items="${prodress.navigatepageNums }" var="page_Num">
			 <c:if test="${page_Num == prodress.pageNum }">
			    <li class="active"><a href="#">${page_Num}</a></li>
			 </c:if>
			 <c:if test="${page_Num != prodress.pageNum }">
			 <li>
			   <a href="${ctx}/getdressList?currpage=${page_Num}">${page_Num}</a>
			 </li>
			</c:if>
		</c:forEach>
          <li><a href="${ctx}/getdressList?currpage=${prodress.pageNum+1}">下一页</a></li>
        </ul>
      </div>
    </div>
  </section>
  <%@ include file="footer.jsp"%>
</div>
</body>
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
<!--  -->
 <script src="${ctx}/static/assets/brand_story/assets/js/main.js"></script>
</html>