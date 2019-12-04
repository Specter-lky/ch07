<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->删除日程</title>
        <style type="text/css">
            .bg{
                width:100px;
                height: 50px;
                background-color: #FFFFFF;
                display: table-cell;
                vertical-align: middle;
                text-align:center;
                color: white;
            }
            .bg a:hover{
                width:100px;
                height: 50px;
                display: table-cell;
                vertical-align: middle;
                text-align:center;
                background-color:#0080FF;
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
                  <div class="bg"><a href="http://localhost:8080/login/dateManager/lookDate.jsp">查看日程</a></div>
              </td>
              <td width="20%">
                  <div class="bg"><a href="http://localhost:8080/login/dateManager/updateDate.jsp">修改日程</a></div>
              </td>
              <td width="20%">
                  <div class="action"><a href="http://localhost:8080/login/dateManager/deleteDate.jsp">删除日程</a></div>
              </td>
          </tr>
      </table>
      </div>
      <br><br>
      <form action="http://localhost:8080/login/DeleteDateServlet" method="post">
          <table border="5" cellspacing="0" cellpadding="0" width="60%" align="center">
                <tr>
                     <td height="30" width="50%" align="right">日程时间</td>
                     <td width="50%">
                         20<input type="text" size="1" name="year" value="">年
                         <input type="text" size="1" name="month" value="">月
                         <input type="text" size="1" name="day" value="">日
                     </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="确 定" size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 除" size="12">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
