<%-- 
    Document   : fileDown
    Created on : 2012-3-21, 22:28:20
    Author     : Administrator
--%>
<%@page import="fileManager.LookFileBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body bgcolor="FFFFFF">
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
                <tr>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/fileManager/fileUp.jsp">上传文件</a></div>
                    </td>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/LookFileServlet">文件列表</a></div>
                    </td>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/LookDownServlet">下载文件</a></div>
                    </td>
                    <td width="20%">
                        <div class="action"><a href="http://localhost:8080/login/fileManager/fileDel.jsp">删除文件</a></div>
                    </td>
                </tr>
            </table>
        </div>
        <br><br>
        <form action="http://localhost:8080/login/DeleteFileServlet" method="post">
            <table border="2" cellspacing="0" cellpadding="0" width="40%" align="center">
                <tr align="center">
                    <td align="center" height="130">
                        <p>请输入要删除的文件名</p>
                        文件名<input type="text" name="name"><br>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <input type="submit" value="确 定" size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 除" size="12">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
