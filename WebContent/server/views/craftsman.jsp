<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>轮播图</title>
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
    			 <p>信息管理 > <span>真实客照</span></p>
    		</div>
    		<div class="mbrt layui-col-xs6 layui-col-md6">
    			<a href="javascript:;" class="layui-btn layui-btn-normal" id="addbanner">增加</a>    			     			 
    		</div>
    	</div>
    	<!--面包屑导航-->
        <div class="layui-row">
            <div class="layui-card">
            	<div class="table-responsive">
			 		   <table class="layui-table" lay-skin="line" lay-size="lg" id="table">						  
						  <thead>
						    <tr>
						      <th>编号</th>
						      <th>匠人头像</th>
						      <th>匠人名称</th>
						      <th>匠人年龄</th>
						      <th>客照技能</th>
						      <th>匠人描述</th>
						      <th>操作</th>
						    </tr> 
						  </thead>
						  <tbody>
						  <c:forEach items="${Cman.list }" var="Cman">
						  	  <tr>
							      <td>${Cman.cId}</td>
							      <td>						        
							      	 <div id="layer-photos-demo" class="layer-photos-demo">
									      <img layer-pid="" layer-src="${ctx }/static/images/craftsman/${Cman.cPath}" src="${ctx }/static/images/craftsman/${Cman.cPath}" alt="图片名">
									  </div>
							      </td>
							      <td class="layui-form">
							         ${Cman.cName }
							      </td>	
							      <td class="layui-form">
							         ${Cman.cAge }
							      </td>	
							      <td class="layui-form">
							         ${Cman.cSkill }
							      </td>	
							      <td class="layui-form">
							         ${Cman.cDescribe }
							      </td>
							      <td>
							      	  <div class="layui-table-cell laytable-cell-1-0-10"> 							      	  	 
								      	  	<a class="layui-btn layui-btn-normal layui-btn-xs"
								      	  	onclick="but_update('${Cman.cId}')">修改</a> 
								      	  	<a class="layui-btn layui-btn-danger layui-btn-xs delete"
								      	  	onclick="but_delete('${Cman.cId}')">删除</a> 
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
			                         <a href="${ctx}/craftsmanList?currpage=${Cman.pageNum-1}"
			                           aria-label="Previous">
			                             <span aria-hidden="true">&laquo;</span>
			                         </a>
			                     </li>
			                     <c:forEach items="${Cman.navigatepageNums }" var="page_Num">
			                         <c:if test="${page_Num == Cman.pageNum }">
			                             <li class="active"><a href="#" style="margin-top: 7px;">${ page_Num}</a></li>
			                        </c:if>
			                         <c:if test="${page_Num != Cman.pageNum }">
			                            <li>
			                                 <a style="margin-top: 7px;" href="${ctx}/craftsmanList?currpage=${ page_Num}">${ page_Num}</a>
			                            </li>
			                        </c:if>
			                     </c:forEach>
			                    <li>
			                        <a href="${ctx}/craftsmanList?currpage=${Cman.pageNum+1}"
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
    <script src="${ctx}/static/assets/jquery.min.js"></script>
    <script src="${ctx}/static/assets/layui.all.js"></script>
    <script type="text/javascript" src="${ctx}/static/assets/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/assets/jquery.pagination.js"></script>   
    <script>
    	var element = layui.element;
		
		//弹框		
		$('#addbanner').on('click', function(){			
		  layui.use('layer', function(){
          var layer = layui.layer;
          layer.open({
                type: 2,
                title: '添加匠人信息',
                fix: false,
                shadeClose: true,
                shade: 0.8,
                area: ['660px', '420px'],
                content: 'server/views/craftsman_add.jsp',
                end: function () {
                   location.reload();
                }
            });
        });
      })
      
      //修改
      function but_update(id){
			//alert(id);
			// 去后台获取数据
			$.get("${ctx}/findCmanById",{cId:id});
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
	                    content: "server/views/craftsman_add.jsp",
	                    end: function () {
	                    	$.get("${ctx}/clearCman");
	                       location.reload();
	                    }
	                });
	            });
		}
		
		//删除
		function but_delete(id){
				 $.get("${ctx}/deleteCmanById",{cId:id},function(res){
					 if (res.code>0) {
						 window.location.reload()
					}
				 });
		}
      
      
		 layui.use('form', function(){
		  var form = layui.form; 
		  form.render();
		}); 
	</script>
	<script>
		//调用示例
		layer.photos({
		  photos: '.layer-photos-demo'
		  ,anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
		}); 
		</script>
</body>
</html>