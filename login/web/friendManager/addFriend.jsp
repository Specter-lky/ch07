<%-- 
    Document   : addFriend
    Created on : 2012-3-21, 0:27:47
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人信息管理系统->增加通讯录</title>
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
                        <div class="action"><a href="http://localhost:8080/login/friendManager/addFriend.jsp">增加联系人</a></div>
                    </td>
                    <td width="20%">
                        <div class="bg"><a href="http://localhost:8080/login/LookFriendServlet">查看通信录</a></div>
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
        <form action="http://localhost:8080/login/AddFriendServlet" method="post">
            <table border="0" cellspacing="0" cellpadding="0" bgcolor="white" width="60%" align="center">
                <tr>
                    <td>用户姓名</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>用户电话</td>
                    <td><input type="text" name="phone" onkeyup="this.value=this.value.replace(/\D/g, '')" oninput="if(value.length>11)value=value.slice(0,11)"/></td>
                </tr>
                <tr>
                    <td>邮箱地址</td>
                    <td><input type="text" name="email" required pattern="^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$" title="请输入正确的邮箱格式"/></td>
                </tr>
                <tr>
                    <td>工作单位</td>
                    <td><input type="text" name="workPlace"/></td>
                </tr>
                <tr>
                    <td>家庭住址</td>
                    <td>
                        <select name="place" size="1">
                            <option value="北京">北  京</option>
                            <option value="上海">上  海</option>
                            <option value="天津">天  津</option>                          
                            <option value="河北">河  北</option>
                            <option value="河南">河  南</option>
                            <option value="吉林">吉  林</option>
                            <option value="黑龙江">黑龙江</option>
                            <option value="内蒙古">内蒙古</option>
                            <option value="山东">山  东</option>
                            <option value="山西">山  西</option>
                            <option value="陕西">陕  西</option>
                            <option value="甘肃">甘  肃</option>
                            <option value="宁夏">宁  夏</option>
                            <option value="青海">青  海</option>
                            <option value="新疆">新  疆</option>
                            <option value="辽宁">辽  宁</option>
                            <option value="江苏">江  苏</option>
                            <option value="浙江">浙  江</option>
                            <option value="安微">安  微</option>
                            <option value="广东">广  东</option>
                            <option value="海南">海  南</option>
                            <option value="广西">广  西</option>
                            <option value="云南">云  南</option>
                            <option value="贵州">贵  州</option>
                            <option value="四川">四  川</option>
                            <option value="重庆">重  庆</option>
                            <option value="西藏">西  藏</option>
                            <option value="香港">香  港</option>
                            <option value="澳门">澳  门</option>
                            <option value="福建">福  建</option>
                            <option value="江西">江  西</option>
                            <option value="湖南">湖  南</option>
                            <option value="青海">青  海</option>
                            <option value="湖北">湖  北</option>
                            <option value="台湾">台  湾</option>
                            <option value="其它">其  它</option>
                        </select>省(直辖市)
                    </td>
                </tr>
                <tr>
                    <td>用户QQ</td>
                    <td><input type="text" onkeyup="this.value=this.value.replace(/\D/g, '')" name="QQ"/></td>
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
