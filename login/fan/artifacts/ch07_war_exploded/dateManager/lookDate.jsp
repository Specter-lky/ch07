
<%@page import="dateManager.LookDateBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->查看日程</title>
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
                  <div class="bg"><a href="http://localhost:8080/login/dateManager/addDate.jsp">增加日程</a></div>
              </td>
              <td width="20%">
                  <div class="action"><a href="http://localhost:8080/login/dateManager/lookDate.jsp">查看日程</a></div>
              </td>
              <td width="20%">
                  <div class="bg"><a href="http://localhost:8080/login/dateManager/updateDate.jsp">修改日程</a></div>
              </td>
              <td width="20%">
                  <div class="bg"><a href="http://localhost:8080/login/dateManager/deleteDate.jsp">删除日程</a></div>
              </td>
          </tr>
      </table>
      </div>
      <br><br>
      <form action="http://localhost:8080/login/AddDateServlet" method="post">
          <table border="5" cellspacing="0" cellpadding="0" width="60%" align="center">
              <tr>
                    <th width="40%">日程时间</th>
                    <th width="60%">日程内容</th>
              </tr>
              <%
                    ArrayList datelist=(ArrayList)session.getAttribute("datelist");
                    if(datelist==null||datelist.size()==0){
              %>
                <div align="center">
                    <h1>您还没有任何日程安排！</h1>
                </div>
                <%
            }else{
                for(int i=datelist.size()-1;i>=0;i--){
                    LookDateBean dd=(LookDateBean)datelist.get(i);
                    %>
                        <tr>
                            <td><%=dd.getDate()%></td>
                            <td><%=dd.getThing()%></td>
                        </tr>
                    <%
                }
             }
           %>
            </table>
        </form>
    </body>
</html>
