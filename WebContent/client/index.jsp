<%@ page language="java" contentType="text/html; charset=UTF-8"  errorPage="../error.jsp"
    pageEncoding="UTF-8"%>
         <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="style/images/favicon.png">
<title>Frost</title>
<style type="text/css">
	.category{
	text-align: center;
	font-size: 25px;
	}
	.gelikai{
	height: 45px;	
	}
</style>
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

</head>
<body>
<div class="body-wrapper">
  <%@ include file="top1.jsp" %>
  <div id="home" class="section">
    <div class="light-wrapper">
      <div class="fullscreenbanner-container revolution">
        <div class="fullscreenbanner">
          <ul>
            <li data-transition="fade"> <img src="${ctx}/static/style/images/art/slider-bg1.jpg" alt="" />
               <div class="caption large lite sfb" data-x="center" data-y="245" data-speed="900" data-start="800" data-easing="Sine.easeOut">THE  MOON</div>
              <div class="caption small lite sfb" data-x="center" data-y="319"  data-speed="900" data-start="1500" data-easing="Sine.easeOut">Because great design comes with understanding customer needs</div>
              <div class="caption small sfb" data-x="center" data-y="362" data-speed="900" data-start="2200" data-easing="Sine.easeOut">
                <div class="smooth"><a href="#contact" class="btn btn-border-lite">Get in Touch</a></div>
              </div>
            </li>
            
            <li data-transition="fade"> <img src="${ctx}/static/style/images/art/slider-bg2.jpg" alt="" />
              <div class="caption large lite sfb" data-x="center" data-y="245" data-speed="900" data-start="800" data-easing="Sine.easeOut">THE  MOON</div>
              <div class="caption small lite sfb" data-x="center" data-y="319"  data-speed="900" data-start="1500" data-easing="Sine.easeOut">Because great design comes with understanding customer needs</div>
              <div class="caption small sfb" data-x="center" data-y="362" data-speed="900" data-start="2200" data-easing="Sine.easeOut">
                <div class="smooth"><a href="#contact" class="btn btn-border-lite">Get in Touch</a></div>
              </div>
            </li>
            <li data-transition="fade"> <img src="${ctx}/static/style/images/art/slider-bg3.jpg" alt="" />
              <div style="color: #434343;" class="caption large customin customout" data-x="center" data-y="255" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="600"
						data-start="700"
						data-easing="Back.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn">THE  MOON</div>
              <div class="caption small customin customout" data-x="center" data-y="329" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="600"
						data-start="1100"
						data-easing="Back.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn">Specializing in branding, motion video & mobile applications</div>
            
            </li>
          </ul>
          <div class="tp-bannertimer tp-bottom"></div>
        </div>
        <!-- /.fullscreenbanner --> 
      </div>
      <!-- /.fullscreenbanner-container --> 
    </div>
  </div>
  <div id="services" class="section anchor">
    <div class="light-wrapper">
      <div class="container inner">
        <h2 class="section-title text-center">这个怎么运作</h2>
        <p class="lead main text-center">自2008年以来，我们一直在做有用的事情</p>
        <div class="row text-center services-1">
          <div class="col-sm-3">
            <div class="col-wrapper">
              <div class="icon-wrapper"> <i class="budicon-image"></i> </div>
              <h3>摄影</h3>
              <p>摄影是因为它仅仅用一幅静态的影像，捕捉到你瞳孔中观察的世界。静默无言的照片，可以存下已逝的时光，可以载下世间最难忘的珍贵瞬间。</p>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-wrapper">
              <div class="icon-wrapper"> <i class="budicon-browser-3"></i> </div>
              <h3>网页设计</h3>
              <p>有效地将图形引入网页设计之中，增加人们浏览网页的兴趣，在崇尚鲜明个性风格的今天，网页设计应增加个性化因素。 </p>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-wrapper">
              <div class="icon-wrapper"> <i class="budicon-shopping-cart"></i> </div>
              <h3>电子商务</h3>
              <p>电子商务是商业的新模式，是指在全球各地广泛的商业贸易活动中，在因特网开放的网络环境下，基于浏览器/服务器应用方式，买卖双方不谋面地进行各种商贸活动</p>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="col-wrapper">
              <div class="icon-wrapper"> <i class="budicon-radio"></i> </div>
              <h3>婚纱选择</h3>
              <p>自团队运作以来我们一直选择优雅、美丽的、大气的婚纱。让客户选的放心穿的安心</p>
            </div>
          </div>
        </div>
        <!-- /.services --> 
        
      </div>
      <!-- /.container --> 
    </div>
  </div>
  <!-- /#home -->
  
  <div class="parallax parallax1">
    <div class="container inner text-center">
      <h1 class="share-button">点击 <span class="colored">&</span>选择商品类型</h1>
      <div class="share-links">
        <ul>
          <li><a class="btn share-facebook" href="${ctx}/getmarryList">婚礼</a></li>
          <li><a class="btn share-twitter" href="${ctx}/getdressList">婚纱</a></li>
          <li><a class="btn share-pinterest" href="${ctx}/showMan">选择团队人员</a></li>
        </ul>
      </div>
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.parallax -->
  <div id="portfolio" class="section anchor">
    <div class="dark-wrapper">
      <div class="container inner">
        <h2 class="section-title text-center">我们的优秀项目</h2>
        <p class="lead main text-center">出色的设计伴随着了解客户需求</p>
        <div class="category">
      
            <c:forEach items="${calist }" var="category" step="1" end="2">
            
           <span><a href="${ctx }/getProList?caid=${category.caid}">${category.cname }</a></span>
            </c:forEach>
        </div>
        <div class="gelikai"></div>
			<c:forEach items="${pageInfo.list }" var="pro">
								<div class="col-xs-12 col-sm-4">
								
									<div class="post" style="margin-left:5px; overflow: hidden;" >
										<div class="pro-img">
										<figure class="main" style="width: 440px;height: 340px; ">
											<img src="${ctx}/static/${pro.img}"/>
										</figure>	
										</div>
										<div class="actions-btn" >
												<p class="clearfix">
														${pro.pname }
												</p>
										 </div>
									</div>
								
								</div>
			</c:forEach>
        <!-- /.portfolio --> 
 
      </div>
    </div>
  </div>
  <!-- /#portfolio -->
  
  <div class="parallax parallax2 work-together">
    <div class="container inner text-center">
      <h1>我们创造独特<span class="colored">和</span> 华丽的东西</h1>
      <div class="divide10"></div>
      <div class="smooth"><a href="#contact" class="btn btn-border-lite">让我们一起工作吧</a></div>
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.parallax -->
  
  <div id="about" class="section anchor">
    <div class="light-wrapper">
      <div class="container inner">
        <h2 class="section-title text-center">关于我们团队</h2>
        <p class="lead main text-center">一家婚庆创意公司，将创意变成美丽的东西</p>
        <div class="row">
          <div class="col-sm-8">
            <h2>我们的工作地点</h2>
            <p class="lead">婚庆公司着重点在于婚礼本身，会场布置着重点在场景的布置，婚礼大于会场布置，一场好的婚礼，会场布置</p>
            <p>
