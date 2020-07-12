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
        <title>找回密码</title>

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
	<form action="Password.jsp"  name="myForm" onsubmit="return validateForm()">
		<section class="signin signup">
			<div class="container">

				<div class="sign-content">
					<h2>找回密码</h2>
					
					<div class="row">
						<div class="col-sm-12">
							<div class="signin-form">
									
									<div class="form-group">
										<label for="username">用户名：</label>
									    <input type="text" name="username" class="form-control" id="username" placeholder="请输入用户名" oninput="checkinput('username')">
									    <div style="display: none"><input value="false" id="username-check"></div>
									</div><!--/.form-group -->
									
									<div class="form-group">
										<label for="email">电子邮箱：</label>
									    <input type="email" name="email" class="form-control" id="email" placeholder="请输入电子邮箱" oninput="checkinput('email')">
										<div style="display: none"><input value="false" id="email-check"></div>
									</div><!--/.form-group -->
							
									<div class="form-group">
										<label for="captcha">验证码：</label>
									    <input type="text" name="captcha" class="form-control" id="captcha" placeholder="请输入验证码" onblur="onblur()" style="width:40%" oninput="checkinput('captcha')">
										<div style="display: none"><input value="false" id="captcha-check"></div>
										<input class="btn btn-info" type="button" value="获取验证码" id="get-captcha">
										<!-- <input type="button" name="code" class="btn signin_btn" id="verCodeBtn" data-toggle="modal" data-target=".signin_modal"  style="width:20%" value="获取验证码" onclick="settime(this);"/>
							 -->
									</div><!--/.form-group -->
									
									</div><!--/.signin-form -->
						</div><!--/.col -->
					</div><!--/.row -->
					<div class="row">
						<div class="col-sm-12">
							<div class="signin-footer">
								<input type="button" id="submit-btn" value="找回" class="btn signin_btn" data-toggle="modal" data-target=".signin_modal"/>
								
								
								
								<p>
								<li>
									<a href="Login.jsp">登录</a>
								</li>
								<br>
								<li>
									<a href="Register.jsp">注册</a>
								</li>
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
<script type="text/javascript" src="static/tdj/js/jquery-3.4.1.js">
</script>
<script type="text/javascript">

function validateForm(){
	//用户名必填验证
	var name=document.forms["myForm"]["username"].value;//获取要验证的input的内容
	  if (name==null || name=="")
	  {
	    alert("用户名不能为空！！!");
	    return false;
	  }
	  else if(name.length>=20){
		  alert("用户名不能超过20个!");
		  return false;
	  }
	
	 /* //E-mail验证
	  var email=document.forms["myForm"]["email"].value;
	  var fuhao=email.indexOf("@");  //找到@符号所在的位置
	  var dian=email.lastIndexOf(".");  //找到最后一个.所在的位置
	  if (fuhao<1 || dian+2>=email.length){
	    alert("不是正确的 e-mail地址！！！");
	    return false;
	  } */
}


$(function () {
    $("#get-captcha").click(function () {
        if($("#email").val()==""){
            alert("邮箱不能为空");
            $("#email").focus();
            return false;
        } else if($("#email").val().indexOf('@')=='-1'||$("#email").val().indexOf('.com')=='-1'){
            alert("请检查邮箱格式是否正确");
        } else{
        	 $.ajax({
                 url:"checkusername",
                 dataType:"json",
                 type:"post",
                 data:{
                     username:$("#username").val()
                 },
                 success:function(result){
                     if(result==false){
                         alert("没有该账号！！");
                         return false;
                     }else{
          
            $.ajax({
                url:'checkemail',
                datatype : "json",
                type : "post",
                data:{
                    email:$("#email").val()
                },
                success:function (res) {
                    if(res==true){
                        $("#get-captcha").attr("disabled", true);
                        $("#get-captcha").val("发送中...");
                        $.ajax({
                            url:'email/send',
                            datatype : "json",
                            type : "post",
                            data:{
                                email:$("#email").val()
                            },
                            success:function (res) {
                                if(res){
                                    alert("验证码发送成功");
                                    $("#submit-btn").removeAttr("disabled");
                                    var count = 60;
                                    var countdown = setInterval(CountDown, 1000);
                                    function CountDown() {
                                        $("#get-captcha").attr("disabled", true);
                                        $("#get-captcha").val(count + "s");
                                        if (count == 0) {
                                            $("#get-captcha").val("重新获取验证码").removeAttr("disabled");
                                            clearInterval(countdown);                      
                                            $.ajax({
                                                url : "deletecaptcha",
                                                datatype : "json",
                                                type : "post",
                                                success:function () {
                                                    alert("获取验证码失效，请重新获取");
                                                }
                                            })
                                        }
                                        count--;
                                    }
                                }
                            },error:function () {
                                alert("获取验证码失败");
                                $("#get-captcha").val("重新获取验证码").removeAttr("disabled");
                            }
                        })
                    }else{
                        alert("该邮箱不能获取验证码！");
                    }

                }
              })
             }
        	}
    	});
        }
        });
    $("#submit-btn").click(function (){
    	$.ajax({
            url:"checkcaptcha",
            dataType:"json",
            type:"post",
            data:{
                captcha:$("#captcha").val()
            },
            success:function (res) {
                if(res==false){
                    alert("验证码不正确！");
                    return false;
                }else{
                    alert("验证码正确！")
                    $("form").submit();
                    
                }
            }
        	});
    });
  
});


   /*  function checkinput(id) {
    	 if($("#username-check").val()=="true"&&$("#email-check").val()=="true"&&$("#captcha-check").val()=="true"){
             $("#submit-btn").removeAttr("disabled");
         }else{
             $("#submit-btn").attr("disabled", true);
         }
     } */

 
</script>
