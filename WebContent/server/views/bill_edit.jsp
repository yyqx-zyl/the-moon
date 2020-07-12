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
		 	   	   <input type="hidden" name="bid" value="${b.bid }"/>
		 	   	   
		 	   	   <input type="hidden" name="uid" value="${b.uid }"/>
		 	   	   <input type="hidden" name="pid" value="${b.pid }"/>
		 	   	   <input type="hidden" name="pname" value="${b.pname }"/>
		 	   	   <input type="hidden" name="pprice" value="${b.pprice }"/>
		 	   	   <input type="hidden" name="pimage" value="${b.pimage }"/>
		 	   	   <input type="hidden" name="pcount" value="${b.pcount }"/>
		 	   	   <input type="hidden" name="totalprice" value="${b.totalprice }"/>
		 	   	   <input type="hidden" name="createTime" value="${b.createTime }"/>
		 	   	   
				   <div class="layui-form-item">
					    <label class="layui-form-label">订单ID</label>
					    <div class="layui-input-block">
					        <input type="text" name="bid" lay-verify="bid" autocomplete="off" value="${b.bid }" placeholder="" class="layui-input">
					    </div>					    
					</div>
					<div class="layui-form-item">
					    <label class="layui-form-label">是否发放</label>
					    <div class="layui-input-block layui-form">
					        <input type="checkbox" checked="checked" lay-skin="switch" id="issue" lay-text="开|关" name="issue" lay-verify="issue" autocomplete="off" value="${b.issue }" class="layui-input">
					    </div>					    
					</div>
				</form>		
					<div class=" tkbtnfxd">
				    	<button type="button" class="layui-btn  layui-btn-normal float-right" lay-submit lay-filter="update">修改</button>
				        <button type="button" class="layui-btn layui-btn-primary float-right" id="cancel">取消</button>
				    </div>		
		 </div>
	<script type="text/javascript" src="${ctx}/static/assets/jquery.min.js"></script>  
	<script src="${ctx}/static/assets/layui.all.js"></script>
	<script type="text/javascript" src="${ctx }/static/assets/jquerysession.js"></script>   
	<script type="text/javascript">
	 
	
	
		layui.use(['form','layer'],function(){
			$ = layui.jquery;
	        var form = layui.form
	        ,layer = layui.layer
	        ,element = layui.element;
			form.on('submit(update)',function(){
				debugger;
				$.post("${ctx}/UpdateBill",
						$("#saveForm").serialize(),function(data){
					// 转换json数据
					var res = eval('('+data+')');
					alert(res.code);
					if(res.code==1){
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
