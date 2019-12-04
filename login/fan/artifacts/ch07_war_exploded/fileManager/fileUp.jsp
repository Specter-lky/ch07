<%-- 
    Document   : fileUp
    Created on : 2012-3-21, 22:22:57
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->文件上传</title>
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
                  <div class="action"><a href="http://localhost:8080/login/fileManager/fileUp.jsp">上传文件</a></div>
              </td>
              <td width="20%">
                  <div class="bg"><a href="http://localhost:8080/login/LookFileServlet">文件列表</a></div>
              </td>
              <td width="20%">
                  <div class="bg"><a href="http://localhost:8080/login/LookDownServlet">下载文件</a></div>
              </td>
              <td width="20%">
                  <div class="bg"><a href="http://localhost:8080/login/fileManager/fileDel.jsp">删除文件</a></div>
              </td>
          </tr>
      </table>
      </div>
      <br><br>
      <form action="http://localhost:8080/login/FileUpServlet" method="post" enctype="multipart/form-data">
          <table border="2" cellspacing="0" cellpadding="0"  width="60%" align="center">
              <tr>
                     <td height="50" width="50%" align="right">上传文件</td>
                     <td width="50%">
                         <input type="file" name="file" size="30">
                     </td>
                </tr>
                <tr>
                    <td colspan="2" height="50" align="center">
                        <input type="submit" value="上 传" size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 除" size="12">
                    </td>
                </tr>
          </table>
      </form>
    </body>
</html>

