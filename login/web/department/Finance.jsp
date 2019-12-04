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
            height: 50px;
            text-align:center;
        }
        .bg a:hover{
            background-color:#0080FF;
            color: white;
        }
        .action{
            height: 50px;
            text-align:center;
            background-color:#0080FF;
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
            <li><a href="http://localhost:8080/login/firstpage/second.jsp">采购销售</a></li>
            <li><a href="http://localhost:8080/login/FileServlet">文件资源</a></li>
            <li><a href="http://localhost:8080/login/Staff/staff.jsp">员工管理</a></li>
            <li class="active"><a href="http://localhost:8080/login/department/BOS.jsp">部门管理</a></li>
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
    <br><br><br><br><br><br>
    <div align="center">
        <div align="center">
            <table width="900" border="0">
            <div>
                <table width="900" border="0" style="right: auto; left: -50%">
                    <tr>
                        <td width="11%" class="bg">
                            <a href="http://localhost:8080/login/department/BOS.jsp">股东会</a>
                        </td>
                        <td width="11%" class="bg">
                            <a href="http://localhost:8080/login/department/Sales.jsp">销售部</a>
                        </td>
                        <td width="11%" class="bg">
                            <a href="http://localhost:8080/login/department/Purchasing.jsp">采购部</a>
                        </td>
                        <td width="11%"class="bg">
                            <a href="http://localhost:8080/login/department/HumanResources.jsp">人事部</a>
                        </td>
                        <td width="11%" class="action">
                            <a href="http://localhost:8080/login/department/Finance.jsp">财务部</a>
                        </td>
                        <td width="11%" class="bg">
                            <a href="http://localhost:8080/login/department/Planing.jsp">策划部</a>
                        </td>
                        <td width="11%" class="bg">
                            <a href="http://localhost:8080/login/department/Transportation.jsp">运输部</a>
                        </td>
                        <td width="11%" class="bg">
                            <a href="http://localhost:8080/login/department/Technical.jsp">技术部</a>
                        </td>
                        <td width="11%" class="bg">
                            <a href="http://localhost:8080/login/department/Others.jsp">其它</a>
                        </td>
                    </tr>
                </table>
            </div>
            <br><br>
                <div style="width:0px;height:0px;overflow:hidden;">
                    <span id="spanFirstt">第一页</span>
                    <span id="spanPret">上一页</span>
                    <span id="spanNextt">下一页</span>
                    <span id="spanLastt">最后一页</span> 第<span id="spanPageNumt"></span>页/共<span id="spanTotalPaget"></span>页
                </div>
                <table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF" width="80%" align="center">
                    <%
                        try{
                            Connection con=null;
                            Statement stmt=null;
                            ResultSet rs=null;
                            Class.forName("org.h2.Driver");
                            String url="jdbc:h2:~/fan;MODE=MYSQL;DB_CLOSE_DELAY=-1";
                            con=DriverManager.getConnection(url,"root","root");
                            stmt=con.createStatement();
                            String userName="";
                            ArrayList login=(ArrayList)session.getAttribute("login");
                            if(login==null||login.size()==0){
                                response.sendRedirect("http://localhost:8080/login/login.jsp");
                            }else{
                                for(int i=login.size()-1;i>=0;i--){
                                    LoginBean nn=(LoginBean)login.get(i);
                                    userName=nn.getUserName();
                                }
                            }
                            String sql="select * from user where work ='财务部门' and name='"+userName+"'";
                            rs=stmt.executeQuery(sql);
                            if(rs.next()){
                                LookMessageBean mm=new LookMessageBean();
                    %>
                    <tr>
                        <th height="30">登录名</th>
                        <th height="30">姓名</th>
                        <th height="30">性别</th>
                        <th height="30">出生日期</th>
                        <th height="30">民族</th>
                        <th height="30">学历</th>
                        <th height="30">电话</th>
                        <th height="30">莞工账号</th>
                        <th height="30">邮箱</th>
                        <th height="30">操作</th>
                    </tr>
                    <%
                        do{
                            mm.setUserName(rs.getString("sname"));
                            mm.setName(rs.getString("username"));
                            mm.setSex(rs.getString("sex"));
                            mm.setBirth(rs.getString("birth"));
                            mm.setNation(rs.getString("nation"));
                            mm.setEdu(rs.getString("edu"));
                            mm.setPhone(rs.getString("phone"));
                            mm.setPlace(rs.getString("place"));
                            mm.setEmail(rs.getString("email"));
                    %>
                    <tbody id="tablelsw">
                    <tr>
                        <td><%=mm.getUserName()%></td>
                        <td><%=mm.getName()%></td>
                        <td><%=mm.getSex()%></td>
                        <td><%=mm.getBirth()%></td>
                        <td><%=mm.getNation()%></td>
                        <td><%=mm.getEdu()%></td>
                        <td><%=mm.getPhone()%></td>
                        <td><%=mm.getPlace()%></td>
                        <td><%=mm.getEmail()%></td>
                        <td>
                            <a href="http://localhost:8080/login/RemoveServlet?userName=<%=mm.getUserName()%>">移出部门</a>
                        </td>
                    </tr>
                    <%
                        }while (rs.next());
                        %>
                    </tbody>
                </table>
                <div align="center">
                    <span id="spanFirst">第一页</span>
                    <span id="spanPre">上一页</span>
                    <span id="spanNext">下一页</span>
                    <span id="spanLast">最后一页</span> 第<span id="spanPageNum"></span>页/共<span id="spanTotalPage"></span>页
                </div>
                    <%
                    }
                    else{
                    %>
                    <div align="center">
                        <h1>该部门尚未添加员工！</h1>
                    </div>
                    <%
                            }
                            rs.close();
                            stmt.close();
                            con.close();
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                        HttpSession session1=request.getSession();
                        session1.setAttribute("bumen","财务部门");
                        session1.setAttribute("wz","Finance");
                    %>
                <div style="float: bottom;text-align:center;">
                    <form action="http://localhost:8080/login/AddServlet" style="margin-top:30px;">
                        添加员工：<input type="text" name="userName" placeholder="请输入已有员工登录名">
                        <input type="submit" value="添加">
                    </form>
                </div>
                <br>
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