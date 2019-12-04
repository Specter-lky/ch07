<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/7
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@page import="lookMessage.LookMessageBean"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="loginRegister.LoginBean" %>
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
    <style type="text/css">
        .bg{
            width:100px;
            height: 50px;
            background-color: #FFFFFF;
            display: table-cell;
            vertical-align: middle;
            text-align:center;
        }
        .bg a:hover{
            width:100px;
            height: 50px;
            display: table-cell;
            vertical-align: middle;
            text-align:center;
            background-color:#0080FF;
            color: white;
        }
        .action{
            width:100px;
            height: 50px;
            display: table-cell;
            vertical-align: middle;
            text-align:center;
            background-color:#0080FF;
        }
        a {
            text-align:center;
            text-decoration: none;
        }
    </style>
</head>

<body>
<!-- head -->
<div class="header">
    <div class="h-wrapper">
        <div class="logo">
            <a href="http://localhost:8084/PIMS/firstpage/first.jsp">
                <img src="http://www.smartdot.com/grcoffice/images/logo.png" alt="logo">
            </a>
        </div>
        <ul class="menu">
            <li><a href="http://localhost:8080/login/firstpage/first.jsp">企业文化</a></li>
            <li><a href="http://localhost:8080/login/firstpage/second.jsp">采购销售</a></li>
            <li><a href="http://localhost:8080/login/FileServlet">文件资源</a></li>
            <li class="active"><a href="http://localhost:8080/login/Staff/staff.jsp">员工管理</a></li>
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
    <br><br>
    <br><br><br>
            <div align="center">
            <div align="center">
                <table width="900" border="0">
                    <tr>
                        <td width="25%">
                            <div class="bg"><a href="http://localhost:8080/login/Staff/staff.jsp">查看员工信息</a></div>
                        </td>
                        <td width="25%">
                            <div class="bg"><a href="http://localhost:8080/login/Staff/CheckStaff.jsp">查询员工信息</a></div>
                        </td>
                        <td width="25%">
                            <div class="bg"><a href="http://localhost:8080/login/Staff/EditMessage.jsp">修改员工信息</a></div>
                        </td>
                        <td width="25%">
                            <div class="action"><a href="http://localhost:8080/login/Staff/AddStaff.jsp">添加员工信息</a></div>
                        </td>
                    </tr>
                </table>
            </div>
                <br><br>
                <table align="center">
                    <tr>
                        <td colspan="3" align="center">
                            <h3><font color="red">请填写以下注册信息</font></h3>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <form action="http://localhost:8080/login/AddStaffServlet" method="post">
                                <input type="hidden" name="place" value="未绑定"/>
                                <table border="0" cellspacing="0" cellpadding="0" bgcolor="white">
                                    <tr>
                                        <td>
                                            登录名
                                        </td>
                                        <td>
                                            <input type="text" name="userName" size="20"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            密码
                                        </td>
                                        <td>
                                            <input type="password" name="password1" size="22"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            重复密码
                                        </td>
                                        <td>
                                            <input type="password" name="password2" size="22"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            姓名
                                        </td>
                                        <td>
                                            <input type="text" name="name" size="20"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            性别
                                        </td>
                                        <td>
                                            <input type="radio" name="sex" value="男" checked>男
                                            <input type="radio" name="sex" value="女">女
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            出生日期
                                        </td>
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
                                        <td>
                                            民族
                                        </td>
                                        <td>
                                            <input type="radio" name="nation" value="汉族" checked>汉族
                                            <input type="radio" name="nation" value="回族">回族
                                            <input type="radio" name="nation" value="壮族">壮族
                                            <input type="radio" name="nation" value="其它">其它
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            学历
                                        </td>
                                        <td>
                                            <select name="edu" size="1">
                                                <option value="博士">博士</option>
                                                <option value="硕士">硕士</option>
                                                <option value="本科">本科</option>
                                                <option value="专科">专科</option>
                                                <option value="高中">高中</option>
                                                <option value="初中">初中</option>
                                                <option value="小学">小学</option>
                                                <option value="其它">其它</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            部门
                                        </td>
                                        <td>
                                            <select name="work" size="1">
                                                <option value="销售部门">销售部门</option>
                                                <option value="股东会">股东会</option>
                                                <option value="技术部门">技术部门</option>
                                                <option value="运输部门">运输部门</option>
                                                <option value="采购部门">采购部门</option>
                                                <option value="策划部门">策划部门</option>
                                                <option value="财务部门">财务部门</option>
                                                <option value="人事部门">人事部门</option>
                                                <option value="其它部门">其它部门</option>
                                                <option value="无">无</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            电话
                                        </td>
                                        <td>
                                            <input type="text" name="phone" size="20" onkeyup="this.value=this.value.replace(/\D/g, '')" oninput="if(value.length>11)value=value.slice(0,11)"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            邮箱地址
                                        </td>
                                        <td>
                                            <input type="text" name="email" size="20" required pattern="^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$" title="请输入正确的邮箱格式"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                            <input type="submit" value="确 定" size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="reset" value="清 除" size="12">
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </td>
                    </tr>
                </table>
            </div>
            <!--<img src="http://www.smartdot.com/grcoffice/images/index_0.jpg" alt="" class="img animation_1" style="right: auto; left: 10.5%">
           -->
           <!-- <div class="xs_box">
                <div class="addBox" style="width:32%;left: -50px">

                    <input type="button" value="立即体验" class="btn" onClick="javascrtpt:window.location.href='http://localhost:8084/PIMS/firstpage/second.jsp'">
                </div>
            </div>-->
