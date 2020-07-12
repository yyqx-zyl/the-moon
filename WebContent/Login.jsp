<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!doctype html>
<html lang="en">

<head>
<!-- meta data -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!--font-family-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext"
	rel="stylesheet">

<!-- title of site -->
<title>登录</title>

<!-- For favicon png -->
<link rel="shortcut icon" type="image/icon"
	href="${ctx}/static/tdj/logo/favicon.png" />

<!--font-awesome.min.css-->
<link rel="stylesheet" href="${ctx}/static/tdj/css/font-awesome.min.css">

<!--animate.css-->
<link rel="stylesheet" href="${ctx}/static/tdj/css/animate.css">

<!--bootstrap.min.css-->
<link rel="stylesheet" href="${ctx}/static/tdj/css/bootstrap.min.css">

<!-- bootsnav -->
<link rel="stylesheet" href="${ctx}/static/tdj/css/bootsnav.css">

<!--style.css-->
<link rel="stylesheet" href="${ctx}/static/tdj/css/style.css">

<!--responsive.css-->
<link rel="stylesheet" href="${ctx}/static/tdj/css/responsive.css">
<meta charset="utf-8">
</head>
<body>
	<!-- 导航条 -->

	<div class="body-wrapper">
		<div class="navbar default">
			<div class="navbar-header">
				<div class="container">
					<div class="basic-wrapper">
						<a class="btn responsive-menu pull-right" data-toggle="collapse"
							data-target=".navbar-collapse"> <i class='icon-menu-1'></i></a>


						<nav class="collapse navbar-collapse pull-right">
							<ul class="nav navbar-nav">
								<li
									style="background-color: #33799a; width: 75px; height: 75px; margin-left: -550px">
									<img style="width: 60px; margin-top: 8px; margin-left: 7px"
									src="static/style/images/logo1.png"
									data-src="static/style/images/logo1.png" data-ret=""
									class="retina" />
									<p
										style="color: white; font-size: 10px; margin-left: 7px; margin-top: -2px">TheMoon</p>
								</li>
								<li><a href="getProList">首页</a></li>
								<li><a href="client/about.jsp">公司简介</a></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle js-activated">体验之境</a>
									<ul class="dropdown-menu">
										<li><a href="getdressList">婚纱</a></li>
										<li><a href="getmarryList">婚礼</a></li>
										<li><a href="showMan">婚礼匠人</a></li>
										<li><a href="client/film.jsp">影视制作</a></li>
										<li><a href="client/designer.jsp">最新活动</a></li>
									</ul></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle js-activated">真实之境</a>
									<ul class="dropdown-menu">
										<li><a href="getAllList">真实客照</a></li>
										<li><a href="client/customer_Forum.jsp">客户论坛</a></li>
									</ul></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle js-activated">关于我们</a>
									<ul class="dropdown-menu">
										<li><a href="${ctx}/client/brand_story.jsp">品牌故事</a></li>
										<li><a href="${ctx}/client/contact.jsp">联系我们</a></li>
									</ul></li>
								<c:if test="${loginUser.username == null }">
									<li><a href="Login.jsp">登录</a></li>
									<li><a href="Register.jsp">注册</a></li>
								</c:if>
								<c:if test="${loginUser.username != null }">
									<li><a href="${ctx}/userShow">用户名:${loginUser.username }</a></li>
									<li><a href="${ctx }/loginOut">注销</a></li>
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
		<form action="${ctx}/login" method="post" name="myForm"
			onsubmit="return validateForm()">
			<!-- signin end -->
			<section class="signin">
				<div class="container">

					<div class="sign-content">
						<h2>登录</h2>

						<div class="row">
							<div class="col-sm-12">
								<div class="signin-form">
									<form action="Login.jsp">
										<div class="form-group">
											<label for="signin_form">用户名：</label> <input type="text"
												name="username" class="form-control" id="signin_form"
												placeholder="请输入用户名">
										</div>
										<!--/.form-group -->
										<div class="form-group">
											<label for="signin_form">密码：</label> <input type="password"
												name="userpassword" class="form-control" id="signin_form"
												placeholder="请输入密码">
										</div>
										<!--/.form-group -->
										<div class="form-group">
											<label for="signin_form">验证码：</label> <input type="text"
												name="code" class="form-control" id="signin_form"
												placeholder="请输入验证码" style="width: 40%" onblur="checkCode()">
											<img id="codeImg" src="" /> <a
												href="javascript:changeImg();">看不清？换一张</a>
										</div>
										<!--/.form-group -->
									</form>
									<!--/form -->
								</div>
								<!--/.signin-form -->
							</div>
							<!--/.col -->
						</div>
						<!--/.row -->

						<div class="row">
							<div class="col-sm-12">
								<div class="signin-password">
									<div class="awesome-checkbox-list">
										<ul class="unstyled centered">
											<li><a href="ChangeCode.jsp">修改密码</a></li>
											<li><a href="FindPassword.jsp">忘记密码？找回</a></li>
										</ul>
									</div>
									<!--/.awesome-checkbox-list -->
								</div>
								<!--/.signin-password -->
							</div>
							<!--/.col -->
						</div>
						<!--/.row -->
						<div class="row">
							<div class="col-sm-12">
								<div class="signin-footer">
									<button type="submit" class="btn signin_btn"
										data-toggle="modal" data-target=".signin_modal">登录</button>
									<p>
										还没有账户？ <a href="Register.jsp">注册</a>
									</p>
								</div>
								<!--/.signin-footer -->
							</div>
							<!--/.col-->
						</div>
						<!--/.row -->

					</div>
					<!--/.sign-content -->

				</div>
				<!--/.container -->

			</section>
			<!--/.signin -->

			<!-- signin end -->

			<!--footer copyright start -->
			<footer class="footer-copyright">
				<div id="scroll-Top">
					<i class="fa fa-angle-double-up return-to-top" id="scroll-top"
						data-toggle="tooltip" data-placement="top" title=""
						data-original-title="Back to Top" aria-hidden="true"></i>
				</div>
				<!--/.scroll-Top-->

			</footer>
			<!--/.hm-footer-copyright-->
			<!--footer copyright  end -->


			<!-- Include all js compiled plugins (below), or include individual files as needed -->

			<script src="${ctx}/static/tdj/js/jquery.js"></script>

			<!--modernizr.min.js-->
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

			<!--bootstrap.min.js-->
			<script src="${ctx}/static/tdj/js/bootstrap.min.js"></script>

			<!-- bootsnav js -->
			<script src="${ctx}/static/tdj/js/bootsnav.js"></script>

			<!-- jquery.sticky.js -->
			<script src="${ctx}/static/tdj/js/jquery.sticky.js"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>


			<!--Custom JS-->
			<script src="${ctx}/static/tdj/js/custom.js"></script>
		</form>
		<div>
			<%@ include file="client/footer.jsp"%>
		</div>
