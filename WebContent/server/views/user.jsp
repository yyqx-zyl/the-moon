<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>任务发布</title>
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
    			 <p>用户管理 > <span>用户信息</span></p>
    		</div>
    		<div class="mbrt layui-col-xs6 layui-col-md6">
    					     			 
    		</div>
    	</div>
    	<!--面包屑导航-->
        <div class="layui-row">
            <div class="layui-card">
            	<div class="table-responsive">
            		<button onclick="tableToExcel('table','task')">导出用户表格</button>
            		<form action="findByName" method="post">
            		<div style="margin-top: 15px">
            			<input type="text" name="username" placeholder="请输入用户名" value=""/>
            			<input type="submit" value="查询" class="layui-btn layui-btn-normal layui-btn-xs">	
            		</div>
            		</form>
			 		  <table class="layui-table" lay-skin="line" lay-size="lg" id="table">						  
						  <thead>
						    <tr>
						      <th>编号</th>
						      <th>用户名</th>
						      <th>用户性别</th>
						      <th>生日</th>
						      <th>手机号码</th>
						      <th>地址</th>
						      <th>操作</th>
						      <th>操作</th>
						    </tr> 
						  </thead>
						  <tbody>
							 
						 <c:forEach items="${pageInfo.list }" var="users" varStatus="st">
						    	<tr>
							      <td>${users.uid }</td>
							      <td>${users.username }</td>
							      <td>
									<c:if test="${users.sex==1 }">
														男
								   </c:if>
									<c:if test="${users.sex==2 }">
														女
									</c:if>
												
								 </td>
							      <td>
							      	<fmt:formatDate value="${users.birthday }" pattern="yyyy-MM-dd"/>
							      </td>
							      <td>${users.phone }</td>
							      <td>${users.address }</td>
							      
							      <td class="update" >
							      <button class="layui-btn layui-btn-normal layui-btn-xs "  onclick="update(${users.uid })">
								      	  <i class="icon-trash bigger-120"></i>修改</button>
							      </td>
							      <td class="delete" >
								      	  <button class="layui-btn layui-btn-danger layui-btn-xs "  onclick="btn_delete(${users.uid })">
								      	  <i class="icon-trash bigger-120"></i>删除</button>
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
			                         <a href="${pageContext.request.contextPath}/getusersList?currpage=${pageInfo.pageNum-1}"
			                           aria-label="Previous">
			                             <span aria-hidden="true">&laquo;</span>
			                         </a>
			                     </li>
			                     <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
			                         <c:if test="${page_Num == pageInfo.pageNum }">
			                             <li class="active"><a href="#" style="margin-top: 7px;">${ page_Num}</a></li>
			                        </c:if>
			                         <c:if test="${page_Num != pageInfo.pageNum }">
			                            <li>
			                                 <a style="margin-top: 7px;" href="${pageContext.request.contextPath}/getusersList?currpage=${ page_Num}">${ page_Num}</a>
			                            </li>
			                        </c:if>
			                     </c:forEach>
			                    <li>
			                        <a href="${pageContext.request.contextPath}/getusersList?currpage=${pageInfo.pageNum+1}"
			                            aria-label="Next">
			                             <span aria-hidden="true">&raquo;</span>
			                         </a>
			                    </li>
			                </ul>
			            </nav>
			        </div> 
           		<!--分页-->
           		<!--分页-->
            </div>           
        </div>
    </div>
    <script src="${ctx}/static/assets/jquery.min.js"></script>
    <script src="${ctx}/static/assets/layui.all.js"></script>
     <script type="text/javascript" src="${ctx}/static/assets/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/assets/jquery.pagination.js"></script>       
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
		
    	 //修改
        function update(id){
  			//alert(id);
  			// 去后台获取数据
  			$.get("${ctx}/findById",{uid:id});
  			//alert("进入后台");
  			layui.use('layer', function(){
  				alert("确定修改信息？");
  	              var layer = layui.layer;
  	              layer.open({
  	                    type: 2,
  	                    title: '修改信息',
  	                    fix: false,
  	                    shadeClose: true,
  	                    shade: 0.8,
  	                    area: ['660px', '420px'],
  	                    content: "server/views/user_update.jsp",
  	                    end: function () {
  	                       location.reload();
  	                    }
  	                });
  	            });
  		}
      
     
		//判断弹框
		$(".delete").click(function(){
			layer.confirm('确定要删除此任务？', {
			  btn: ['是','否'] //按钮
			}, function(){
				 location.reload();
			  layer.msg('已删除', {icon: 1});
			}, function(){
				 location.reload();
			  layer.msg('已取消',  {icon: 2});
			});
		})			
		
		 layui.use('form', function(){
		  var form = layui.form; 
		  form.render();
		}); 
		
		
		//删除弹框
		var btn_delete = function(id) {
					$.get("${ctx}/deleteUser",{id:id},function(data){
						if(data.result>0){
							$.jq_Confirm({
								message: "您确定要删除吗?",
								btnOkClick: function() {
									//刷新页面
									window.location.reload();
								}
							});
						}
					});
					
				}
		
		
		
		
		
		
		
		// 导出表格到excel文件
		function base64 (content) {
		    return window.btoa(unescape(encodeURIComponent(content)));         
		 }
		 /*
		 *@tableId: table的Id
		 *@fileName: 要生成excel文件的名字（不包括后缀，可随意填写）
		 */
		 function tableToExcel(tableID,fileName){
		   var table = document.getElementById(tableID);
		   var excelContent = table.innerHTML;
		   var excelFile = "<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:x='urn:schemas-microsoft-com:office:excel' xmlns='http://www.w3.org/TR/REC-html40'>";
		   excelFile += "<head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><meta charset='UTF-8'/></head>";
		   excelFile += "<body><table>";
		   excelFile += excelContent;
		   excelFile += "</table></body>";
		   excelFile += "</html>";
		   var link = "data:application/vnd.ms-excel;base64," + base64(excelFile);
		   var a = document.createElement("a");
		   a.download = fileName+".xls";
		   a.href = link;
		   a.click();
		 }
		
	</script>
	
</body>
</html>