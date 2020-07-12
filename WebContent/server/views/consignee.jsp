<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>收货人页面</title>
    <link rel="stylesheet" href="${ctx}/static/assets/css/layui.css">    
    <link rel="stylesheet" href="${ctx}/static/assets/css/view.css"/>
    <link rel="stylesheet" href="${ctx}/static/assets/css/admin.css"/>  
    <link rel="stylesheet" href="${ctx}/static/assets/css/style.css"/> 
</head>
<body class="layui-view-body">
    <div class="layui-content">
		<!--指示条-->
        <div class="layui-row">        	
            <div class="layui-card positionbox">            	  
				    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
					    <legend>收货人信息</legend>
					</fieldset>
					<form class="layui-form" id="occForm" action="">
						 <div class="layui-form-item">
							    <label class="layui-form-label"><span class="col-red">*</span>招聘岗位</label>
							    <div class="layui-input-block">
							      <input type="text" name="consigneeName" lay-verify="consigneeName" autocomplete="off" placeholder="请输入收货人名字" class="layui-input">
							    </div>
						  </div>
						  <div class="layui-form-item">
						      <label class="layui-form-label">收货人电话</label>
						      <div class="layui-input-block">
						        <input type="text" name="consigneePhone" lay-verify="consigneePhone" placeholder="请录入联系方式" autocomplete="off" class="layui-input">
						      </div>
						  </div>
						<div class="layui-form-item">
							    <label class="layui-form-label">收货人地址</label>
							    <div class="layui-input-inline">
							      <select name="province" lay-filter="province" id="province"><!--  onchange="changeCity()" -->
							        <option value="0">请选择省</option>
							      </select>
							    </div>
							    <div class="layui-input-inline">
							      <select name="city" lay-filter="city" id="city"><!--  onchange="changeDistrict()" -->
							        <option value="0">请选择市</option>
							      </select>
							    </div>
							    <div class="layui-input-inline">
							      <select name="district" id="district">
							        <option value="0">请选择县/区</option>
							      </select>
							    </div>
						</div>
						<div class="layui-form-item">
						      <label class="layui-form-label">详细地址</label>
							  <div class="layui-input-block">
						        <input type="text" name="details" lay-verify="details" placeholder="请录入详细位置" autocomplete="off" class="layui-input">
						      </div>
						</div>      					   
						  <div class="layui-form-item">
						    <div class="layui-input-block">
						    	<a href="javascript:;" class="layui-btn layui-btn-primary">清空重置</a>
						        <a href="javascript:;" class="layui-btn layui-btn-normal" lay-submit lay-filter="next">保存,下一步</a>
						    </div>
						  </div>
					</form>
            </div>   
		</div>
    </div>
    <script src="${ctx}/static/assets/jquery.min.js"></script>
    <script src="${ctx}/static/assets/layui.all.js"></script>   
    <script>
    	
    	layui.use('form', function(){
    		 $ = layui.jquery;
             var form = layui.form
             ,layer = layui.layer;
			debugger;             
		  /* $.get("${pageContext.request.contextPath }/getCitys",{pid:0},function(res){
	  			console.log(res);
	  			/* for(var i=0;i<res.length;i++){
	                  var $option = $("<option value='"+res[i].id+"'>"+res[i].name+"</option>");
	                  $("#province").append($option);
	              } // 
	              $.each(res,function(i,r){
	            	  var $option = $("<option value='"+r.id+"'>"+r.name+"</option>");
	                  $("#province").append($option);
	              })
	  			// 重新渲染表单
		  		form.render("select");
	  		}); */
		  
		  form.on('select(province)',function(){
			 //alert("进入。。。"); 
			 var pid = $("#province").val();
	   	        $.ajax({
	   	            url:"${pageContext.request.contextPath }/getCitys",
	   	            data:{"pid":pid},
	   	            dataType:"json",
	   	            success:function(data){
	   	                //清空城市下拉列表框的内容
	   	                //var res = eval('('+data+')');
	   	                $("#city").html("<option value=''>-- 请选择市 --</option>");
	   	                $("#district").html("<option value=''>-- 请选择区/县 --</option>");
	   	                //遍历json，json数组中每一个json，都对应一个省的信息，都应该在省的下拉列表框下面添加一个<option>
	   	                for(var i=0;i<data.length;i++){
	   	                    var $option = $("<option value='"+data[i].id+"'>"+data[i].name+"</option>");
	   	                    $("#city").append($option);
	   	                }
	   	             form.render("select");
	   	            }
	   	        });
		  });
		  
		  form.on('select(city)',function(){
			  var pid = $("#city").val();
		        $.ajax({
		            url:"${pageContext.request.contextPath }/getCitys",
		            data:{"pid":pid},
		            dataType:"json",
		            success:function(data){
		                //清空城市下拉列表框的内容
		                $("#district").html("<option value=''>-- 请选择区/县 --</option>");
		                for(var i=0;i<data.length;i++){
		                    var $option = $("<option value='"+data[i].id+"'>"+data[i].name+"</option>");
		                    $("#district").append($option);
		                }
		                form.render("select");
		            }
		        });
		  });
		  
		  // position_add1.jsp
		  form.on('submit(next)',function(data){
			  // 将表单的数据传递给Controller，并保存在session中
			  $.get("${pageContext.request.contextPath}/saveConsignee",data.field);
			  layer.open({
	                type: 2,
	                title: '兑换信息录入',
	                fix: false,
	                shadeClose: true,
	                shade: 0.8,
	                area: ['660px', '420px'],
	                content: 'views/exchange.jsp',
	                end: function () {
	                   location.reload();
	                }
	            });
		  });
		});
	</script>
</body>
</html>