</body>

</html>
<script type="text/javascript">
	/* 
	 function toLogin(){ 
	 var $isok=$("#isok").val();
	 alert($isok);
	
	 if($isok=="1"){
	 alert("审核未通过，请等待审核!");
	
	 }else if($isok=="2"){
	 alert("审核通过！");
	
	 }
	
	 $.get("${ctx}/clearisOk");
	
	 } 

	 */

	$(function() {
		changeImg();
	});
	// 定义一个当src发生改变时就到后台去获得一个随机的验证码
	function changeImg() {
		// 获得验证码图片元素 使用JavaScript获得
		var img = document.getElementById("codeImg");
		// 当src的路径发生改变，都会到后台去请求一次
		// new Date().getTime() 避免浏览器不去后台请求数据，因为有缓存
		img.src = "${ctx}/CodeImg?" + new Date().getTime();

	}

	function checkCode() {
		var code1 = document.forms["myForm"]["code"].value;
		$.post("${ctx}/CodeServlet", {
			"code" : code1
		}, function(data) {
			alert(data);
		});
	}

	function validateForm() {
		//用户名必填验证
		var name = document.forms["myForm"]["userName"].value;//获取要验证的input的内容
		if (name == null || name == "") {
			alert("用户名不能为空！！!");
			return false;
		} else if (name.length >= 20) {
			alert("用户名不能超过20个!");
			return false;
		}
		//密码验证只能是字母和数字 
		var num = document.forms["myForm"]["userPassword"].value;
		var num1 = /^[0-9a-zA-Z]*$/;
		if (num == "" || num == null) {
			alert("密码不能为空！");
			return false;
		} else if (!num1.test(num)) {
			alert("只能输入是字母或者数字,请重新输入!");
			return false;
		}
		if (num.length < 6) {
			alert("密码至少6位！");
			return false;
		}

	}
</script>