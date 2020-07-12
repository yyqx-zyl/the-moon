 <%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The_Moon</title>
<link type="text/css" href="${ctx}/static/css/css.css" rel="stylesheet" />
<link type="text/css" href="${ctx}/static/css/voice3_css.css" rel="stylesheet" />
<style type="text/css">
#box{
	width:1500px;
	height:460px;
	
	
}
#box .video{
	width:1000px;
	height:440px;
	margin-bottom:40px;
	margin-left:50px;
	display: none;
	
}
#box #videoList{
	width:220px;
	height:450px;
	margin-left:1100px;
	margin-top:-490px;
	background:#FFF; 
	color:#FFF;
	overflow:auto;
	cursor:pointer;
	text-align: center;
}
#box #videoList #video1{
	width:200px;
	height:50px;
	background:#FFF; 
	color:#FFF;
} 
.on{ background: #FF4400; color: #fff;}
</head>
</style>
<body>
	<div style="width:100%;height:100px;">
   <%@ include file="top1.jsp" %>
   </div>
   <div style="width:100%;height:100px;">
   <center><h1>影视制作</h1></center>
   </div>
   <div id="box"><!-- 视频最大div -->
   
    <video class="video" controls preload="auto" style="display: block;">
     <source src="${ctx}/static/video/1.mp4" type="video/mp4">
    </video>
    <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/2.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/3.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/4.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/5.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/6.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/7.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/8.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/9.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/10.mp4" type="video/mp4">
    </video>
     <video class="video" controls preload="auto" >
     <source src="${ctx}/static/video/11.mp4" type="video/mp4">
    </video>
    
    
    <div id="videoList">
    	<div id="video1">
   		<h2>Sweet Wedding</h2>
   		</div>
   		<div id="video1">
   		<h2>I Promise</h2>
   		</div>
   		<div id="video1">
   		<h2>Summer Love</h2>
   		</div>
   		<div id="video1">
   		<h2>Love each other</h2>
   		</div>
   		<div id="video1">
   		<h2>Our Love Story</h2>
   		</div>
   		<div id="video1">
   		<h2>Wedding Countdown</h2>
   		</div>
   		<div id="video1">
   		<h2>Wedding Album</h2>
   		</div>
   		<div id="video1">
   		<h2>Your Words</h2>
   		</div>
   		<div id="video1">
   		<h2>Comfortable Life</h2>
   		</div>
   		<div id="video1">
   		<h2>In My Mind</h2>
   		</div>
   		<div id="video1">
   		<h2>We're Married</h2>
   		</div>
    </div><!-- 播放列表 结束-->
    
    
    </div><!-- 视频最大div结束 -->
    
   <%@ include file="footer.jsp" %>
   
    <!--视频播放插件end-->
    <!--视频插件-->
    <script src="${ctx}/static/style/js/jquery.min.js"></script> 
    <script type="text/javascript">
  	//找到四个标题
	var bts = document.getElementsByTagName("h2");//11个 [标题一,]
	var divs = document.getElementsByClassName("video");//11个 [内容一，]
	//对象可以动态的添加属性  属性作用记录对象在页面中的位置（下标）
	//for循环为所有的标题添加同一个鼠标事件
	for( var i = 0 ; i < bts.length ; i++ ){
		bts[i].index = i; //为每一个标题对象记录 下标
		bts[i].onclick = function(){
			//排他思想   先将所有的标题样式 清空  
			for( var j = 0 ; j < bts.length ; j++ ){
				
				bts[j].className = "";
				
				divs[j].style.display = "none";
			}
			//操作当前的标题时，为该标题添加样式 on 
			
			this.className = "on"; //留下当前操作 
			divs[this.index].style.display = "block";
			
		}

	} 
	window.onload=function(){
	    var videos = document.getElementsByTagName('video');//获取所有video
	    //循环给所有video添加监听事件 当前的video开始播时  调用pauseAll 将当前播放的video的索引传值过去
	    for (var i = videos.length - 1; i >= 0; i--) {
	        (function(n){
	            videos[n].addEventListener('play',function(){
	                pauseAll(n);
	            })
	        })(i)
	    }
	    //接收调用传来的索引 循环所有video 索引与传来的索引不相同的 暂停 重载
	    function pauseAll(index){
	        for (var j = videos.length - 1; j >= 0; j--) {
	            if (j!=index){
	                videos[j].pause();
	                videos[j].load();
	            }
	        }
	    }

	}
	


   /*   jQuery.HUItab =function(tabBar,tabCon,class_name,tabEvent){
         var $tab_menu=$(tabBar);
         // 初始化操作
         $tab_menu.removeClass(class_name);
         $(tabBar+":first").addClass(class_name);
         $(tabCon).hide();
         $(tabCon+":first").show();
             
         $tab_menu.bind(tabEvent,function(){
             $tab_menu.removeClass(class_name);
             $(this).addClass(class_name);
             var index=$tab_menu.index(this);
             $(tabCon).hide();
             $(tabCon).eq(index).show();
         });
       }
     $(function () {
         $.HUItab("#box #videoList div#video1","#box #video","current","click")
    })
    
     layer.open({
     type: 1,
     title: false,
     shadeClose: true,
     area: ['400px', '350px'],
     content: $('#box'),
     success: function(layero){
         //layer样式layer-anim导致全屏样式错乱，移除该样式即可
         setTimeout(function() {
          $(layero).removeClass('layer-anim');
         }, 0);
     }
     }); */
     
    </script>
    
 
	
	
</body>
<script type="text/javascript" src="${ctx}/static/js/jquery.js"></script>
<script type="text/javascript" src="${ctx}/static/js/js.js"></script>
<script src="${ctx}/static/js/jquery.mousewheel.min.js"></script>
<script src="${ctx}/static/js/jquery.mCustomScrollbar.min.js"></script>
<script src="${ctx}/static/lay/modules/layer.js"></script>

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
    