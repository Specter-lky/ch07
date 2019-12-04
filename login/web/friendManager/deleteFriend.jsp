<%-- 
    Document   : deleteFriend
    Created on : 2012-3-21, 19:22:36
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->删除通讯录</title>
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
                            <div class="bg"><a href="http://localhost:8080/login/friendManager/addFriend.jsp">增加联系人</a></div>
                        </td>
                        <td width="20%">
                            <div class="bg"><a href="http://localhost:8080/login/LookFriendServlet">查看通信录</a></div>
                        </td>
                        <td width="20%">
                            <div class="bg"><a href="http://localhost:8080/login/friendManager/updateFriend.jsp">修改联系人</a></div>
                        </td>
                        <td width="20%">
                            <div class="action"><a href="http://localhost:8080/login/friendManager/deleteFriend.jsp">删除联系人</a></div>
                        </td>
                    </tr>
                </table>
            </div>
            <br><br>
            <form action="http://localhost:8080/login/DeleteFriendServlet" method="post">
                <table border="2" cellspacing="0" cellpadding="0" width="40%" align="center">
                    <tr align="center">
                        <td align="center" height="130">
                            <p>请输入要删除人的姓名</p>
                            姓名<input type="text" name="name"><br>
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
