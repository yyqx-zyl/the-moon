<%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>论坛</title>

    <!-- Bootstrap core CSS -->
    <link href="${ctx}/static/blogcss/style.css" rel="stylesheet">
    <link href="${ctx}/static/blogcss/font-awesome.min.css" rel="stylesheet">
    <link href="${ctx}/static/blogcss/animate.css" rel="stylesheet">
    <link href="${ctx}/static/blogcss/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/static/assets/css/layui.css">
	    <link rel="stylesheet" href="${ctx}/static/assets/css/view.css"/>
	    <link rel="stylesheet" href="${ctx}/static/assets/css/style.css"/>
	    <link href="${ctx}/static/style/css/bootstrap.css" rel="stylesheet">
<link href="${ctx}/static/style/css/settings.css" rel="stylesheet">
<link href="${ctx}/static/style/css/owl.carousel.css" rel="stylesheet">
<link href="${ctx}/static/style/js/google-code-prettify/prettify.css" rel="stylesheet">
<link href="${ctx}/static/style/js/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
<link href="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.2" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style.css" rel="stylesheet">
<link href="${ctx}/static/style/css/color/blue.css" rel="stylesheet">
<link href='#css?family=Josefin+Sans:400,600,700,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
<link href='#css?family=Raleway:400,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='#css?family=Dosis:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
<link href="${ctx}/static/style/type/fontello.css" rel="stylesheet">
<link href="${ctx}/static/style/type/budicons.css" rel="stylesheet">
  </head>
  <body>
  <%@ include file="top1.jsp" %>
<span id="header_shadow" style="width: 100%; top: 30px;"></span>
    <!-- Wrapper -->
    <div class="wrapper">
      
      <div class="container">
        <div class="row">		  
          <div class="col-sm-9">
            <!-- Blog Post #1 -->
            <c:if test="${loginUser.uid == null }">
            <c:forEach items="${pageInfo.list }" var="blog">
            <div class="blog">
              <img src="${ctx }/static/${blog.fimg}" alt="...">
              <div class="blog-desc">
                <h3>
                  <a href="#" class="dakaigengduo">${blog.bname }</a>
                </h3>
                <p class="text-muted"><fmt:formatDate value="${blog.time }" pattern="yyyy-MM-hh"/></p>
				 <a href="#" class="dakaigengduo"><img class="img-responsive" src="${ctx }/static/${blog.bimg }" id="imgda"></a>
                <p>
                <span class="xianzhi"> ${blog.bdesc1 } </span><a href="#" class="dakaigengduo"><em>查看更多</em></a>
                </p>                               
              </div>
            </div>
            </c:forEach>
            </c:if>
            
			<c:if test="${loginUser.uid != null }">
			 <c:forEach items="${pageInfo.list }" var="blog">
            <div class="blog">
              <img src="${ctx }/static/${blog.fimg}" alt="...">
              <div class="blog-desc">
                <h3>
                  <a href="${ctx}/findByBid?bid=${blog.bid}">${blog.bname }</a>
                </h3>
                <p class="text-muted"><fmt:formatDate value="${blog.time }" pattern="yyyy-MM-hh"/></p>
				 <a href="${ctx}/findByBid?bid=${blog.bid}"><img class="img-responsive" src="${ctx }/static/${blog.bimg }" id="imgda"></a>
                <p>
                <span class="xianzhi"> ${blog.bdesc1 } </span><a href="${ctx}/findByBid?bid=${blog.bid}"><em>查看更多</em></a>
                </p>                               
              </div>
            </div>
            </c:forEach>
			</c:if>
			
			<c:if test="${empty pageInfo.list  }" var="my">
			<div class="blog">
              <div class="blog-desc">
                <h2 class="section-title text-center">您还没有添加盖分类的博客，请添加后继续查看</h2>                              
              </div>
            </div>
			</c:if>
			
        <div class="pagination">
		        <ul>
		          <li><a href="${ctx}/getBlogList?currpage=${pageInfo.pageNum-1}">Prev</a></li>
		          <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
					 <c:if test="${page_Num == pageInfo.pageNum }">
					    <li class="active"><a href="#">${page_Num}</a></li>
					 </c:if>
					 <c:if test="${page_Num != pageInfo.pageNum }">
					 <li>
					   <a href="${ctx}/getBlogList?currpage=${page_Num}">${page_Num}</a>
					 </li>
					</c:if>
				</c:forEach>
		          <li><a href="${ctx}/getBlogList?currpage=${pageInfo.pageNum+1}">Next</a></li>
		        </ul>
      </div>

          </div>
                      
