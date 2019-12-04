<%-- 
    Document   : updateFriendMessage
    Created on : 2012-3-21, 1:33:34
    Author     : Administrator
--%>

<%@page import="friendManager.LookFriendBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>个人信息管理系统->修改通讯录</title>
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
                        <div class="action"><a href="http://localhost:8080/login/friendManager/updateFriend.jsp">修改联系人</a></div>
                    </td>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/friendManager/deleteFriend.jsp">删除联系人</a></div>
                    </td>
                </tr>
            </table>
        </div>
        <br><br>
        <form action="http://localhost:8080/login/UpdateFriendMessageServlet" method="post">
            <table border="2" cellspacing="0" cellpadding="0" bgcolor="FFFFFF" width="60%" align="center">
            <%
                ArrayList friendslist2=(ArrayList)session.getAttribute("friendslist2");
                if(friendslist2==null||friendslist2.size()==0){
                    response.sendRedirect("http://localhost:8080/login/friendManager/lookFriend.jsp");
                }else{
                    for(int i=friendslist2.size()-1;i>=0;i--){
                        LookFriendBean ff=(LookFriendBean)friendslist2.get(i);
            %>
                <tr>
                    <td height="30">用户姓名</td>
                    <td><%=ff.getName()%></td>
                </tr>
                <tr>
                    <td height="30">用户电话</td>
                    <td><input type="text" name="phone" value="<%=ff.getPhone()%>" onkeyup="this.value=this.value.replace(/\D/g, '')" oninput="if(value.length>11)value=value.slice(0,11)"></td>
                </tr>
                <tr>
                    <td height="30">邮箱地址</td>
                    <td><input type="text" name="email" value="<%=ff.getEmail()%>" required pattern="^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$" title="请输入正确的邮箱格式"></td>
                </tr>
                <tr>
                    <td height="30">工作单位</td>
                    <td><input type="text" name="workPlace" value="<%=ff.getWorkPlace()%>"></td>
                </tr>
                <tr>
                    <td height="30">家庭住址</td>
                    <td><input type="text" name="place" value="<%=ff.getPlace()%>"></td>
                </tr>
                <tr>
                    <td height="30">用户QQ</td>
                    <td><input type="number" name="QQ" value="<%=ff.getQQ()%>"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="确 定" size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 除" size="12">
                    </td>
                 </tr>
            <%
                }
               }
            %>
            </table>
        </form>
    </body>
</html>
