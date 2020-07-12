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
<title>品牌故事</title>
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
<!-- 图片  -->
  <link rel="stylesheet" href="${ctx}/static/assets/css/main.css" rel="stylesheet">
</head>
<body>
<div class="body-wrapper">
  <%@ include file="top1.jsp"%>
  <!--/.navbar -->
  <div class="light-wrapper">
    <div class="container inner">
      <h2 class="section-title text-center">品牌故事</h2>
      <section class="about-section pt-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="about-thumb">
            <div class="thumb-one"><img src="${ctx}/static/images/designer/es20_4.jpg" alt="image" width="398" height="386"></div>
            <div class="thumb-two"><img src="${ctx}/static/images/designer/es20_2.jpg" alt="image"  width="398" height="386"></div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="about-content">
            <div class="section-header style--two">
              <h2 class="section-title">关于我们</h2>
            </div>
            <p>要么尽兴去旅行，要么专注拍婚照
				永恒婚纱摄影，专注多元化外景婚纱拍摄
				欧洲风情拍、浪漫海岛拍1日完成，省时省事
				特邀国际园林景观设计团队还原全球浪漫美景</p>
            <p>不必远行也能拍出仪式感婚照
				29年口碑品牌，每年服务超20000对新人
				“中国十佳”婚纱摄影品牌</p>
            <p>永恒婚纱摄影，南宁婚纱摄影专家与领导者</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--  -->
      <div class="divide30"></div>
      <h2 class="section-title">六大优势</h2>
      <section class="service-section pt-120" style="margin-top: -90px;">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="service-area">
              <div class="row">
                <div class="col-lg-4 col-md-6">
                  <div class="service-single">
                    <i class="flaticon-cruise"><i class="budicon-tie"></i></i>
                    <h3 class="service-name">外景优势</h3>
                    <p>	打破婚纱影楼冬季无外景，全面推出秋冬季外景基地，畅享海南三亚婚纱大片，丽江复古风情</p>
                  </div>
                </div><!-- service-singlee end -->
                <div class="col-lg-4 col-md-6">
                  <div class="service-single">
                    <i class="flaticon-cruise"><i class="budicon-shirt"></i></i>
                    <h3 class="service-name">服装优势</h3>
                    <p>拥有施华洛、法国兰斐礼服 、范冰冰明星同款婚纱，独特设计全面进口，风格多样，款式华丽。</p>
                  </div>
                </div><!-- service-singlee end -->
                <div class="col-lg-4 col-md-6">
                  <div class="service-single">
                    <i class="flaticon-cruise"><i class="budicon-camera-2"></i></i>
                    <h3 class="service-name">技术优势</h3>
                    <p>艺术造型实力与摄影器材的搭配，360度旋转穿透式实景拍摄，为您打造卓越的婚纱摄影品质</p>
                  </div>
                </div><!-- service-singlee end -->
                <div class="col-lg-4 col-md-6">
                  <div class="service-single">
                    <i class="flaticon-cruise"><i class="budicon-award-1"></i></i>
                    <h3 class="service-name">品牌优势</h3>
                    <p>多家著名品牌加盟</p>
                  </div>
                </div><!-- service-singlee end -->
                <div class="col-lg-4 col-md-6">
                  <div class="service-single">
                    <i class="flaticon-cruise"><i class="budicon-pen"></i></i>
                    <h3 class="service-name">品质优势</h3>
                    <p>五星尊荣服务，秉承顾客满意服务理念，尽享无忧服务。</p>
                  </div>
                </div><!-- service-singlee end -->
                <div class="col-lg-4 col-md-6">
                  <div class="service-single">
                    <i class="flaticon-cruise"><i class="budicon-crown"></i></i>
                    <h3 class="service-name">产品优势</h3>
                    <p>秉持与时俱进，精益求进，产品全套采用名品相册，皮箱，像框，尽显拍摄新人尊贵</p>
                  </div>
                </div><!-- service-singlee end -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--  -->
    
    <div class="divide30"></div>
      <h2 class="section-title">我们的团队</h2>
     <section class="destination-section pt-120 pb-120" style="margin-top: -90px;">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 mb-none-30">
            <div class="destination-single mb-30">
              <div class="thumb bg_img" data-background="${ctx}/static/images/destination/l1.jpg"></div>
              <div class="content">
                <h3 class="destination-name">摄影团队/Photography team</h3>
                <span class="date"><i class="fa fa-calendar"></i>2010/02/21 - 至今</span>
                <p>平均从业十年以上资深经验
					获世界最高级别摄影协会[APP]荣誉认证
					PPA MASTER (人像摄影大师)级别团队
					全面引进纯韩时尚顶尖摄影技术,	让幸福美成一幅画
					</p>
              </div>
            </div><!-- destination-single end -->
            <div class="destination-single mb-30">
              <div class="thumb bg_img" data-background="${ctx}/static/images/destination/l2.jpg"></div>
              <div class="content">
                <h3 class="destination-name">化妆团队/Make up team</h3>
                <span class="date"><i class="fa fa-calendar"></i>2010/02/21 - 至今</span>
                <p>始终秉承匠人初心，保持对时尚的敏感洞察力
					挖掘每对新人独一无二的美,精益求精
					彰显彩妆艺术魅力,打造时尚高端化妆美学
					荣获“中国杰出化妆师团队奖”
					</p>
              </div>
            </div><!-- destination-single end -->
            <div class="destination-single mb-30">
              <div class="thumb bg_img" data-background="${ctx}/static/images/destination/l3.jpg"></div>
              <div class="content">
                <h3 class="destination-name">数码团队/Digital team</h3>
               <span class="date"><i class="fa fa-calendar"></i>2010/02/21 - 至今</span>
                <p>团队研发3大数码后期处理黑科技
				不断突破和创新并提高自身的审美
				多次赴韩交流学习深造紧跟时尚数码步伐
				成就华人业内知名数码创作团队
				</p>
              </div>
            </div><!-- destination-single end -->
            <div class="destination-single mb-30">
              <div class="thumb bg_img" data-background="${ctx}/static/images/destination/l4.jpg" ></div>
              <div class="content">
                <h3 class="destination-name">婚庆团队/Wedding team</h3>
               <span class="date"><i class="fa fa-calendar"></i>2010/02/21 - 至今</span>
                <p>2006年-荣获成都婚纱影楼消费环境称号
				2008年-荣获成都市美容化妆大赛全场总冠军，新娘组冠军，晚妆冠军称号
					2008年-荣获成都市十佳消费者满意单位品牌称号
					2010年-荣获成都市消费者协会满意单位称号
					2011年-荣获“成都婚纱摄影消费与安全宣传示范单位”称号
                 </p>
              </div>
            </div><!-- destination-single end -->
          </div>
        </div>
      </div>
    </section>
    
    </div>
    <!-- /.container --> 
      <div class="container inner text-center" style="margin-top: -200px;">
        <h1 class="share-button">-END-</h1>
      </div>
  </div>
  <!-- /.light-wrapper -->
  <%@ include file="footer.jsp" %>
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
<!-- 引用 -->
    <script src="${ctx}/static/js/main.js"></script>
</body>
</html>