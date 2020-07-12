<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="ctx"></c:set>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/static/assets/css/layui.css">
    <link rel="stylesheet" href="${ctx}/static/assets/css/admin.css">
    <link rel="icon" href="favicon.ico">
    <title>管理后台</title>
</head>
<body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header custom-header">            
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item slide-sidebar" lay-unselect>
                    <a href="javascript:;" class="icon-font"><i class="ai ai-menufold"></i></a>
                </li>               
            </ul>
			<p class="datexians">the moon婚庆系统管理</p>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="javascript:;">${loginUser.username }</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${ctx }/loginOut">退出</a></dd>
                    </dl>
                </li>
            </ul>
        </div>

        <div class="layui-side custom-admin">
            <div class="layui-side-scroll">
                <div class="custom-logo">
                    <img src="${ctx }/static/style/images/logo1.png" alt=""/>                    
                    <h1>管理系统</h1>
                </div>
                <ul id="Nav" class="layui-nav layui-nav-tree">
                    <li class="layui-nav-item" >
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe665;</i>
                            <em>商品管理</em>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="${ctx}/getmarryAll">婚礼信息</a></dd><!-- ${ctx}/server/views/pro_dress.jsp  -->
                            <dd><a href="${ctx}/getdressAll">婚纱信息</a></dd><!-- ${ctx}/server/views/pro_marry.jsp -->
                            <dd><a href="${ctx}/getdesignerAll">活动信息</a></dd><!-- ${ctx}/server/views/designer.jsp -->
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe857;</i>
                            <em>用户管理</em>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="${ctx}/getusersList">用户信息</a></dd>
                            <dd><a href="${ctx}/examine">用户审核</a></dd>
                        </dl>
                    </li>
					<li class="layui-nav-item" >
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe665;</i>
                            <em>信息管理</em>
                        </a>
                        <dl class="layui-nav-child">
                           <dd><a href="${ctx}/getRealAll">真实客照</a></dd>
                           <dd><a href="${ctx}/craftsmanList">婚礼匠人</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon">&#xe653;</i>
                            <em>订单管理</em>
                        </a>
                        <dl class="layui-nav-child">
                            <dd><a href="${ctx}/getBillList">订单信息</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <div class="layui-body">
             <div class="layui-tab app-container" lay-allowClose="true" lay-filter="tabs">
                <ul id="appTabs" class="layui-tab-title custom-tab" style="display: none;"></ul>
                <div id="appTabPage" class="layui-tab-content"></div>
            </div>
        </div>
        <div class="mobile-mask"></div>
    </div>
    <script src="${ctx}/static/assets/layui.js" type="text/javascript"></script>
    <script src="${ctx}/server/index.js" data-main="home" type="text/javascript"></script>
</body>
</html>