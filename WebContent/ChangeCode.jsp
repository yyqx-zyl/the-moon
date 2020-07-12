<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">
        
        <!-- title of site -->
        <title>修改密码</title>

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
</head>
<body>
	<form action="updatePassword" method="post" name="myForm" onsubmit="return validateForm()">
		<section class="signin signup">
			<div class="container">

				<div class="sign-content">
					
					<h2>修改密码</h2>
					
					<div class="row">
						<div class="col-sm-12">
							<div class="signin-form">
									
									<div class="form-group">
										<label for="username">用户名：</label>
									    <input type="text" name="username" class="form-control" id="signin_form" placeholder="请输入用户名">
									</div><!--/.form-group -->
									<div class="form-group">
										<label for="oldPwd">原始密码：</label>
									    <input type="password" name="userpassword" class="form-control" id="signin_form" placeholder="请输入原始密码">
									</div><!--/.form-group -->
									<div class="form-group">
										<label for="newpassword">新的密码：</label>
									    <input type="password" name="newpassword" class="form-control" id="signin_form" placeholder="请输入新的密码">
									</div><!--/.form-group -->
									<div class="form-group">
										<label for="newPwd2">确认新密码：</label>
									    <input type="password" name="newpassword1" class="form-control" id="signin_form" placeholder="确认新的密码">
									</div><!--/.form-group -->
									
									</div><!--/.signin-form -->
						</div><!--/.col -->
					</div><!--/.row -->
					<div class="row">
						<div class="col-sm-12">
							<div class="signin-footer">
								<button type="submit"  class="btn signin_btn" data-toggle="modal" data-target=".signin_modal">
								确认修改
								</button>
								<p>
									还没有账号？
									<a href="Register.jsp">注册</a>
								</p>
							</div><!--/.signin-footer -->
						</div><!--/.col-->
					</div><!--/.row -->
						</div><!--/.sign-content -->

				
			</div><!--/.container -->

		</section><!--/.signin -->
		<!--footer copyright start -->
			<footer class="footer-copyright">
				<div id="scroll-Top">
					<i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
				</div><!--/.scroll-Top-->
	
			</footer><!--/.hm-footer-copyright-->
			<!--footer copyright  end -->

	</form>
</body>
</html>
<script type="text/javascript" src="${ctx}static/tdj/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
function validateForm(){
		//验证密码是否一致
        var num=document.forms["myForm"]["newpassword"].value;
        var num1=document.forms["myForm"]["newpassword1"].value;
        if (num != num1) {
            alert("两次密码不一致!");
            return false;
        }
      //密码验证只能是字母和数字 
		var num=document.forms["myForm"]["newpassword"].value;
        var num1=/^[0-9a-zA-Z]*$/;
        if (num==""||num==null) {
        	alert("密码不能为空！");
        	return false;
        }else if(!num1.test(num)){
        	alert("只能输入是字母或者数字,请重新输入!");
            return false;
        }
        if(num.length<6){
        	alert("密码至少6位！");
        	return false;
        }
	
}



</script>