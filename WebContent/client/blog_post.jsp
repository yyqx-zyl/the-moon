<%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/favicon.ico">

    <title>blog_post</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="css/bootstrap.min.css" rel="stylesheet">-->
    <link href="${ctx }/static/blogcss/style.css" rel="stylesheet">
    <link href="${ctx }/static/blogcss/font-awesome.min.css" rel="stylesheet">
    <link href="${ctx }/static/blogcss/animate.css" rel="stylesheet">
    <link href="${ctx}/static/style/css/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.useso.com/css?family=Source+Sans+Pro:300,400,600,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
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
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
           
            <div class="blog">
            
              <img src="${ctx }/static/${findblog.fimg}" alt="...">
              <div class="blog-desc">
                <h3>
                  <a href="blog-post.html">${findblog.bname }</a>
                </h3>
                <p class="text-muted"><fmt:formatDate value="${findblog.time }" pattern="yyyy-MM-hh"/></p>                
                <img class="img-responsive" src="${ctx }/static/${findblog.bimg }" id="imgda">
                <p>               
				  ${findblog.bdesc1 } 
                  <br /><br />
				  ${findblog.bdesc2 } 
				  <br /><br />
				  ${findblog.bdesc3 } 
                </p>
              </div>
            </div>

            <!-- Pagination -->
            <ul class="pager pull-right">
              <li><a href="${ctx }/getBlogList">返回</a></li>
            </ul>
            <div class="clearfix"></div>
            
            <div class="comments">
            <!-- New comment form -->
            <form action="" id="savacom">
             <input type="hidden" name="bid" value="${findblog.bid}"/>
			  <div class="row">
              <div class="cmt">
                <img src="${ctx }/static/${loginUser.userimage}" alt="...">
                <div class="cmt-block">
                  <strong>分享你的看法</strong>
                  <form role="form" class="cmt-body">
                    <div class="form-group">
                      <textarea class="form-control" rows="3" placeholder="Write comment" name="comdesc"></textarea>
                    </div>					
                    <a href="#" type="submit" onclick="add()" class="btn btn-red">评论</a>					
				  </form>				  
                </div>
              </div>
			  </div>
			  </form>
              <hr>
              <c:forEach items="${pageInfo.list }" var="com">
              <div class="cmt">
              
                <img src="${ctx }/static/${com.comimg}" alt="...">
                <div class="cmt-block">
                  <a href="user-profile.html" class="profile-link">${com.comname }</a> <span class="text-muted time"><fmt:formatDate value="${com.creationDate }" pattern="yyyy-MM-hh"/></span>
                  <span class="rating pull-right">
                    <span class="up">${com.upgood }</span>
                    <i class="fa fa-thumbs-up voteup"></i>  <i class="fa fa-thumbs-down votedown"></i>
                    <span class="down">${com.downbad}</span>
                  </span>
                  <p class="cmt-body">
                   ${com.comdesc }
                  </p>
                  <ul class="list-inline">
                    <li><a href="javascript:void(0);" class="anserta">回复</a></li>
               		<li><a href="javascript:void(0);" onclick="lookAn(this,${com.ruid})" class="looAn">查看回复</a></li>
               		<!-- 显示评论的回复 -->
               		<div class="pin" style="display:none;">
               		   
               		</div>
               		<!-- 回复评论的 -->
               		
	              
               
               	 
	              <div class="cmt" style="display:none;" >
	                <img src="${ctx }/static/${loginUser.userimage}" alt="...">
	                <div class="cmt-block">
	                  <strong>回复:${com.comname }</strong> 
	                  <form role="form" class="cmt-body" id="savedesc">
	                  <input type="hidden" name="ruid" value="${com.ruid}"/>
	                    <div class="form-group">
	                      <textarea class="form-control" rows="3" placeholder="写下想法" name="ancomdesc"></textarea>
	                    </div>					
	                    <a href="#" type="submit" onclick="addAncom()" class="btn btn-red">评论</a>					
					  </form>				  
	                </div>
	              </div>
                  </ul>
                </div>
              </div>
              </c:forEach>
            </div>
          </div>
        </div> <!-- / .row -->
      </div> <!-- / .container -->

    </div> <!-- / .wrapper -->
	<!-- Copyright -->
	<%@ include file="footer.jsp"%>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   
    <script src="${ctx}/static/style/js/jquery.min.js"></script> 
    <script src="${ctx }/static/blogjs/bootstrap.min.js"></script>
    <script src="${ctx }/static/blogjs/scrolltopcontrol.js"></script>
	<script src="${ctx }/static/blogjs/SmoothScroll.js"></script>
    <script src="${ctx }/static/blogjs/custom.js"></script>
    <script type="text/javascript">
      $(function(){
    	  $('.anserta').click(function(){
               if($(this).parents("ul").find(".cmt").css('display')=='none'){
            	   $(this).parents("ul").find(".cmt").css("display","block");
            	   $(this).parents("ul").find(".pin").css("display","none");
              }else{
            	  $(this).parents("ul").find(".cmt").css("display","none");
              }  
          })
          
          $('.looAn').click(function(){
               if($(this).parents("ul").find(".pin").css('display')=='none'){
            	   $(this).parents("ul").find(".pin").css("display","block");
            	   $(this).parents("ul").find(".cmt").css("display","none");
              }else{
            	  $(this).parents("ul").find(".pin").css("display","none");
            	  
              }  
          })
          
      });
      
      function lookAn(obj,ruid) {
    	  $.get("${ctx}/findByAnid",{ruid:ruid},function(data){
    		  $(obj).parent().next().empty();
       		  $(data).each(function(){
       			  var newTr=
   				  '<div class="sn">'+
   				  '<img src="${ctx }/static/'+this.comimg+'" alt="...">'+
   				  '<div class="cmt-block">'+
   				  '<a href="user-profile.html" class="profile-link">'+this.comname+'</a>'+
   				  '<p class="cmt-body">'+
   				  this.ancomdesc 
   				  '</p>'+
   				  '</div>'+
   				  '</div>';
   				//将创建的新行添加到表格中
   					$(obj).parent().next().append(newTr);	
   					
       		  }); 
       	  });
    	  
      }
      
      
      
      
      function addAncom() {
          $.ajax({
          //几个参数需要注意一下
              type: "POST",//方法类型
              dataType: "json",//预期服务器返回的数据类型
              url: "${ctx}/addAncomment" ,//url
              data: $('#savedesc').serialize(),
              success: function (result) {
                  if (result.code == 1) {
                  	 alert("评论发布成功！");
                  	window.parent.location.reload();
                  };
              },
              error : function() {
                  alert("评论出现异常！");
              }
          });
      }

      
      
      
        function add() {
            $.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "${ctx}/addComment" ,//url
                data: $('#savacom').serialize(),
                success: function (result) {
                    if (result.code == 1) {
                    	 alert("评论发布成功！");
                    	window.parent.location.reload();
                    };
                },
                error : function() {
                    alert("评论出现异常！");
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