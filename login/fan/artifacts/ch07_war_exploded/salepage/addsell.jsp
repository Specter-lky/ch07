<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/7
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@page import="sale.SaleBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
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
            <li class="active"><a href="http://localhost:8080/login/firstpage/second.jsp">采购销售</a></li>
            <li><a href="http://localhost:8080/login/firstpage/third.jsp">企业文化</a></li>
            <li><a href="http://localhost:8080/login/firstpage/question.jsp">解决方案</a></li>
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
    <li><a href="http://localhost:8080/login/LookPurchaseServlet">采购</a></li>
    <li class="active"><a href="http://localhost:8080/login/LookSaleServlet">销售</a></li>
</ul>
<div id="fullpage">
    <br><br><br><br>
    <!--section1-->
    <div class="section section-txt-img  animate" id="section1">
    <div class="wrapper charact">
        <table align="center">
            <tr>
                <td colspan="3" align="center">
                    <h3><font color="red">请填写以下信息</font></h3>
                </td>
            </tr>
            <tr>
                <td >
                    <form action="http://localhost:8080/login/AddSaleServlet" method="get">
                        <table border="0" cellspacing="0" cellpadding="0" bgcolor="white">
                            <tr>
                                <td> 员工名称：</td>
                                <td> <input type="text" name="sell_sname" value="" size="20"></td>
                            </tr>
                            <tr>
                                <td> 销售数量：</td>
                                <td> <input type="text" name="sell_amount" value="" size="20" onkeyup="this.value=this.value.replace(/\D/g, '')"></td>
                            </tr>
                            <tr>
                                <td> 产品名称：</td>
                                <td> <input type="text" name="sell_produce" value="" size="20"></td>
                            </tr>
                            <tr>
                                <td>销售日期：</td>
                                <td>
                                    <select name="year" size="1">
                                        <option value="1978">1978</option>
                                        <option value="1979">1979</option>
                                        <option value="1980">1980</option>
                                        <option value="1981">1981</option>
                                        <option value="1982">1982</option>
                                        <option value="1983">1983</option>
                                        <option value="1984">1984</option>
                                        <option value="1985">1985</option>
                                        <option value="1986">1986</option>
                                        <option value="1987">1987</option>
                                        <option value="1988">1988</option>
                                        <option value="1989">1989</option>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                    </select>年
                                    <select name="mouth" size="1">
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>月
                                    <select name="day" size="1">
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>日
                                </td>
                            </tr>
                            <tr>
                                <td>利润：</td>
                                <td> <input type="text" name="sell_profit" value="" onkeyup="this.value=this.value.replace(/\D/g, '')" size="24"></td>
                            </tr>
                            <tr>
                                <td>备注：</td>
                                <td> <textarea size="24" name="sell_mark" value=""></textarea></td>
                            </tr>
                            <div class="xs_box">
                                <div class="addBox" style="width:32%;left: -50px">
                                    <input type="submit" class="btn" size="1" name="submit" value="提交">
                                </div>
                            </div>
                        </table>
                    </form>
                </td>
            </tr>
        </table>
        <!--<div class="xs_box">
            <div class="addBox" style="width:32%;left: -50px">

                <input type="button" value="添加采购信息" class="btn" onClick="javascrtpt:window.location.href='http://localhost:8080/test/second.jsp'">
            </div>
        </div>-->
    </div>
</div>
</div>
</body>
</html>

<script src="js/jquery.fullPage.js"></script>
<script>
    $(document).ready(function() {

        $('#fullpage').fullpage({
            menu: '#menu',
            verticalCentered: true,
            anchors: ['page1'],
            afterRender: function() {
                $('.fp-prev').addClass('active')
            },
            afterSlideLoad: function(anchorLink, index, slideAnchor, slideIndex) {
                $('.fp-controlArrow').removeClass('active').eq(slideIndex).addClass('active');
                setTimeout(function() {
                    $.fn.fullpage.moveSlideRight();
                }, 2000);
            }

        });
    });
</script>


