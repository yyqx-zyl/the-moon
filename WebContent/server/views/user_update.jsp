<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>
		<link rel="stylesheet" href="${ctx}/static/assets/css/layui.css">
	    <link rel="stylesheet" href="${ctx}/static/assets/css/view.css"/>
	    <link rel="stylesheet" href="${ctx}/static/assets/css/style.css"/>
	</head>
	<body class="layui-tank">
		 <div class="layui-card">
		 	  		 	   <form class="layui-form" action="" id="saveForm">
		 	   	   <input type="hidden" name="uid" value="${user.uid}"/> 
				   <div class="layui-form-item">
					    <label class="layui-form-label">用户名</label>
					    <div class="layui-input-block">
					        <input type="text" name="username"  lay-verify="username" autocomplete="off" value="${user.username}" placeholder="" class="layui-input">
					    </div>					    
					</div>
					<div class="layui-form-item">
					    <label class="layui-form-label">密码</label>
					    <div class="layui-input-block">
					        <input type="text" name="userpassword"  lay-verify="userpassword" autocomplete="off" value="${user.userpassword}"  placeholder="" class="layui-input">
					    </div>					    
					</div>
					<div class="layui-form-item">
					    <label class="layui-form-label">手机号码</label>
					    <div class="layui-input-block">
					        <input type="text" name="phone" lay-verify="phone" autocomplete="off" value="${user.phone}"  placeholder="" class="layui-input">
					    </div>					    
					</div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">地址</label>
					    <div class="layui-input-block">
					         <input type="text" name="address" lay-verify="address" autocomplete="off" value="${user.address}"  placeholder="" class="layui-input">
					    </div>	
					</div>
				</form>				
		 </div>
		 <div class=" tkbtnfxd">
		 
	    	<button type="button" class="layui-btn  layui-btn-normal float-right" lay-submit lay-filter="save" onclick="but_update()">修改</button>
	    </div>
	<script type="text/javascript" src="${ctx}/static/assets/jquery.min.js"></script>  
	<script src="${ctx}/static/assets/layui.all.js"></script>
	<script type="text/javascript" src="${ctx}/static/assets/jquerysession.js"></script>   
	<script type="text/javascript">
		
	var num = 1;
	$(function() {

	 $(".tabs").slide({ trigger: "click" });

	});
		
	
	var but_update = function(){
		
				layui.use(['form','layer'],function(){
					$ = layui.jquery;
			        var form = layui.form
			        ,layer = layui.layer;
					form.on('submit(save)',function(){
						debugger;
						
							$.post("${pageContext.request.contextPath}/updateManager",
									$("#saveForm").serialize(),function(data1){
								console.log(data1);
								// 转换json数据
								//alert(data1);
								var res1 = eval('('+data1+')');
								alert(res1.code);
								if(res1.code==1){
									alert("修改成功！！");
								}else{
									alert("修改失败！！");
								}
							}); 
							var index = parent.layer.getFrameIndex(window.name);
						    parent.layer.close(index);
						    parent.location.reload();
						
						
					});
				});
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script type="text/javascript">
	
	layui.use(['form','layer'],function(){
		$ = layui.jquery;
        var form = layui.form
        ,layer = layui.layer;
		form.on('submit(save)',function(){
			debugger;
			
				$.post("${pageContext.request.contextPath}/updateManager",
						$("#saveForm").serialize(),function(data1){
					console.log(data1);
					// 转换json数据
					//alert(data1);
					var res1 = eval('('+data1+')');
					alert(res1.code);
					if(res1.code==1){
						alert("修改成功！！");
					}else{
						alert("修改失败！！");
					}
				}); 
				var index = parent.layer.getFrameIndex(window.name);
			    parent.layer.close(index);
			    parent.location.reload();
			
			
		});
	});

	
		
	</script>
	</body>
</html>
