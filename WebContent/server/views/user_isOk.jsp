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
					    <label class="layui-form-label">审核</label>
					    <div class="layui-input-block">
					        <c:if test="${user.isok ==1 }">
								<input type="radio" name="isok"  checked="checked" value="1">未通过
								<input type="radio" name="isok" value="2">通过
							 </c:if>
							 <c:if test="${user.isok ==2 }">
								<input type="radio" name="isok" value="1">未通过
							   <input type="radio" name="isok"  checked="checked"  value="2">通过
							</c:if>
					    </div>					    
					</div>
					
				</form>				
		 </div>
		 <div class=" tkbtnfxd">
		 
	    	<button type="button" class="layui-btn  layui-btn-normal float-right" lay-submit lay-filter="save" onclick="but_update()">同意</button>
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
						
							$.post("${pageContext.request.contextPath}/updateisOK",
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
				$.post("${pageContext.request.contextPath}/updateisOK",
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
