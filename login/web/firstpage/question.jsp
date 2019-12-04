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
<!-- menu -->
<ul class="tab">
    <li class="active"><a href="http://localhost:8080/login/firstpage/question.jsp">痛点分析</a></li>
    <li><a href="http://localhost:8080/login/firstpage/solve.jsp">解决问题</a></li>
</ul>

<div id="fullpage">
    <!--section1-->
    <div class="section section-txt-img  animate" id="section1">
        <div class="wrapper charact">
            <ul>
                <li class="animation_1">
                    <img src="http://www.smartdot.com/grcoffice/images/icon_26.png" alt="">
                    <p> 领导只能通过询问的方式了解事项进展，不客观、不及时、不全面。</p>
                </li>
                <li class="animation_2">
                    <img src="http://www.smartdot.com/grcoffice/images/icon_25.png" alt="">
                    <p>传统方式进行重大事项的分解下达、执行跟踪，繁琐耗时。</p>
                </li>
                <li class="animation_3">
                    <img src="http://www.smartdot.com/grcoffice/images/icon_24.png" alt="">
                    <p>会议决策者难以实时了解议题更新和材料补充，影响决策效率。</p>
                </li>
                <li class="animation_4">
                    <img src="http://www.smartdot.com/grcoffice/images/icon_23.png" alt="">
                    <p>大家对督办的意识和紧迫度不够，缺少提升办法。</p>
                </li>
                <li class="animation_5">
                    <img src="http://www.smartdot.com/grcoffice/images/icon_22.png" alt="">
                    <p>督办落实跟踪较为困难，反馈不及时，考核无依据。</p>
                </li>
                <li class="animation_6">
                    <img src="http://www.smartdot.com/grcoffice/images/icon_26.png" alt="">
                    <p>会议决策事项执行进展难以快速、体系化跟踪。</p>
                </li>
            </ul>
        </div>
    </div>

</div>


</body>
</html>
