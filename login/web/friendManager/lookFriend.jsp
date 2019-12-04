<%-- 
    Document   : lookFriend
    Created on : 2012-3-21, 0:49:41
    Author     : Administrator
--%>

<%@page import="friendManager.LookFriendBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>个人信息管理系统--查看通讯录</title>
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
            <table border="0" cellspacing="0"cellpadding="0" width="100%" align="center">
                <tr>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/friendManager/addFriend.jsp">增加联系人</a></div>
                    </td>
                    <td width="20%">
                        <div class="action"><a href="http://localhost:8080/login/LookFriendServlet">查看通信录</a></div>
                    </td>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/friendManager/updateFriend.jsp">修改联系人</a></div>
                    </td>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/friendManager/deleteFriend.jsp">删除联系人</a></div>
                    </td>
                </tr>
            </table>
        </div>
        <br><br>
        <table border="2" cellspacing="0"cellpadding="0" width="60%"align="center">
            <%
                ArrayList friendslist=(ArrayList)session.getAttribute("friendslist");
                if(friendslist==null||friendslist.size()==0){
            %>
            <div align="center">
               <h1>您还没有任何联系人！</h1>
            </div>
            <%
                }else{
                    %>
            <tr>
                <th height="30">朋友姓名</th>
                <th height="30">朋友电话</th>
                <th height="30">邮箱地址</th>
                <th height="30">工作单位</th>
                <th height="30">家庭地址</th>
                <th height="30">用户QQ</th>

            </tr>
            <%
                    for(int i=friendslist.size()-1;i>=0;i--){
                        LookFriendBean ff=(LookFriendBean)friendslist.get(i);
            %>
            <tr>
                <td><%=ff.getName()%></td>
                <td><%=ff.getPhone()%></td>
                <td><%=ff.getEmail()%></td>
                <td><%=ff.getWorkPlace()%></td>
                <td><%=ff.getPlace()%></td>
                <td><%=ff.getQQ()%></td>
            </tr>
            <%
                  }
                }
            %>
        </table>
    </body>
</html>

