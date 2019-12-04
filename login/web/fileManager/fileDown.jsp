<%-- 
    Document   : fileDown
    Created on : 2012-3-21, 22:28:20
    Author     : Administrator
--%>
<%@page import="fileManager.LookDownBean"%>
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
                        <div class="action"><a href="http://localhost:8080/login/LookDownServlet">下载文件</a></div>
                    </td>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/fileManager/fileDel.jsp">删除文件</a></div>
                    </td>
                </tr>
            </table>
        </div>
        <br><br>
        <table border="2" cellspacing="0"cellpadding="0" width="60%"align="center">
            <tr>
                <th>文件名字</th>
                <th>文件大小</th>
                <th>备注</th>
                <th>操作</th>
            </tr>
            <%
                ArrayList fileslist=(ArrayList)session.getAttribute("files");
                if(fileslist==null||fileslist.size()==0){
            %>
            <div align="center">
                <h1>您还没有任何可以下载的文件！</h1>
            </div>
            <%
            }else{
                for(int i=fileslist.size()-1;i>=0;i--){
                    LookDownBean ff=(LookDownBean)fileslist.get(i);
            %>
            <tr>
                <td><%=ff.getName()%></td>
                <td><%=ff.getSize()%></td>
                <td><%=ff.getMark()%></td>
                <td><a href="http://localhost:8080/login/FileDownServlet?name=<%=ff.getName()%>">直接下载</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
