<%@ page language="java" import="java.util.*" errorPage="../error.jsp" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="style/images/favicon.png">
	<title>首页</title>
	<!-- Bootstrap core CSS -->
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
	<style type="text/css">
		*{
		    margin:0;
		    padding: 0;
		}
		table th,table td,input{
		    text-align: center;
		    vertical-align: middle;
		    
		}
		table input[type="text"]{
		    width: 50px;
		    overflow: hidden;
		}
		table span{
		    display: inline-block;
		    width: 20px;
		    background: #8C8C8C;
		    margin:0px 5px ;
		    color: #FFFFFF;
		    cursor: pointer;
		}
</style>
</head>
<body>
 <div>
  <%@ include file="top1.jsp" %>
 </div><!--herder1/-->
 <div class="banner" style="height:150px;">
  &nbsp;
 </div><!--banner/-->
 <!-- contain -->
 <div class="content">
  <div class="logo-nav">
  	<div id="services" class="section anchor">
			<h2 class="section-title text-center">购物车</h2><br/>
	</div>
 	<div style="text-align: center;line-height: 20px;" class="container">
 		<table class="table">
	        <tr>
	            <th>商品图片</th>
	            <th>商品名称</th>
	            <th>商品价格(元)</th>
	            <th>数目</th>
	            <th>小计(元)</th>
	            <th>操作</th>
	        </tr>
	        <c:if test="${empty cart }" var="no">
	        	<tr>
	        	<td colspan="6">
	        		<div class="light-wrapper" >
					    <div class="container inner">
					      <h2 class="section-title text-center">您还没有添加商品，请添加商品后查看</h2>
						</div>
					 </div>
	        	</td>
				</tr>
	        </c:if>
	        <c:if test="${!no }">
	        	<c:forEach items="${cart }" var="cart">
	        	<tr>
		            <td><img src="${ctx}/static/${cart.pimage }" style="width: 90px;height: 100px;"/></td>
		            <td valign="middle">${cart.pname }</td>
		            <td class="price">${cart.pprice }</td>
		            <td>
		            	<span onclick="reduce(${cart.cid },${cart.pcount},${cart.ptotalprice },${cart.pprice })">-</span>
		            	<input type="text" value="${cart.pcount }" class="num"/>
		            	<span onclick="add(${cart.cid },${cart.pcount},${cart.ptotalprice },${cart.pprice })">+</span>
		            </td>
		            <td class="subtotal">${cart.ptotalprice }</td>
		            <td class="del">
		            	<input type="hidden" value="${cart.cid }" name="cid"/>
		            	<button onclick="del_product(${cart.cid })">删除</button>&nbsp;
		            	<button onclick="cart_over(${cart.cid})">结算</button>
		            </td>
		        </tr>
	          </c:forEach>
	        </c:if>
	        	
   		</table>
 	</div>
 </div>
 </div><!-- contain/ -->
 <!-- footer -->
 <div style="margin-top: 500px;">
 	<%@ include file="footer.jsp" %>
 </div>
 
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
    <script type="text/javascript" charset="utf-8">
  	
    //数目加
    function add(cid,count,totalprice,price) {
        $.get("${pageContext.request.contextPath}/addcount",{"cid":cid,"totalprice":totalprice,"count":count,"price":price},function(data){
    		window.location.reload();
        });
    };
    
  	//数目减
    function reduce(cid,count,totalprice,price) {
        $.get("${pageContext.request.contextPath}/reducecount",{"cid":cid,"totalprice":totalprice,"count":count,"price":price},function(data){
    		window.location.reload();
        });
    };
    
    function del_product(obj){
    	var cid = obj;
    	$.get("${pageContext.request.contextPath}/delproduct",{"cid":cid},function(data){
    		window.location.reload();
    		alert("已经删除！！");
        });
    }
    
    function cart_over(obj){
    	var cid = obj;
    	alert(cid);
    	$.get("${pageContext.request.contextPath}/cartover",{"cid":cid},function(data){
    		window.location.reload();
    		alert("结算成功！！");
        });
    }
    
    $(function() {
        //文本框脱里焦点处理
        $('.num').each(function(i) {
            $(this).blur(function() {
                let p = parseFloat($(this).parents('tr').find(".subtotal").text());
                let c = parseFloat(this.value);
                console.log(p*c);
                $(this).parents('tr').find(".subtotal").text((c * p).toFixed(2));
                
            });
        });

    });
    </script>
</html>
