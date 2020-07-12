<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>提现通知</title>
    <link rel="stylesheet" href="${ctx}/static/assets/css/layui.css">    
    <link rel="stylesheet" href="${ctx}/static/assets/css/view.css"/>
    <link rel="stylesheet" href="${ctx}/static/assets/css/admin.css"/>  
    <link rel="stylesheet" href="${ctx}/static/assets/css/bootstrap.css" />
	<link rel="stylesheet" href="${ctx}/static/assets/css/pagination.css" />
</head>
<body class="layui-view-body">
    <div class="layui-content">
    	<!--面包屑导航-->
    	<div class="mianb">
    		<div class="mblf layui-col-xs6 layui-col-md6">
    			 <i class="layui-icon">&#xe656;</i>
    			 <p>订单管理 > <span>订单信息</span></p>
    		</div>    		
    	</div>
    	<!--面包屑导航-->
        <div class="layui-row">
            <div class="layui-card">
            	<div class="table-responsive">
			 		  <table class="layui-table" lay-skin="line" lay-size="lg" id="table">						  
						  <thead>
						    <tr>
						      <th>订单ID</th>
						      <th>商品编号</th>
						      <th>商品名称</th>	
						      <th>商品价格</th>
						      <th>商品图片</th>
						      <th>是否发放</th>					      
						      <th>操作</th>
						    </tr> 
						  </thead>
						  <tbody>
						  <c:forEach items="${ pageInfo.list}" var="bill">
						    <tr>
						      <td>${bill.bid }</td>
						      <td>${bill.pid }</td>
						      <td>${bill.pname }</td>
						      <td>${bill.pprice }</td>	
						      <td>
						      	<div id="layer-photos-demo" class="layer-photos-demo">
						      		<img layer-pid='' layer-src="${ctx}/static/${bill.pimage }" src="${ctx}/static/${bill.pimage}" width="80px" height="100px">
						      	</div>
						      </td>						      
						      <td>
						       	<div class="layui-table-cell laytable-cell-1-0-10"> 							      	  	 
							      	  	<a class="layui-btn layui-btn-primary layui-btn-xs">${bill.issue }</a> 							      	  	
						      	</div>
						      </td>
						      
						      <td>
						      	 <div class="layui-table-cell laytable-cell-1-0-10"> 							      	  	 
								     <a class="layui-btn layui-btn-normal layui-btn-xs" onclick="update(${bill.bid })">修改</a> 
								     <a class="layui-btn layui-btn-danger layui-btn-xs" onclick="Bill_delete(${bill.bid })">删除</a> 
							     </div>
						      </td>
						    </tr>
						    </c:forEach>
						  </tbody>
					</table>
			 	</div>
                   
           		<!--分页-->
           		  <div id="div_pagination_bottom">
			            <nav aria-label="Page navigation">
			                <ul class="pagination">
			                     <li>
			                         <a href="${ctx}/getProList?currpage=${marry.pageNum-1}"
			                           aria-label="Previous">
			                             <span aria-hidden="true">&laquo;</span>
			                         </a>
			                     </li>
			                     <c:forEach items="${marry.navigatepageNums }" var="page_Num">
			                         <c:if test="${page_Num == marry.pageNum }">
			                             <li class="active"><a href="#" style="margin-top: 7px;">${ page_Num}</a></li>
			                        </c:if>
			                         <c:if test="${page_Num != marry.pageNum }">
			                            <li>
			                                 <a style="margin-top: 7px;" href="${ctx}/getProList?currpage=${ page_Num}">${ page_Num}</a>
			                            </li>
			                        </c:if>
			                     </c:forEach>
			                    <li>
			                        <a href="${ctx}/getProList?currpage=${marry.pageNum+1}"
			                            aria-label="Next">
			                             <span aria-hidden="true">&raquo;</span>
			                         </a>
			                    </li>
			                </ul>
			            </nav>
			        </div> 
           		<!--分页-->
            </div>           
        </div>
    </div>
    <script src="${ctx}/static/js/jquery.min.js"></script>
    <script src="${ctx}/static/assets/layui.all.js"></script> 
    <script type="text/javascript" src="${ctx}/static/assets/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/assets/jquery.pagination.js"></script>     
    <script>
    function Bill_delete(bid){
    	alert(bid);
        layer.confirm('确认要删除吗？',function(index){
        	
      	 $.get("${ctx}/DeleteBybid",{bid:bid},function(data){
      		 if(data.result==1){
                   layer.msg('已删除!',{icon:1,time:1000});
      		 }else{
      			 layer.msg('删除失败!',{icon:2,time:1000});
      		 }
      	 });
            
        });
    }
    
		function update(bid){
			// 去后台获取数据
			$.get("${ctx}/findByBillId",{bid:bid});
			layui.use('layer', function(){
	              var layer = layui.layer;
	              layer.open({
	                    type: 2,
	                    title: '修改订单信息',
	                    fix: false,
	                    shadeClose: true,
	                    shade: 0.8,
	                    area: ['660px', '420px'],
	                    content: "server/views/bill_edit.jsp",
	                    end: function () {
	                       location.reload();
	                    }
	                });
	            });
		}
	</script>
	
</body>
</html>