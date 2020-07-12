<%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>真实客照</title>
<!-- Bootstrap core CSS -->
<link href="${ctx}/static/style/css/bootstrap.css" rel="stylesheet"/>
<link href="${ctx}/static/style/css/settings.css" rel="stylesheet"/>
<link href="${ctx}/static/style/css/owl.carousel.css" rel="stylesheet"/>
<link href="${ctx}/static/style/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<link href="${ctx}/static/style/js/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
<link href="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.2" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style.css" rel="stylesheet"/>
<link href="${ctx}/static/style/css/color/blue.css" rel="stylesheet"/>
<link href='#css?family=Josefin+Sans:400,600,700,400italic,600italic,700italic' rel='stylesheet' type='text/css'/>
<link href='#css?family=Raleway:400,300,500,600,700,800,900' rel='stylesheet' type='text/css'/>
<link href='#css?family=Dosis:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'/>
<link href="${ctx}/static/style/type/fontello.css" rel="stylesheet"/>
<link href="${ctx}/static/style/type/budicons.css" rel="stylesheet"/>
<!--  -->
  <link rel="stylesheet" href="${ctx}/static/assets/brand_story/assets/css/main.css">
</head>

<body>
<div class="body-wrapper">
  <%@ include file="top1.jsp"%>
  <div class="light-wrapper" >
    <div class="container inner">
      <h2 class="section-title text-center">真实客照</h2>
	</div>
  </div>
</div>
<section class="destination-list-section pt-120 pb-120" style="margin-top: -200px;"> 
    <div class="container">
      <div class="row mb-none-30 mt-50">
      <c:forEach items="${pageInfo.list }" var="realphoto">
      	<div class="col-lg-4 col-sm-6">
          <div class="destination-item mb-30">
            <div class="thumb">
              <img src="${ctx}/static/${realphoto.realimg }" alt="image">
            </div>
            <div class="content">
              <h3 class="place-name">
              <i class="fa fa-map-marker"></i>${realphoto.realname }</h3>
              <div class="info">
                <span >
                <i class="budicon-clock"></i>
                <fmt:formatDate value="${realphoto.time }" pattern="yyyy-MM-hh" />
                </span>
              </div>
            </div>
          </div>
        </div><!-- destination-item end -->
      </c:forEach>
      </div>
      <div class="pagination">
				<ul>
					<li><a href="${ctx}/getAllList?currpage=${pageInfo.pageNum-1}">上一页</a></li>
					<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
						<c:if test="${page_Num == pageInfo.pageNum }">
							<li class="active"><a href="#">${page_Num}</a></li>
						</c:if>
						<c:if test="${page_Num != pageInfo.pageNum }">
							<li><a href="${ctx}/getAllList?currpage=${page_Num}">${page_Num}</a>
							</li>
						</c:if>
					</c:forEach>
					<li><a href="${ctx}/getAllList?currpage=${pageInfo.pageNum+1}">下一页</a></li>
				</ul>
			</div>
    </div>
  </section>
  <!-- destination-list-section end -->
  
  <!-- 尾部 -->
	<%@ include file="footer.jsp"%>
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
<!--  -->
 <script src="${ctx}/static/assets/brand_story/assets/js/main.js"></script>
</html>