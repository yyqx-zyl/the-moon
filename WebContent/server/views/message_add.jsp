<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		 	   	   <input type="hidden" name="tid" value=""/>
				   <div class="layui-form-item">
					    <label class="layui-form-label">标题</label>
					    <div class="layui-input-block">
					        <input type="text" name="title" lay-verify="title" autocomplete="off" value="" placeholder="" class="layui-input">
					    </div>					    
					</div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">描述</label>
					    <div class="layui-input-block">
					         <textarea placeholder="请输入" class="layui-textarea" name="describe"></textarea>
					    </div>
					</div>
				</form>				
		 </div>
		 <div class=" tkbtnfxd">
	    	<button type="button" class="layui-btn  layui-btn-normal float-right" lay-submit lay-filter="save">${empty message ? '确定':'修改'}</button>
	        <button type="button" class="layui-btn layui-btn-primary float-right" id="cancel">取消</button>
	    </div>
	<script type="text/javascript" src="${ctx}/static/assets/jquery.min.js"></script>  
	<script src="${ctx}/static/assets/layui.all.js"></script>
	<script type="text/javascript" src="${ctx}/static/assets/jquerysession.js"></script>   
	<script type="text/javascript">
		
		/*$(function(){
			$("#cancel").on('click',function(){
				alert("进入。。。。");
				/* $.session.remove('task');
				$.get("${pageContext.request.contextPath}/canlen");
				var index = parent.layer.getFrameIndex(window.name);
			    parent.layer.close(index);
			    parent.location.reload();
			})
		});*/
		
		layui.use(['form','layer'],function(){
			$ = layui.jquery;
	        var form = layui.form
	        ,layer = layui.layer;
			form.on('submit(save)',function(){
				if($(this).text()=="确定"){
					$.post("${pageContext.request.contextPath}/addMessage",
							$("#saveForm").serialize(),function(data){
						// 转换json数据
						var res = eval('('+data+')');
						alert(res.code);
						if(res.code==1){
							alert("添加成功！！");
							var index = parent.layer.getFrameIndex(window.name);
						    parent.layer.close(index);
						    parent.location.reload();
						}else{
							alert("添加失败！！");
						}
					}); 
				}else{
					$.post("${pageContext.request.contextPath}/updateMessage",
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
				}
				//console.log(data);
				// 获得表单中的值
				//var taskName = $("input[name='taskName']").val();
				//var describe = $("textarea[name='describe']").val();
				//var rewardScore = $("input[name='rewardScore']").val();
				// 获得表单中的所有值
				//alert($("#saveForm").serialize());
				//alert(taskName+","+describe+","+rewardScore);
				// 使用Ajax进行数据的添加操作
				/* */
			});
		});
	</script>
	</body>
</html>
