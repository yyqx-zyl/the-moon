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
		 	   			<div class="layui-form-item">
						    <label class="layui-form-label">编号(以des开头)</label>
						    <div class="layui-input-block">
						        <input type="text" name="desid" lay-verify="desid" autocomplete="off"  id="desid"
						        value="${empty findedesigner ? '':findedesigner.desid }" placeholder="" class="layui-input">
						    </div>					    
						</div>
				   <div class="layui-form-item">
					    <label class="layui-form-label">名称</label>
					    <div class="layui-input-block">
					        <input type="text" name="title" lay-verify="title" autocomplete="off"
					         value="${empty findedesigner ? '':findedesigner.title } " placeholder="" class="layui-input">
					    </div>					    
					</div>
					<div class="layui-form-item layui-form-text">
					    <label class="layui-form-label">风格</label>
					    <div class="layui-input-block" > 
					    		<select  name="caid" > 
					    		   <option>-请选择-</option>
					    		   <c:if test="${empty findedesigner}" var="No">
						    		   <c:forEach items="${cate }" var="cate" begin="3" end="11">
						    		   	  <option value="${cate.caid }" >${cate.cname }</option>
						    		   </c:forEach>
					    		   </c:if>
					    		   <c:if test="${!No }">
							    		<c:forEach items="${cate }" var="cate" begin="3" end="11">
							    		 <c:if test="${findedesigner.caid==cate.caid }" >
							    		 	 <option value="${cate.caid }" selected="selected">${cate.cname }</option>
							    		 </c:if>
						    		   	  <option value="${cate.caid }" >${cate.cname }</option>
						    		   </c:forEach>
							    	</c:if>
					    		</select>
					    </div>
					</div>
					<div class="layui-form-item layui-form-text">
				    <label class="layui-form-label">添加图片</label>
				    <div class="layui-input-block">
				         <button type="button" class="layui-btn layui-btn-danger" id="test7"><i class="layui-icon"></i>上传图片</button>
				    </div>
				</div>
				</form>				
		 </div>
		 <div class=" tkbtnfxd">
		 	<c:if test="${empty findedesigner }" var="No">
		 		<button type="button" class="layui-btn  layui-btn-normal float-right" lay-submit lay-filter="add"> 确定</button>
		 	</c:if>
		 	<c:if test="${!No }">
		 	<button type="button" class="layui-btn  layui-btn-normal float-right" lay-submit lay-filter="save"> 修改</button>
		 	</c:if>
	        <button type="button" class="layui-btn layui-btn-primary float-right" id="cancel">取消</button>
	    </div>
	<script type="text/javascript" src="${ctx}/static/assets/jquery.min.js"></script>  
	<script src="${ctx}/static/assets/layui.all.js"></script>
	<script type="text/javascript" src="${ctx}/static/assets/jquerysession.js"></script>   
	<script type="text/javascript">
	//图片上传
	
	layui.use('upload', function(){
		  var $ = layui.jquery
		  ,upload = layui.upload; 
		//设定文件大小限制
		  upload.render({
		    elem: '#test7'// 获得上传文件的文件名
		    ,url: '${ctx}/uploaddesigner'
           //size: 60 //限制文件大小，单位 KB
		    ,done: function(res){
		    	if(res.code > 0){
		    		layer.msg('上传成功',{icon: 6});
		    	}else{
		    		layer.msg('上传失败',{icon: 3});
		    	}
		    }
		  });
		});
		$(function(){
			$("#cancel").on('click',function(){
				alert("取消。。。。");
				$.get("${ctx}/dclear");
				layui.use('form',function(){
					 var form = layui.form;
					 form.render();
				});
				var index = parent.layer.getFrameIndex(window.name);
			    parent.layer.close(index);
			    parent.location.reload();
			})
		});

		layui.use(['form','layer'],function(){
			$ = layui.jquery;
	        var form = layui.form
	        ,layer = layui.layer;
	        
	        form.on('submit(add)',function(){
	        	$.post("${ctx}/adddesigner",$("#saveForm").serialize(),function(data){
	        		// 转换json数据
					console.log(data);
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
	        	var index = parent.layer.getFrameIndex(window.name);
			    parent.layer.close(index);
			    parent.location.reload();
	        });
		});
	        
	        
	        
	        
		layui.use(['form','layer'],function(){
			$ = layui.jquery;
	        var form = layui.form
	        ,layer = layui.layer;
	        
			form.on('submit(save)',function(){
					$.post("${ctx}/updatedesigner",$("#saveForm").serialize(),function(data1){
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
