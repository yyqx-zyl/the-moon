<%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="style/images/favicon.png">
<title>Frost</title>
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
<div class="body-wrapper" style="margin-top: 50px;">
   <%@ include file="top1.jsp"%>
		<div id="services" class="section anchor">
		    <div class="light-wrapper" style="height: 80px;">
		      <div class="container inner">
		        <h2 class="section-title text-center">风格作品</h2>
		       </div>
		    </div>
		   </div> 
  <div class="light-wrapper">
    <div class="container inner">
      <div class="row">
        <div class="col-sm-8 content">
          <div class="blog-posts classic-blog">
	          <c:forEach items="${designer }" var="designer">
	            <div class="post">
	              <figure class="main"><a href="${ctx}/getdesignerByid?desid=${designer.desid}">
	                 <img src="${ctx}/static/${designer.src}" alt="" /></a>
	              </figure>
	              <div class="post-content">
	                <h2 class="post-title"><a href="${ctx}/getdesignerByid?desid=${designer.desid}">${designer.title }</a></h2>
	                <div class="meta">
	                	<span class="date">${designer.creationDate }</span>
	                </div>
	               </div>
	             </div>
	            </c:forEach>
          </div>
          <!-- /.blog-posts -->
          
        </div>
        <!-- /.content -->
        
        <aside class="col-sm-4 sidebar lp30">
        <!-- 搜索查询 -->
          <!-- <div class="sidebox widget">
          	<div class="section-title">
              <h3 class="widget-title">搜索你想要的</h3>
            </div>
            <form class="searchform" method="get">
              <input type="text" id="s2" name="s" value="type and hit enter" onfocus="this.value=''" onblur="this.value='type and hit enter'"/>
            </form>
          </div> -->
          <!-- /.widget -->
          <!-- 小标签 -->
          <div class="sidebox widget">
            <div class="section-title">
              <h3 class="widget-title">风格</h3>
            </div>
            <ul class="tag-list">
            <li><a href="${ctx}/getdesignerList">全部</a></li>
            <c:forEach items="${cate}" var="cate" begin="3" end="11">
            	<li><a href="${ctx}/tgetdesignerList?caid=${cate.caid }">${cate.cname }</a></li>
            </c:forEach>
            </ul>
            <!-- /.tag-list --> 
          </div>
          <!-- /.widget -->
          <!-- /.widget --> 
        </aside>
        <!-- /.col-sm-4 .sidebar --> 
        
      </div>
      <!-- /.row --> 
      
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.light-wrapper -->
   <%@ include file="footer.jsp" %>
  <!-- /footer --> 
</div>
<!-- .body-wrapper --> 
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