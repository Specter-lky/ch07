<%-- 
    Document   : updateMessage
    Created on : 2012-3-20, 23:30:55
    Author     : Administrator
--%>

<%@page import="lookMessage.LookMessageBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->查看</title>
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
                    <td>
                        <div class="action"><a href="http://localhost:8080/login/lookMessage/updateMessage.jsp">修改个人信息</a></div>
                    </td>
                    <td>
                        <div class="bg"><a href="http://localhost:8080/login/lookMessage/lookMessage.jsp">查看个人信息</a></div>
                    </td>
                    <td>
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
        <form action="http://localhost:8080/login/UpdateMessageServlet" method="post">
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
                    <td>
                        <select name="edu" size="1">
                            <%if(mm.getEdu().equals("博士")){%>
                            <option value="博士" selected>博士</option>
                            <%}else{%>
                            <option value="博士">博士</option>
                            <%}%>
                            <%if(mm.getEdu().equals("硕士")){%>
                            <option value="硕士" selected>硕士</option>
                            <%}else{%>
                            <option value="硕士">硕士</option>
                            <%}%>
                            <%if(mm.getEdu().equals("本科")){%>
                            <option value="本科" selected>本科</option>
                            <%}else{%>
                            <option value="本科">本科</option>
                            <%}%>
                            <%if(mm.getEdu().equals("专科")){%>
                            <option value="专科" selected>专科</option>
                            <%}else{%>
                            <option value="专科">专科</option>
                            <%}%>
                            <%if(mm.getEdu().equals("高中")){%>
                            <option value="高中" selected>高中</option>
                            <%}else{%>
                            <option value="高中">高中</option>
                            <%}%>
                            <%if(mm.getEdu().equals("初中")){%>
                            <option value="初中" selected>初中</option>
                            <%}else{%>
                            <option value="初中">初中</option>
                            <%}%>
                            <%if(mm.getEdu().equals("初中")){%>
                            <option value="初中" selected>初中</option>
                            <%}else{%>
                            <option value="初中">初中</option>
                            <%}%>
                            <%if(mm.getEdu().equals("小学")){%>
                            <option value="小学" selected>小学</option>
                            <%}else{%>
                            <option value="小学">小学</option>
                            <%}%>
                            <%if(mm.getEdu().equals("其它")){%>
                            <option value="其它" selected>其它</option>
                            <%}else{%>
                            <option value="其它">其它</option>
                            <%}%>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="30">用户电话</td>
                    <td><input type="number" name="phone" value="<%=mm.getPhone()%>" oninput="if(value.length>11)value=value.slice(0,11)"></td>
                </tr>
                <tr>
                    <td height="30">莞工账号</td>
                    <td><%=mm.getPlace()%></td>
                </tr>
                <tr>
                    <td height="30">邮箱地址</td>
                    <td><input type="text" name="email" value="<%=mm.getEmail()%>" required pattern="^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$" title="请输入正确的邮箱格式"></td>
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

