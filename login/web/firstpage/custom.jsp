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
            <li><a href="http://localhost:8080/login/firstpage/question.jsp">解决方案</a></li>
            <li class="active"><a href="http://localhost:8080/login/firstpage/customs.jsp">典型客户</a></li>
        </ul>
        <div class="pull-right">
            <a href="http://localhost:8080/login/login.jsp" target="_top">退出</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- menu -->
<ul class="tab">
    <li><a href="http://localhost:8080/login/firstpage/customs.jsp">零售店铺</a></li>
    <li class="active"><a href="http://localhost:8080/login/firstpage/custom.jsp">客户企业</a></li>
</ul>
<div id="fullpage">
    <!--section1-->
    <div class="section section-txt-img img-txt　animate" id="section1">
        <div class="xs_box">
            <br><br><br>
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561008653833&di=fc175b7675cd953084f61ddf365dd609&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F18%2F14%2F44%2F93458PICyq7_1024.jpg" alt="" class="img animation_1"  height="350" width="550" style="right: auto; left: 10.5%">
            <div class="xs_box">
                <div class="addBox" style="width:32%;left: -50px">
                    <div style="text-align:center;" ><br><br><br>企业档案</div>
                    <div>
                        1993年创建于重庆，发展于全国，业务涵盖地产开发、商业运营、长租公寓、智慧服务四大主航道业务，并积极试水养老、产城等创新领域。<br>
                        2009年，龙湖集团控股有限公司（股份代码：960）于香港联交所主板上市。<br>
                        2018年集团营业额逾1100亿元，获评境内外全投资级。<br>
                        截至目前，集团拥有雇员27,000余人，业务遍布全国7大城市群，40余个城市。集团连续5年获得“中国房地产开发企业综合实力10强”、3次入选“福布斯亚太区最佳上市公司50强”，荣登“福布斯全球企业500强”，“财富中国500强”。</div>
                    <input type="button" value="立即体验" class="btn" onClick="javascrtpt:window.location.href='http://localhost:8080/login/firstpage/second.jsp'">
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>