是为婚礼服务的，它是为了更好地表达婚礼而设置的一个元素，正如一场电影为表达主题而设置的周围环境布
置一样，会场布置是为做好一场婚礼服务的婚礼程序一般包括如下分工:策划师、督导师(总管)、司仪/主持人、
形象设计师、化妆师、摄影摄像师、MV制作师、花艺师、婚宴设计师、车队、乐队等。无论你是请婚庆公司还</p>
            <p>是自己策划，都应做到分工明确。服务范围包括:婚礼策划、婚礼主持、现场督导、摄影摄像、新人造型、场地装饰、灯光舞美等。</p>
          </div>
          <div class="col-sm-4">
            <figure><img src="${ctx}/static/images/hun.png" alt="" /></figure>
          </div>
        </div>
        <div class="divide60"></div>
        <div class="row">
          <div class="col-sm-4">
            <div class="section-title">
              <h3>我们的技能</h3>
            </div>
            <p>婚礼场景布置、优美婚纱的提供、婚礼团队的造型师、摄影师、设计师、化妆师</p>
            <div class="divide10"></div>
            <ul class="progress-list">
              <li>
                <p>P摄影<em>100%</em></p>
                <div class="progress plain">
                  <div class="bar" style="width: 100%;"></div>
                </div>
              </li>
              <li>
                <p>最终裁切<em>100%</em></p>
                <div class="progress plain">
                  <div class="bar" style="width: 100%;"></div>
                </div>
              </li>
              <li>
                <p>The_Moon工作室<em>85%</em></p>
                <div class="progress plain">
                  <div class="bar" style="width: 100%;"></div>
                </div>
              </li>
              <li>
                <p>婚礼布置<em>100%</em></p>
                <div class="progress plain">
                  <div class="bar" style="width: 100%;"></div>
                </div>
              </li>
            </ul>
            <!-- /.progress-list --> 
          </div>
          <div class="col-sm-4">
            <div class="section-title">
              <h3>为什么选择我们？</h3>
            </div>
            <div class="divide5"></div>
            <div class="panel-group" id="accordion">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"> <a data-toggle="collapse" class="panel-toggle active" data-parent="#accordion" href="#collapseOne"> 100%反应灵敏</a> </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in">
                  <div class="panel-body">在我们的团队工作过程中，假如遇到突发状况我们能够百分之百的在最短时间内实行出解决办法。不让客户受到一丁点惊吓和害怕。</div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"> <a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseTwo">态度百分之百积极温和</a> </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse">
                  <div class="panel-body">都说三个臭皮匠赛过诸葛亮，当团队协作起来，才会有更多的想法，这样工作才能做得好。一个项目出来，光靠一个人是很难完成的，这就需要团队来分担，团队成员之间相互配合，工作才能顺利的完成。The_Moon团队是相当和谐的，内部交流迅速。有效的快速了解每个客户的需求。并且保证服务态度高质量</div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title"> <a data-toggle="collapse" class="panel-toggle" data-parent="#accordion" href="#collapseThree"> 完美的婚庆套餐 </a> </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse">
                  <div class="panel-body">根据客户的不同需求我们为客户定制了相应的客户需求套餐，套餐中需求不同的客户可根据自己的需求进行选择</div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="section-title">
              <h3>我们的特色服务</h3>
            </div>
            <div class="services-2">
              <div class="row">
                <div class="col-sm-12">
                  <div class="bm20">
                    <div class="icon"> <i class="budicon-camera-1 icn"></i> </div>
                    <!-- /.icon -->
                    <div class="text">
                      <h4>摄影</h4>
                      <p>专业摄影师为你拍下动人照片</p>
                    </div>
                    <!-- /.text --> 
                  </div>
                  <!-- /.div -->
                  <div class="bm20">
                    <div class="icon"> <i class="budicon-video-1 icn"></i> </div>
                    <!-- /.icon -->
                    <div class="text">
                      <h4>动感影像</h4>
                      <p>摄影师拍摄一组照片或者视频，后期团队专业剪辑</p>
                    </div>
                    <!-- /.text --> 
                  </div>
                  <!-- /.div -->
                  <div class="bm20">
                    <div class="icon"> <i class="budicon-radio icn"></i> </div>
                    <!-- /.icon -->
                    <div class="text">
                      <h4>音效设计</h4>
                      <p>为您提供符合照片或影像的音乐</p>
                    </div>
                    <!-- /.text --> 
                  </div>
                  <!-- /.div --> 
                </div>
                <!-- /.col-sm-12 --> 
              </div>
              <!-- /.row --> 
            </div>
            <!-- /.col-services --> 
          </div>
        </div>
        <hr />
      </div>
    </div>
  </div>
  <!-- /#about -->
  
  <div class="parallax parallax4 facts">
    <div class="container inner">
      <div class="row text-center services-3">
        <div class="col-sm-3">
          <div class="col-wrapper">
            <div class="icon-border bm10"> <i class="budicon-video-2"></i> </div>
            <h4>7518</h4>
            <p>拍摄镜头</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="col-wrapper">
            <div class="icon-border bm10"> <i class="budicon-coffee"></i> </div>
            <h4>3472</h4>
            <p>制作影像</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="col-wrapper">
            <div class="icon-border bm10"> <i class="budicon-video"></i> </div>
            <h4>2184</h4>
            <p>拍摄照片</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="col-wrapper">
            <div class="icon-border bm10"> <i class="budicon-award-1"></i> </div>
            <h4>4523</h4>
            <p>获得奖项</p>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.parallax -->
  
  <div id="pricing" class="section anchor">
    <div class="light-wrapper">
      <div class="container inner">
        <h2 class="section-title text-center">我们的套餐</h2>
        <p class="lead main text-center">我们为您的业务提供优惠的价格</p>
        <div class="pricing row">
          <div class="col-sm-3">
            <div class="plan">
              <h3>青铜</h3>
              <h4><span class="amount"><span>Days</span>5</span></h4>
              <div class="features">
                <ul>
                  <li>5天</li>
                  <li>专业团队运行</li>
                  <li>25位专业人员</li>
                  <li>选择婚纱</li>
                  <li>只为婚纱</li>
                </ul>
              </div>
              <div class="select">
                <div> <a href="#" class="btn inverse">选择方案</a> </div>
              </div>
            </div>
          </div>
          <!-- /.col-sm-3  -->
          <div class="col-sm-3">
            <div class="plan">
              <h3> <span class="featured f1"></span> 白银 </h3>
              <h4><span class="amount"><span>Days</span>10</span></h4>
              <div class="features">
                <ul>
                  <li>10天</li>
                  <li>专业团队运行</li>
                  <li>25位专业人员</li>
                  <li>选择婚纱、婚礼布置</li>
                  <li>只为婚礼、婚纱</li>
                </ul>
                <div class="select">
                  <div> <a href="#" class="btn inverse">选择方案</a> </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.col-sm-3  -->
          <div class="col-sm-3">
            <div class="plan">
              <h3>黄金</h3>
              <h4><span class="amount"><span>Days</span>20</span></h4>
              <div class="features">
                <ul>
                  <li>20天</li>
                  <li>专业团队运行</li>
                  <li>25位专业人员</li>
                  <li>选择婚礼、后勤团队</li>
                  <li>只为婚礼、后勤团队</li>
                </ul>
                <div class="select">
                  <div> <a href="#" class="btn inverse">选择方案</a> </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.col-sm-3  -->
          <div class="col-sm-3">
            <div class="plan">
              <h3>至尊</h3>
              <h4><span class="amount"><span>Days</span>30</span></h4>
              <div class="features">
                <ul>
                  <li>30天</li>
                  <li>专业团队运行</li>
                  <li>225位专业人员</li>
                  <li>婚礼、婚纱、后勤团队</li>
                  <li>至尊会员客户！</li>
                </ul>
                <div class="select">
                  <div> <a href="#" class="btn inverse">选择方案</a> </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.col-sm-3  --> 
        </div>
        <!-- /.pricing  --> 
      </div>
    </div>
  </div>
  <div class="parallax parallax3 customers">
    <div class="container inner text-center">
      <div class="testimonials owl-carousel thin">
        <div class="item">
          <blockquote>
            <p>为您真诚服务<small>The_Moon</small></p>
          </blockquote>
        </div>
        <div class="item">
          <blockquote>
            <p>提供完美套餐<small>The_Moon</small></p>
          </blockquote>
        </div>
        <div class="item">
          <blockquote>
            <p>婚礼、婚纱<small>The_Moon</small></p>
          </blockquote>
        </div>
        <div class="item">
          <blockquote>
            <p>专业团队<small>The_Moon</small></p>
          </blockquote>
        </div>
      </div>
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.parallax -->
  <div id="contact" class="section anchor">
    <div class="dark-wrapper">
      <div class="container inner">
        <div class="thin text-center">
          <h2 class="section-title text-center">保持联系</h2>
          <p class="lead main text-center">随时给我们留言以联系完美</p>
          <p>假如您对我们的团队有意见或者建议皆可为我们留言</p>
          <ul class="contact-info">
            <li><i class="icon-location"></i>四川省成都市青羊区 </li>
            <li><i class="icon-phone"></i>+00 (123) 284 78 90</li>
            <li><i class="icon-mail"></i><a href="first.last@email.com">first.last@email.com</a> </li>
          </ul>
          <div class="divide50"></div>
          <div class="form-container">
            <div class="response alert alert-success"></div>
            <form class="forms" action="contact/form-handler.php" method="post">
              <fieldset>
                <ol class="row">
                  <li class="form-row text-input-row name-field col-sm-6">
                    <input type="text" name="name" class="text-input defaultText required" title="您的姓名"/>
                  </li>
                  <li class="form-row text-input-row email-field col-sm-6">
                    <input type="text" name="email" class="text-input defaultText required email" title="您的邮箱"/>
                  </li>
                  <li class="form-row text-area-row col-sm-12">
                    <textarea name="message" class="text-area required" title="您的建议"></textarea>
                  </li>
                  <li class="form-row hidden-row">
                    <input type="hidden" name="hidden" value="" />
                  </li>
                  <li class="nocomment">
                    <label for="nocomment">Leave This Field Empty</label>
                    <input id="nocomment" value="" name="nocomment" />
                  </li>
                  <li class="button-row">
                    <input type="submit" value="Send Message" name="submit" class="btn btn-submit bm0" />
                  </li>
                </ol>
                <input type="hidden" name="v_error" id="v-error" value="Required" />
                <input type="hidden" name="v_email" id="v-email" value="Enter a valid email" />
              </fieldset>
            </form>
          </div>
          <!-- /.form-container -->
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
     
  </div>
  <!-- /#contact -->
  <footer class="footer">
    <div class="container inner">
      <p class="pull-left">© 2014 Frost. All rights reserved. More Templates <a href="http://www.moobnn.com/" target="_blank" title="模板在线">模板在线</a> <a href="http://guantaow.taobao.com" target="_blank">厚朴网络 淘宝店</a> - Collect from <a href="http://www.moobnn.com/" title="模板在线" target="_blank">模板在线</a> <a href="http://guantaow.taobao.com" target="_blank">厚朴网络 淘宝店</a>.</p>
      <ul class="social pull-right">
        <li><a href="#"><i class="icon-s-rss"></i></a></li>
        <li><a href="#"><i class="icon-s-twitter"></i></a></li>
        <li><a href="#"><i class="icon-s-facebook"></i></a></li>
        <li><a href="#"><i class="icon-s-dribbble"></i></a></li>
        <li><a href="#"><i class="icon-s-pinterest"></i></a></li>
        <li><a href="#"><i class="icon-s-instagram"></i></a></li>
        <li><a href="#"><i class="icon-s-vimeo"></i></a></li>
      </ul>
    </div>
    <!-- .container --> 
  </footer>
  <!-- /footer --> 
</div>
<!-- .body-wrapper --> 
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
</body>
</html>