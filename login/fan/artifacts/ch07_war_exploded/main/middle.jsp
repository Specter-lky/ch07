

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="http://www.mike.gd.cn/index.php">
        <link href="http://www.mike.gd.cn/templets/default/css/style1.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="http://www.mike.gd.cn/templets/default/css/mky.css">
        <style type="text/css">
            a:hover{
                background-color:#0080FF;
                color: white;
            }
            a {
                text-decoration: none;
            }
        </style>
    </head>
    <body bgcolor="#CCCFFF">
        <%
            String userName=request.getParameter("userName");
        %>
        <div class="head">
            <div class="wrap">
                <h1 class="fl logo">
                    <a href="http://www.mike.gd.cn/">
                        <img src="http://www.mike.gd.cn/templets/default/images/logo.jpg" alt="米可网络" /></a>
                </h1>
                <div class="fr topr">
                    <div class="nav">
                        <ul>
                            <li>
                                <a href="http://localhost:8080/login/main/bottom.jsp" target="main">首页</a></li>
                            <li>
                                <a href="http://localhost:8080/login/LookMessageServlet?userName=<%=userName%>" target="main">个人信息管理</a></li>
                            <li>
                                <a href="http://localhost:8080/login/LookFriendServlet" target="main">通讯录管理</a></li>
                            <li>
                                <a href="http://localhost:8080/login/LookDateServlet" target="main">日程安排管理</a></li>
                            <li>
                                <a href="http://localhost:8080/login/fileManager/fileUp.jsp" target="main">个人文件管理</a></li>
                            <li>
                                <a href="https://cas.dgut.edu.cn/logout?callback=http://localhost:8080/login/hello" target="_top">退出主页面</a></li>
                            <li>
                                <a href="#" target="_top">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
  </body>
</html>