<div class="col-sm-3">
	<c:if test="${loginUser.uid == null }">
       <button class="form-control"
        data-toggle="modal" ><i class="budicon-plus-1"></i><span class="dakaigengduo">添加博客</span></button>
     </c:if>
     <c:if test="${loginUser.uid != null }">
      <button class="form-control"
        data-toggle="modal" data-target="#myModal" ><i class="budicon-plus-1"></i>添加博客</button>
     </c:if>  
            <!-- Categories -->			
			<div class="panel-heading">
              <strong>分类</strong>
            </div>	
            <c:forEach items="${calist}" var="cate">	
            <div class="panel">              
              <div class="panel-body bg-darkblue">
                <ul>
                  <li><a href="${ctx}/getBlogList?caid=${cate.caid}">${cate.cname }</a></li>
                </ul>
              </div>
            </div>
            </c:forEach>
			<!-- Accordion -->			
			<div class="panel-heading">
              <strong>关于博客</strong>
			</div>           
            <div class="panel-group" id="help-nav">
              <div class="panel">
                <div id="help-nav-one" class="panel-collapse collapse in">
                  <div class="panel-body bg-white">
                    <p>
            		        我们的博客展示的是客户喜好我们那一部分的服务推荐给大家的展示。客户也可以发布论坛帖子推荐自己喜欢的商品给大家并且可以提供对应的建议，我们会进行相应的更改措施
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div> <!-- / .row -->
      </div> <!-- / .container -->

    </div> <!-- / .wrapper -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						发布你感兴趣的博客
					</h4>
				</div>
				<div class="modal-body">
					<form class="am-form am-form-horizontal"
						id="addblog" method="post">
						<div class="am-form-group">
								<label for="editRemark" class="am-u-sm-3 am-form-label">
									类型</label>
								<div class="am-u-sm-9">
							<select name="cateid">		
								<c:forEach items="${calist }" var="cate">
									      <option value="${cate.caid}" >${cate.cname }</option>	
							    </c:forEach>
						    </select>
								</div>
							</div>
							<div class="am-form-group">
								<label for="editProductName" class="am-u-sm-3 am-form-label">
							博客标题</label>
								<div class="am-u-sm-9">
									<input type="text" id="bname" required
										placeholder="博客标题" name="bname">
									
								</div>
							</div>
							<div class="am-form-group">
								<label for="editWareNum" class="am-u-sm-3 am-form-label">
									相关图片</label>
								<div class="layui-form-item layui-form-text">
								    <div class="layui-input-block">
								         <button type="button" class="layui-btn layui-btn-danger" id="test7"><i class="layui-icon"></i>上传图片</button>
								    </div>
								</div>
							</div>
							<div class="am-form-group">
								<label for="editRemark" class="am-u-sm-3 am-form-label">
									描述</label>
								<div class="am-u-sm-9">
									<textarea class="" rows="5" id="bdesc1" name="bdesc1"
										placeholder="描述"></textarea>
								</div>
							</div>
					</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" id="butUpdate" onclick="addblog()">
						发布
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div>
    <!-- Footer -->
   <%@ include file="footer.jsp"%>
    <!-- Bootstrap core JavaScript
    ================================================== -->
  <script src="${ctx}/static/blogjs/jquery.min.js"></script>
    <script src="${ctx}/static/blogjs/bootstrap.min.js"></script>
    <script src="${ctx}/static/blogjs/scrolltopcontrol.js"></script>
    <script src="${ctx}/static/assets/layui.all.js"></script>
	<script src="${ctx}/static/blogjs/SmoothScroll.js"></script>
    <script src="${ctx}/static/blogjs/custom.js"></script>
    <script type="text/javascript">
   
    $(function(){
  	  $('.dakaigengduo').click(function(){
  		alert("请登录后查看！！");
		window.location.href = "${ctx}/Login.jsp"
  	  })
    });
    layui.use('upload', function(){
		  var $ = layui.jquery
		  ,upload = layui.upload; 
		//设定文件大小限制
		  upload.render({
		    elem: '#test7'// 获得上传文件的文件名
		    ,url: '${ctx}/uploadblog'
//		    ,size: 60 //限制文件大小，单位 KB
		    ,done: function(res){
		    	if(res.code > 0){
		    		layer.msg('上传成功',{icon: 6});
		    	}else{
		    		layer.msg('上传失败',{icon: 3});
		    	}
		    }
		  });
		});
    
    
    $(".xianzhi").each(function(){
        var len=$(this).text().length;   //当前HTML对象text的长度
        if(len>100){
            var str="";
            str=$(this).text().substring(0,100)+"......";  //使用字符串截取，获取前30个字符，多余的字符使用“......”代替
            $(this).html(str);                   //将替换的值赋值给当前对象
        }
    });
    
    function addblog() {
        $.ajax({
        //几个参数需要注意一下
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "${ctx}/addBlog" ,//url
            data: $('#addblog').serialize(),
            success: function (result) {
            	$("#myModal").modal("hide");
                if (result.code == 1) {
                	 alert("发布博客成功！");
                	window.parent.location.reload();
                };
            },
            error : function() {
                alert("发布博客出现异常！");
            }
        });
    }
    </script>
  </body>
  <script src="${ctx}/static/style/js/jquery.min.js"></script> 
<script src="${ctx}/static/style/js/bootstrap.min.js"></script> 
<script src="${ctx}/static/style/js/twitter-bootstrap-hover-dropdown.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.themepunch.plugins.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.themepunch.revolution.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.easytabs.min.js"></script> 
<script src="${ctx}/static/style/js/owl.carousel.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.isotope.min.js"></script> 
<script src="${ctx}/static/style/js/jquery.fitvids.js"></script> 
<script src="${ctx}/static/style/js/jquery.fancybox.pack.js"></script> 
<script src="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script> 
<script src="${ctx}/static/style/js/fancybox/helpers/jquery.fancybox-media.js?v=1.0.0"></script> 
<script src="${ctx}/static/style/js/jquery.slickforms.js"></script> 
<script src="${ctx}/static/style/js/instafeed.min.js"></script> 
<script src="${ctx}/static/style/js/retina.js"></script> 
<script src="${ctx}/static/style/js/google-code-prettify/prettify.js"></script> 
<script src="${ctx}/static/style/js/scripts.js"></script>
</html>