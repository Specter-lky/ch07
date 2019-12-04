<%-- 
    Document   : updatePassword
    Created on : 2012-3-20, 23:58:33
    Author     : Administrator
--%>

<%@page import="loginRegister.LoginBean"%>
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
    <%
        String cz=(String)request.getSession().getAttribute("cz");
        String userName=(String)request.getSession().getAttribute("user");
    %>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
                <tr>
                    <td width="25%">
                        <div class="bg"><a href="http://localhost:8080/login/lookMessage/updateMessage.jsp">修改个人信息</a></div>
                    </td>
                    <td width="25%">
                        <div class="bg"><a href="http://localhost:8080/login/lookMessage/lookMessage.jsp">查看个人信息</a></div>
                    </td>
                    <td width="25%">
                        <div class="action"><a href="http://localhost:8080/login/lookMessage/updatePassword.jsp">修改密码</a></div>
                    </td>
                    <td width="25%">
                        <%
                            if(cz.equals("解除绑定")){
                        %>
                        <div class="bg"><a href="http://localhost:8080/login/UnboundServlet?userName=<%=userName%>"><%=cz%></a></div>
                        <%
                        }
                        else{
                        %>
                        <div class="bg"><a href="https://cas.dgut.edu.cn?appid=javaee"><%=cz%></a></div>
                        <%
                            }
                        %>
                    </td>
                </tr>
            </table>
        </div>
        <br><br>
        <form action="http://localhost:8080/login/UpdatePasswordServlet" method="post">
            <table border="2" cellspacing="0" cellpadding="0" bgcolor="FFFFFF" width="60%" align="center">
            <%
                ArrayList login=(ArrayList)session.getAttribute("login");
                if(login==null||login.size()==0){
                    response.sendRedirect("http://localhost:8080/login/main/bottom.jsp");
                }else{
                    for(int i=login.size()-1;i>=0;i--){
                        LoginBean nn=(LoginBean)login.get(i);
            %>
                <tr>
                    <td height="30">原本密码</td>
                    <td><input type="password" name="pass" value=""></td>
                </tr>
                <tr>
                    <td height="30">修改密码</td>
                    <td><input type="password" name="password1" value=""></td>
                </tr>
                <tr>
                    <td height="30">重复密码</td>
                    <td><input type="password" name="password2" value=""></td>
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