</div>


</body>
</html>
<script>
    // JavaScript Document By lishewen
    var theTable = document.getElementById("tablelsw");
    var totalPage = document.getElementById("spanTotalPage");
    var pageNum = document.getElementById("spanPageNum");

    var spanPre = document.getElementById("spanPre");
    var spanNext = document.getElementById("spanNext");
    var spanFirst = document.getElementById("spanFirst");
    var spanLast = document.getElementById("spanLast");

    var totalPaget = document.getElementById("spanTotalPaget");
    var pageNumt = document.getElementById("spanPageNumt");

    var spanPret = document.getElementById("spanPret");
    var spanNextt = document.getElementById("spanNextt");
    var spanFirstt = document.getElementById("spanFirstt");
    var spanLastt = document.getElementById("spanLastt");

    var numberRowsInTable = theTable.rows.length;
    var pageSize = 4;
    var page = 1;

    //下一页
    function next(){

        hideTable();

        currentRow = pageSize * page;
        maxRow = currentRow + pageSize;
        if ( maxRow > numberRowsInTable ) maxRow = numberRowsInTable;
        for ( var i = currentRow; i< maxRow; i++ ){
            theTable.rows[i].style.display = '';
        }
        page++;

        if ( maxRow == numberRowsInTable ) { nextText(); lastText(); }
        showPage();
        preLink();
        firstLink();
    }

    //上一页
    function pre(){

        hideTable();

        page--;

        currentRow = pageSize * page;
        maxRow = currentRow - pageSize;
        if ( currentRow > numberRowsInTable ) currentRow = numberRowsInTable;
        for ( var i = maxRow; i< currentRow; i++ ){
            theTable.rows[i].style.display = '';
        }


        if ( maxRow == 0 ){ preText(); firstText(); }
        showPage();
        nextLink();
        lastLink();
    }

    //第一页
    function first(){
        hideTable();
        page = 1;
        for ( var i = 0; i<pageSize; i++ ){
            theTable.rows[i].style.display = '';
        }
        showPage();

        preText();
        nextLink();
        lastLink();
    }

    //最后一页
    function last(){
        hideTable();
        page = pageCount();
        currentRow = pageSize * (page - 1);
        for ( var i = currentRow; i<numberRowsInTable; i++ ){
            theTable.rows[i].style.display = '';
        }
        showPage();

        preLink();
        nextText();
        firstLink();
    }

    function hideTable(){
        for ( var i = 0; i<numberRowsInTable; i++ ){
            theTable.rows[i].style.display = 'none';
        }
    }

    function showPage(){
        pageNum.innerHTML = page;
        pageNumt.innerHTML = page;
    }

    //总共页数
    function pageCount(){
        var count = 0;
        if ( numberRowsInTable%pageSize != 0 ) count = 1;
        return parseInt(numberRowsInTable/pageSize) + count;
    }

    //显示链接
    function preLink(){ spanPre.innerHTML = "<a href='javascript:pre();'>上一页</a>"; spanPret.innerHTML = "<a href='javascript:pre();'>上一页</a>";}
    function preText(){ spanPre.innerHTML = "上一页"; spanPret.innerHTML = "上一页"; }

    function nextLink(){ spanNext.innerHTML = "<a href='javascript:next();'>下一页</a>"; spanNextt.innerHTML = "<a href='javascript:next();'>下一页</a>";}
    function nextText(){ spanNext.innerHTML = "下一页"; spanNextt.innerHTML = "下一页";}

    function firstLink(){ spanFirst.innerHTML = "<a href='javascript:first();'>第一页</a>"; spanFirstt.innerHTML = "<a href='javascript:first();'>第一页</a>";}
    function firstText(){ spanFirst.innerHTML = "第一页"; spanFirstt.innerHTML = "第一页";}

    function lastLink(){ spanLast.innerHTML = "<a href='javascript:last();'>最后一页</a>"; spanLastt.innerHTML = "<a href='javascript:last();'>最后一页</a>";}
    function lastText(){ spanLast.innerHTML = "最后一页"; spanLastt.innerHTML = "最后一页";}

    //隐藏表格
    function hide(){
        for ( var i = pageSize; i<numberRowsInTable; i++ ){
            theTable.rows[i].style.display = 'none';
        }

        totalPage.innerHTML = pageCount();
        pageNum.innerHTML = '1';

        totalPaget.innerHTML = pageCount();
        pageNumt.innerHTML = '1';

        nextLink();
        lastLink();
    }

    hide();
</script>