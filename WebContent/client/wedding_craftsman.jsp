<%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>匠人</title>
<link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
<script type="text/javascript" src="${ctx}/static/js/js.js"></script>
<!-- Bootstrap core CSS -->
<link href="${ctx}/static/style/css/bootstrap.css" rel="stylesheet">
<link href="${ctx}/static/style/css/settings.css" rel="stylesheet">
<link href="${ctx}/static/style/css/owl.carousel.css" rel="stylesheet">
<link href="${ctx}/static/style/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="${ctx}/static/style/js/fancybox/jquery.fancybox.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.2"
	rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style.css" rel="stylesheet">
<link href="${ctx}/static/style/css/color/blue.css" rel="stylesheet">
<link
	href='#css?family=Josefin+Sans:400,600,700,400italic,600italic,700italic'
	rel='stylesheet' type='text/css'>
<link href='#css?family=Raleway:400,300,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link href='#css?family=Dosis:200,300,400,500,600,700,800'
	rel='stylesheet' type='text/css'>
<link href="${ctx}/static/style/type/fontello.css" rel="stylesheet">
<link href="${ctx}/static/style/type/budicons.css" rel="stylesheet">
</head>

<body>
	<div class="body-wrapper">
		<%@ include file="top1.jsp"%>
		<div id="home" class="section">
			<div class="light-wrapper" style="height: 100px;">
				<div class="fullscreenbanner-container revolution">
					<div class="fullscreenbanner">
						<ul style="height: 50px;">
						
						</ul>
						<div class="tp-bannertimer tp-bottom"></div>
					</div>
					<!-- /.fullscreenbanner -->
				</div>
				<!-- /.fullscreenbanner-container -->
			</div>
		</div>
	</div>
	<div class="content width1037">
		<div id="services" class="section anchor">
			<h2 class="section-title text-center">婚庆匠人</h2>
		</div>
		<div class="service" style="width: 1037px;">
			<table style="text-align: center; width: 100%">
				<c:forEach items="${man }" var="li">
					<tr>
						<td class="serTitle">
							<img src="${ctx }/static/images/craftsman/${li.cPath}"
								width="145" height="145" />
							<br/>${li.cSkill }
						</td>
						<td>${li.cAge }岁</td>
						<td class="serTitle2">${li.cName }</td>
						<td>${li.cDescribe }</td>
					</tr>
				</c:forEach>
			</table>
			<div class="clears"></div>
		</div>
		<!--decoration/-->
		<div class="serimg">
			<img src="${ctx}/static/images/craftsman/tuandui.jpg" width="949"
				height="274" /><br /> 
			<img src="${ctx}/static/images/craftsman/tuandui.jpg" width="949"
				height="274" />
		</div>
		<!--serimg/-->
	</div>
	<!--content/-->


	<%@ include file="footer.jsp"%>
</body>
<script src="${ctx}/static/style/js/jquery.min.js"></script>
<script src="${ctx}/static/style/js/bootstrap.min.js"></script>
<script
	src="${ctx}/static/style/js/twitter-bootstrap-hover-dropdown.min.js"></script>
<script src="${ctx}/static/style/js/jquery.themepunch.plugins.min.js"></script>
<script src="${ctx}/static/style/js/jquery.themepunch.revolution.min.js"></script>
<script src="${ctx}/static/style/js/jquery.easytabs.min.js"></script>
<script src="${ctx}/static/style/js/owl.carousel.min.js"></script>
<script src="${ctx}/static/style/js/jquery.isotope.min.js"></script>
<script src="${ctx}/static/style/js/jquery.fitvids.js"></script>
<script src="${ctx}/static/style/js/jquery.fancybox.pack.js"></script>
<script
	src="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>
<script
	src="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
<script src="${ctx}/static/style/js/jquery.slickforms.js"></script>
<script src="${ctx}/static/style/js/instafeed.min.js"></script>
<script src="${ctx}/static/style/js/retina.js"></script>
<script src="${ctx}/static/style/js/google-code-prettify/prettify.js"></script>
<script src="${ctx}/static/style/js/scripts.js"></script>
</html>
