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
		 	<form class="layui-form" action="">
		 		<div class="layui-form-item layui-form-text">
				    <label class="layui-form-label">商品图片</label>
				    <div class="layui-input-block">
				         <button type="button" class="layui-btn layui-btn-danger" id="test7"><i class="layui-icon"></i>上传图片</button>
				    </div>
				</div>
			   <div class="layui-form-item">
				    <label class="layui-form-label">商品名称</label>
				    <div class="layui-input-block">
				        <input type="text" name="productName" lay-verify="productName" autocomplete="off" placeholder="请输入商品名称" class="layui-input">
				    </div>					    
				</div>
				<div class="layui-form-item">
				    <label class="layui-form-label">换购积分</label>
				    <div class="layui-input-block">
				        <input type="text" name="integral" lay-verify="integral" autocomplete="off" placeholder="请输入兑换的积分" class="layui-input">
				    </div>					    
				</div>
				 <div class=" tkbtnfxd">
			    	<button type="button" class="layui-btn  layui-btn-normal float-right" lay-submit="" lay-filter="save">确定</button>
			        <button type="button" class="layui-btn layui-btn-primary float-right">取消</button>
			    </div>
			</form>	
		 </div>
	    
	<script src="${ctx}/static/assets/layui.all.js"></script>    
	<script>
		layui.use(['form','upload'], function(){
		  var $ = layui.jquery
		  ,upload = layui.upload
		  ,form = layui.form; 
		
		//设定文件大小限制
		  upload.render({
		    elem: '#test7'
		    ,url: '${pageContext.request.contextPath}/uploadProduct'
//		    ,size: 60 //限制文件大小，单位 KB
		    ,done: function(res){
		      console.log(res)
		      if(res.code > 0){
		    	  layer.msg('上传成功',{icon:6});
		      }else{
		    	  layer.msg('上传失败',{icon:3});
		      }
		    }
		  });
		
			// 实现增加的操作
			form.on('submit(save)',function(data){
				alert(JSON.stringify(data.field));
				$.post("${pageContext.request.contextPath}/saveProduct",data.field,
						function(res){
					if(res.code > 0){
						layer.msg("保存成功",{icon:6});
					}else{
						layer.msg("保存失败",{icon:3});
					}
					window.setTimeout(function(){
						var index = parent.layer.getFrameIndex(window.name);
					    parent.layer.close(index);
					    parent.location.reload();
					},1000);
				});
			});
			
		});
		</script>
	</body>
</html>
