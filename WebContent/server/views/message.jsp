<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>消息发布</title>
    <link rel="stylesheet" href="${ctx}/static/assets/css/layui.css">    
    <link rel="stylesheet" href="${ctx}/static/assets/css/view.css"/>
    <link rel="stylesheet" href="${ctx}/static/assets/css/admin.css"/>    
</head>
<body class="layui-view-body">
    <div class="layui-content">
    	<!--面包屑导航-->
    	<div class="mianb">
    		<div class="mblf layui-col-xs6 layui-col-md6">
    			 <i class="layui-icon">&#xe656;</i>
    			 <p>首页管理 > <span>消息发布</span></p>
    		</div>
    		<div class="mbrt layui-col-xs6 layui-col-md6">
    			<a href="javascript:;" class="layui-btn layui-btn-normal" id="fabu">发布消息</a>    			     			 
    		</div>
    	</div>
    	<!--面包屑导航-->
        <div class="layui-row">
            <div class="layui-card">
            	<div class="table-responsive">
			 		  <table class="layui-table" lay-skin="line" lay-size="lg" id="table">						  
						  <thead>
						    <tr>
						      <th>ID</th>
						      <th>标题</th>
						      <th>内容</th>
						      <th>发布时间</th>
						      <th>操作</th>
						    </tr> 
						  </thead>
						  <tbody id="tbody">
						    
						  </tbody>
					</table>
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
    	/* layui.use(['laypage', 'layer'], function(){
		  var laypage = layui.laypage
		  ,layer = layui.layer;		  
		  
		  // 定义请求的URL
		  var url = "${pageContext.request.contextPath}/getAllList";
		  // 定义页码和显示的数据条数
		  var config = {page:1,pageSize:3};
		  // 请求数据
		  $.get(url,config,function(res){
			  console.log(res);
			//页码完整功能
			  laypage.render({
			    elem: 'page'
			    ,count: res.total
			    ,curr: config.page
			    ,limit: config.pageSize
			    ,layout: ['prev', 'page', 'next', 'skip']
			    ,jump: function(obj,first){
			      console.log(obj)
			      if(!first){
			    	  // 将选择的页码赋值给page参数
			    	  config.page = obj.curr; 
			    	  getListByPage(url,config)
			      }
			    }
			  });	 
		  	showLists(res,config.page);
		  });
		  
		}); */
    	// 点击其他按钮实现分页查询
    	function getListByPage(url,config){
    		$.getJSON(url,config,function(res){
    			showLists(res,config.page);
    		});
    	}
    	
    	// 定义一个将json数据展示到表格中的方法
    	function showLists(res,currpage){
    		var content = "";
    		$.each(res.lists,function(i,m){
    			content += "<tr>"
				      +"<td>"+m.mid+"</td>"
				      +"<td>"+m.title+"</td>"
				      +"<td>"+m.describe+"</td>"
				      +"<td>"+m.releasetime+"</td>"						      						     
				      +"<td>"
				      	  +"<div class='layui-table-cell laytable-cell-1-0-10'>"							      	  	 
					      	  	+"<a class='layui-btn layui-btn-normal layui-btn-xs'>修改</a>" 
					      	  	+"<a class='layui-btn layui-btn-danger layui-btn-xs delete'>删除</a>"
				      	  +"</div>"
				      +"</td>"
				    +"</tr>";
    		});
    		$("#tbody").html(content);
    	}
    	
		
		//弹框		
		$('#fabu').on('click', function(){			
		  layui.use('layer', function(){
          var layer = layui.layer;
          layer.open({
                type: 2,
                title: '发布任务',
                fix: false,
                shadeClose: true,
                shade: 0.8,
                area: ['660px', '420px'],
                content: 'message_add.jsp',
                end: function () {
                   location.reload();
                }
            });
        });
      })
		
		//判断弹框
		$(".delete").click(function(){
			layer.confirm('确定要删除此任务？', {
			  btn: ['是','否'] //按钮
			}, function(){
			  layer.msg('已删除', {icon: 1});
			}, function(){
			  layer.msg('已取消',  {icon: 2});
			});
		})			
		
		 layui.use('form', function(){
		  var form = layui.form; 
		  form.render();
		}); 
	</script>
	
</body>
</html>