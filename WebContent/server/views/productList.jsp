<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>订单商品</title>
    <link rel="stylesheet" href="${ctx}/static/assets/css/iconfont.css">    
    <link rel="stylesheet" href="${ctx}/static/assets/css/layui.css">    
    <link rel="stylesheet" href="${ctx}/static/assets/css/view.css"/>
    <link rel="stylesheet" href="${ctx}/static/assets/css/admin.css"/> 
    <link rel="stylesheet" href="${ctx}/static/assets/css/style.css"/>    
	<style type="text/css">
		.imgSize{
			width: 230px;
			height: 180px;
		}
	</style>
</head>
<body class="layui-view-body">
    <div class="layui-content">
    	<!--面包屑导航-->
    	<div class="mianb">
    		<div class="mblf layui-col-xs6 layui-col-md6">
    			 <i class="layui-icon">&#xe656;</i>
    			 <p>订单管理 > <span>订单商品</span></p>
    		</div>
    		<div class="mbrt layui-col-xs6 layui-col-md6">
    			<a href="javascript:;" class="layui-btn layui-btn-normal" id="fabu">..</a>    			     			 
    		</div>
    	</div>
    	<!--面包屑导航-->    	
       <div class="layui-row">
            <div class="layui-card">
            	<div class="layui-row">
            		<div class="layui-col-sm4 layui-col-md3 spbox">
	            	     	   <div class="spitem">
	            	     	   	       <div class="spimg">
	            	     	   	       	    <img class="imgSize" src="/uploadFile/product/${pro.productImage }" />
	            	     	   	       </div>
	            	     	   	       <div class="sptxt">
	            	     	   	       	    <h3>${pro.productName }</h3>
	            	     	   	       	    <p><i class="iconfont">&#xe64c;</i><span class="col-red">${pro.integral }</span>积分</p>
	            	     	   	       	    <p><a class="col-green" href="${ctx}/openConsignee?pid=${pro.pid}">兑换</a></p>
	            	     	   	       </div>
	            	     	   </div>
	            	    </div>
            		<%-- <c:forEach items="${list }" var="pro">
            			<div class="layui-col-sm4 layui-col-md3 spbox">
	            	     	   <div class="spitem">
	            	     	   	       <div class="spimg">
	            	     	   	       	    <img class="imgSize" src="/uploadFile/product/${pro.productImage }" />
	            	     	   	       </div>
	            	     	   	       <div class="sptxt">
	            	     	   	       	    <h3>${pro.productName }</h3>
	            	     	   	       	    <p><i class="iconfont">&#xe64c;</i><span class="col-red">${pro.integral }</span>积分</p>
	            	     	   	       	    <p><a class="col-green" href="${ctx}/openConsignee?pid=${pro.pid}">兑换</a></p>
	            	     	   	       </div>
	            	     	   </div>
	            	    </div>
            		</c:forEach> --%>
            	</div>
            	<!--分页-->
           		<div id="page"></div>
           		<!--分页-->
            </div>           
        </div> 
    </div>
    <script src="${ctx}/static/assets/jquery.min.js"></script>
    <script src="${ctx}/static/assets/layui.all.js"></script>    
    <script>
    	var element = layui.element;
    	layui.use(['laypage', 'layer'], function(){
		  var laypage = layui.laypage
		  ,layer = layui.layer;		  
		  
		  //页码完整功能
		  laypage.render({
		    elem: 'page'
		    ,count: 100
		    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
		    ,jump: function(obj){
		      console.log(obj)
		    }
		  });	 
		});
		
		//弹框		
		$('#fabu').on('click', function(){			
		  layui.use('layer', function(){
          var layer = layui.layer;
          layer.open({
                type: 2,
                title: '上传商品',
                fix: false,
                shadeClose: true,
                shade: 0.8,
                area: ['660px', '420px'],
                content: 'product_add.jsp',
                end: function () {
                   location.reload();
                }
            });
        });
      })
		
	</script>
	
</body>
</html>