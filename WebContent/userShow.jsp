<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html  lang="en">

    <head>
        <!-- meta data -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">
        
        <!-- title of site -->
        <title>用户信息</title>

        <!-- For favicon png -->
		<link rel="shortcut icon" type="image/icon" href="static/tdj/logo/favicon.png"/>
       
        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="static/tdj/css/font-awesome.min.css">
		
		<!--animate.css-->
        <link rel="stylesheet" href="static/tdj/css/animate.css">
		
        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="static/tdj/css/bootstrap.min.css">
		
		<!-- bootsnav -->
		<link rel="stylesheet" href="static/tdj/css/bootsnav.css" >	
        
        <!--style.css-->
        <link rel="stylesheet" href="static/tdj/css/style.css">
        
        <!--responsive.css-->
        <link rel="stylesheet" href="static/tdj/css/responsive.css">
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
  	<div>
	<%@ include file="client/top2.jsp" %>
	</div>
  
		
		<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
		
		<!-- signin end -->
		<section class="signin signup">
			<div class="container">

				<div class="sign-content">
					<h2 style="margin-top: 90px">用户信息</h2>
					
				<form action="userUpdate"  method="post" >
					<div class="row">
						<div class="col-sm-12">
							<div class="signin-form">
									<div class="form-group">
									    <input type="hidden" name="uid" value="${userShow.uid }" class="form-control" id="signin_form" >
									</div><!--/.form-group -->
									<div class="form-group">
										<label for="signin_form">用户名：</label>
									    <input type="text" name="name" readonly="readonly" value="${userShow.username }" class="form-control" id="signin_form" >
									</div><!--/.form-group -->
									
									<div class="form-group">
										<label for="signin_form">性别：</label>
										<c:if test="${userShow.sex ==1 }">
											<input type="radio" name="sex"  checked="checked" value="1">男
									        <input type="radio" name="sex" value="2">女
										</c:if>
									    <c:if test="${userShow.sex ==2 }">
											<input type="radio" name="sex" value="1">男
									        <input type="radio" name="sex"  checked="checked"  value="2">女
										</c:if>
									</div><!--/.form-group -->
									<div class="form-group">
										<label for="signin_form" >生日：</label>
										<fmt:formatDate value="${userShow.birthday }"  var="bir"  pattern="yyyy-MM-hh"/> 
									    <input type="date" name="birthday"  value="${bir }" class="form-control" id="signin_form"/> 
									</div><!--/.form-group -->
									<div class="form-group">
										<label for="signin_form">电话号码：</label>
									    <input type="text" name="phone" value="${userShow.phone }" class="form-control" id="signin_form" >
									</div><!--/.form-group -->
									<div class="form-group">
										<label for="signin_form">地址：</label>
									    <input type="text" name="address"  value="${userShow.address }" class="form-control" id="signin_form" >
									</div>
							</div><!--/.signin-form -->
						</div><!--/.col -->
						<div class="col-sm-12">
							<div class="signin-footer">
								<input type="submit" value="修改信息"  id="butUpdate" class="btn signin_btn" data-toggle="modal" data-target=".signin_modal">
							</div><!--/.signin-footer -->
						</div><!--/.col-->
					</div><!--/.row -->
         		 </form>

				</div><!--/.sign-content -->

				
			</div><!--/.container -->

		</section><!--/.signin -->
		
		<!-- signin end -->

		<!--footer copyright start -->
		<footer class="footer-copyright">
			<div id="scroll-Top">
				<i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
			</div><!--/.scroll-Top-->

		</footer><!--/.hm-footer-copyright-->
		<!--footer copyright  end -->


		 <!-- Include all js compiled plugins (below), or include individual files as needed -->

		<script src="static/tdj/js/jquery.js"></script>
        
        <!--modernizr.min.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
		
		<!--bootstrap.min.js-->
        <script src="static/tdj/js/bootstrap.min.js"></script>
		
		<!-- bootsnav js -->
		<script src="static/tdj/js/bootsnav.js"></script>
		
		<!-- jquery.sticky.js -->
		<script src="static/tdj/js/jquery.sticky.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
		
        
        <!--Custom JS-->
        <script src="static/tdj/js/custom.js"></script>
		</form>
		
		<footer class="footer">
    <div class="container inner">
      <p class="pull-left">© 2014 Frost. All rights reserved. More Templates <a href="http://www.moobnn.com/" target="_blank" title="模板在线">模板在线</a> <a href="http://guantaow.taobao.com" target="_blank">厚朴网络 淘宝店</a> - Collect from <a href="http://www.moobnn.com/" title="模板在线" target="_blank">模板在线</a> <a href="http://guantaow.taobao.com" target="_blank">厚朴网络 淘宝店</a>.</p>
      <ul class="social pull-right">
        <li><a href="#"><i class="icon-s-rss"></i></a></li>
        <li><a href="#"><i class="icon-s-twitter"></i></a></li>
        <li><a href="#"><i class="icon-s-facebook"></i></a></li>
        <li><a href="#"><i class="icon-s-dribbble"></i></a></li>
        <li><a href="#"><i class="icon-s-pinterest"></i></a></li>
        <li><a href="#"><i class="icon-s-instagram"></i></a></li>
        <li><a href="#"><i class="icon-s-vimeo"></i></a></li>
      </ul>
    </div>
    <!-- .container --> 
  </footer>
  <!-- /footer --> 
    </body>
    <script type="text/javascript">

$("#butUpdate").click(function(){
	alert("修改!");
});
	
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
</html>

