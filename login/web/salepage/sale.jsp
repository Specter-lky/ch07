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
    <style type="text/css">
        .bg{
            height: 50px;
            text-align:center;
        }
        .bg a:hover{
            background-color:#0080FF;
            color: white;
        }
        .bg{
            height: 50px;
            text-align:center;
        }
    </style>
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
    <!--section1-->
    <br><br>
    <br><br><br><br><br><br>
    <div align="center">
        <div align="center">
            <table width="900" border="0" >
                <tr>
                    <td width="16%" class="bg">
                        <a href="http://localhost:8080/login/SignalSaleServlet?proname=塑料">塑料</a>
                    </td>
                    <td width="16%" class="bg">
                        <a href="http://localhost:8080/login/SignalSaleServlet?proname=橡胶">橡胶</a>
                    </td>
                    <td width="16%" class="bg">
                        <a href="http://localhost:8080/login/SignalSaleServlet?proname=油漆">油漆</a>
                    </td>
                    <td width="16%" class="bg">
                        <a href="http://localhost:8080/login/SignalSaleServlet?proname=涂料">涂料</a>
                    </td>
                    <td width="16%" class="bg">
                        <a href="http://localhost:8080/login/SignalSaleServlet?proname=陶瓷">陶瓷</a>
                    </td>
                    <td width="16%" class="bg">
                        <a href="http://localhost:8080/login/SignalSaleServlet?proname=其他">其他</a>
                    </td>
                </tr>
            </table>
        </div>
        <br><br><br><br>
        <div style="width：0px;height:0px;overflow:hidden;">
            <span id="spanFirstt">第一页</span>
            <span id="spanPret">上一页</span>
            <span id="spanNextt">下一页</span>
            <span id="spanLastt">最后一页</span> 第<span id="spanPageNumt"></span>页/共<span id="spanTotalPaget"></span>页
        </div>
    <div align="center">
        <table width="900" border="1" bgcolor="#95BDFF">
            <tr>
                <th>销售单号</th>
                <th>销售数量</th>
                <th>产品名称</th>
                <th>销售日期</th>
                <th>利润</th>
                <th>备注</th>
                <th>操作</th>
                <th>操作</th>
            </tr>
            <tbody id="tablelsw">
            <%
                request.setCharacterEncoding("UTF-8");
                response.setContentType("text/html;charset=UTF-8");
                ArrayList datelists=(ArrayList)session.getAttribute("datelists");
                if(datelists==null||datelists.size()==0){
            %>
            <div align="center">
            </div>
            <%
            }else{
                for(int i=datelists.size()-1;i>=0;i--){
                    SaleBean dd=(SaleBean)datelists.get(i);
            %>
            <tr>
                <td><%=dd.getSell_id()%></td>
                <td><%=dd.getSell_amount()%></td>
                <td><%=dd.getSell_produce()%></td>
                <td><%=dd.getSell_date()%></td>
                <td><%=dd.getSell_profit()%></td>
                <td><%=dd.getSell_mark()%></td>
                <td><a href="http://localhost:8080/login/DelSaleServlet?sell_id=<%=dd.getSell_id()%>">删除</a></td>
                <td><a href="http://localhost:8080/login/salepage/updatesell.jsp?i=<%=i%>">修改</a></td>
            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>
        <div align="center">
            <span id="spanFirst">第一页</span>
            <span id="spanPre">上一页</span>
            <span id="spanNext">下一页</span>
            <span id="spanLast">最后一页</span> 第<span id="spanPageNum"></span>页/共<span id="spanTotalPage"></span>页
        </div>
    <div class="section section-txt-img img-txt　animate" id="section1">
        <div class="xs_box">
            <div class="addBox" style="width:32%;left:150px">
                <input type="button" value="添加销售信息" class="btn" onClick="javascrtpt:window.location.href='http://localhost:8080/login/salepage/addsell.jsp'">
            </div>
        </div>
    </div>
    </div>
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


