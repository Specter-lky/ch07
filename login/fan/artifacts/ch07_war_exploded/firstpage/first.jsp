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
            <li class="active"><a href="http://localhost:8080/login/firstpage/first.jsp">企业介绍</a></li>
            <li><a href="http://localhost:8080/login/firstpage/second.jsp">采购销售</a></li>
            <li><a href="http://localhost:8080/login/FileServlet">文件资源</a></li>
            <li><a href="http://localhost:8080/login/Staff/staff.jsp">员工管理</a></li>
            <li><a href="http://localhost:8080/login/department/BOS.jsp">部门管理</a></li>
        </ul>
        <div class="pull-right">
            <a href="http://localhost:8080/login/login.jsp" target="_top">退出</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- menu -->
<div id="fullpage">
    <!--section1-->

    <div class="section section-txt-img img-txt　animate" id="section1">
        <div class="xs_box">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561008502457&di=33e1bb25dbb77cc47c85aa42f63180a5&imgtype=0&src=http%3A%2F%2Fi0.wp.com%2Fctcgroup.cn%2Fwp-content%2Fuploads%2F2016%2F01%2F1-7.png%3Ffit%3D799%252C529" alt="" class="img animation_1" height="350" width="550" style="right: auto; left: 10.5%">
            <div class="xs_box">
                <div class="addBox" style="width:32%;left: -50px">
                    <br><br>
                    <div style="text-align:center;" >企业介绍</div>
                    <div>
                        本公司注册于2001年6月8日，专业从事有机硅硅橡胶系列、塑料、橡胶、油漆、涂料、陶瓷、清洗、洗涤、电镀等各化工行业基础原材料的供应与销售。<br>
                        公司自成立以来，以产品质量稳定，注重售后服务，发扬开拓闯新精神，力争产品质量赢得新老客户的信赖．本公司与国内外众多知名企业建立了长期合作关系。<br>
                        如美国（道康宁、陶氏），日本（信越、三井），马来（椰树），英国（壳牌），吉林（吉化），台湾（盘亚），德国（汉高），江西（星火），山东（俱进、大地），上海（志华），南京（志华二厂）。<br>
                        本公司力推产品。*GE东芝有机硅公司RTY有机硅橡胶系列产品*玻璃纤维专用硅微粉*对甲苯磺酸*过碳酸钠*涂料/橡胶/塑料等粉体原料*金属/橡塑胶表面处理抛光粉*有机化工溶剂*萤石块</div>
                    <input type="button" value="立即体验" class="btn" onClick="javascrtpt:window.location.href='http://localhost:8080/login/firstpage/second.jsp'">
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
