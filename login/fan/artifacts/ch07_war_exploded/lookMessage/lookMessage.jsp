<%-- 
    Document   : lookMessage
    Created on : 2012-3-20, 23:13:38
    Author     : Administrator
--%>

<%@page import="lookMessage.LookMessageBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统--查看个人信息</title>
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
                            <div class="action"><a href="http://localhost:8080/login/lookMessage/lookMessage.jsp">查看个人信息</a></div>
                        </td>
                        <td width="25%">
                            <div class="bg"><a href="http://localhost:8080/login/lookMessage/updatePassword.jsp">修改密码</a></div>
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
            <table border="2" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" width="60%" align="center">
            <%
                ArrayList wordlist=(ArrayList)session.getAttribute("wordlist");
                if(wordlist==null||wordlist.size()==0){
                    response.sendRedirect("http://localhost:8080/login/main/bottom.jsp");
                }else{
                    for(int i=wordlist.size()-1;i>=0;i--){
                        LookMessageBean mm=(LookMessageBean)wordlist.get(i);
             %>
                <tr>
                    <td height="30">用户姓名</td>
                    <td><%=mm.getName()%></td>
                </tr>
                <tr>
                    <td height="30">用户性别</td>
                    <td><%=mm.getSex()%></td>
                </tr>
                <tr>
                     <td height="30">出生日期</td>
                     <td><%=mm.getBirth()%></td>
                </tr>
                <tr>
                     <td height="30">用户民族</td>
                     <td><%=mm.getNation()%></td>
                </tr>
                <tr>
                     <td height="30">用户学历</td>
                     <td><%=mm.getEdu()%></td>
                </tr>
                <tr>
                     <td height="30">用户部门</td>
                     <td><%=mm.getWork()%></td>
                </tr>
                <tr>
                     <td height="30">用户电话</td>
                     <td><%=mm.getPhone()%></td>
                </tr>
                <tr>
                     <td height="30">莞工账号</td>
                     <td><%=mm.getPlace()%></td>
                </tr>
                <tr>
                     <td height="30">邮箱地址</td>
                     <td><%=mm.getEmail()%></td>
                </tr>
               <%
                    }
                }
            %>
        </table>
    </body>
</html>
