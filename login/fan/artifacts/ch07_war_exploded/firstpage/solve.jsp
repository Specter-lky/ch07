<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/7
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- 响应式等比缩放 -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <TITLE>正大企业管理员页面</TITLE>
    <META name="keywords" content="协同办公，高端协同办公，智慧云办公，协同云平台，业务流程管理，流程管理中心，文会事，文事会，任务督办，任务管理，安全可控办公系统，集成型办公，Javaoa，Java协同办公，移动办公，手机办公app，PC移动办公一体化，领导日程，会议管理，办公效能统计" />
    <META name="description" content="协同办公，高端协同办公，智慧云办公，协同云平台，业务流程管理，流程管理中心，文会事，文事会，任务督办，任务管理，安全可控办公系统，集成型办公，Javaoa，Java协同办公，移动办公，手机办公app，PC移动办公一体化，领导日程，会议管理，办公效能统计" />
    <meta property="og:title" content="协同办公，高端协同办公，智慧云办公，协同云平台，业务流程管理，流程管理中心，文会事，文事会，任务督办，任务管理，安全可控办公系统，集成型办公，Javaoa，Java协同办公，移动办公，手机办公app，PC移动办公一体化，领导日程，会议管理，办公效能统计" />
    <meta property="og:type" content="article " />
    <meta property="og:url" content="http://www.smartdot.com/las/index.html" />
    <meta property="og:image" content=" http://www.smartdot.com/las/images/logo.png" />
    <meta property="og:site_name" content="集团协同办公管理软件" />
    <meta property="og:description" content="协同办公，高端协同办公，智慧云办公，协同云平台，业务流程管理，流程管理中心，文会事，文事会，任务督办，任务管理，安全可控办公系统，集成型办公，Javaoa，Java协同办公，移动办公，手机办公app，PC移动办公一体化，领导日程，会议管理，办公效能统计" />
    <link rel="stylesheet" href="http://www.smartdot.com/grcoffice/css/jquery.fullPage.css">
    <link rel="stylesheet" href="http://www.smartdot.com/grcoffice/css/index-l.css">
    <link rel="stylesheet" type="text/css" href="http://www.smartdot.com/grcoffice/css/public.css">
    <link rel="stylesheet" type="text/css" href="http://www.smartdot.com/grcoffice/css/extend.css">
</head>

<body>
<!-- head -->
<div class="header">
    <div class="h-wrapper">
        <div class="logo">
            <a href="http://localhost:8080/login/firstpage/first.jsp">
                <img src="http://www.smartdot.com/grcoffice/images/logo.png" alt="logo">
            </a>
        </div>
        <ul class="menu">
            <li><a href="http://localhost:8080/login/firstpage/first.jsp">企业介绍</a></li>
            <li><a href="http://localhost:8080/login/firstpage/second.jsp">采购销售</a></li>
            <li><a href="http://localhost:8080/login/firstpage/third.jsp">企业文化</a></li>
            <li class="active"><a href="http://localhost:8080/login/firstpage/question.jsp">解决方案</a></li>
            <li><a href="http://localhost:8080/login/firstpage/customs.jsp">典型客户</a></li>
        </ul>
        <div class="pull-right">
            <a href="http://localhost:8080/login/login.jsp" target="_top">退出</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<ul class="tab">
    <li><a href="http://localhost:8080/login/firstpage/question.jsp">痛点分析</a></li>
    <li class="active"><a href="http://localhost:8080/login/firstpage/solve.jsp">解决问题</a></li>
</ul>
<!-- menu -->
<div id="fullpage">
    <!--section1-->

    <div class="section section-txt-img img-txt　animate" id="section1">
        <div class="xs_box">
            <br><br><br>
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561008543446&di=e0af14e6b2a926072636f4d234807cf3&imgtype=0&src=http%3A%2F%2Fp5.qhimg.com%2Ft01448d2522e9ee90e8.jpg" alt="" class="img animation_1"  height="350" width="550" style="right: auto; left: 10.5%">
            <div class="xs_box">
                <div class="addBox" style="width:32%;left: -50px">
                    <div style="text-align:center;" ><br><br><br>解决方案</div>
                    <div>
                        管理系统服务于企业重要会议（董事会、高管办公会、党委会、专题会等）无纸化会议管理及会议决议督办管理，
                        同时系统适用于重点工作、领导交办、工作计划、项目工作、任务、公文及其它事项的分解下达、协作、督办跟踪等督办业务管理。
                    </div>
                    <input type="button" value="立即体验" class="btn" onClick="javascrtpt:window.location.href='http://localhost:8080/login/firstpage/second.jsp'">
                </div>
            </div>
        </div>
    </div>

</div>


</body>
</html>
