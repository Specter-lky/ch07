<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/14
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>正大企业登录首页</title>
    <link rel="stylesheet" type="text/css" href=http://www.17sucai.com/preview/1076685/2018-09-03/dl/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://www.17sucai.com/preview/1076685/2018-09-03/dl/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="http://www.17sucai.com/preview/1076685/2018-09-03/dl/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="http://www.17sucai.com/preview/1076685/2018-09-03/dl/css/util.css">
    <link rel="stylesheet" type="text/css" href="http://www.17sucai.com/preview/1076685/2018-09-03/dl/css/main.css">
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }

        .bg-blur {
            float: left;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            -webkit-filter: blur(15px);
            -moz-filter: blur(15px);
            -o-filter: blur(15px);
            -ms-filter: blur(15px);
            filter: blur(15px);
        }

        body{
            font-family: "微软雅黑";
            font-size: 14px;
            background: url('http://www.17sucai.com/preview/735710/2017-05-09/1/image/56a46b7590f5672af5b8.jpg') fixed center center;
        }
        .logo_box{
            width: 280px;
            height: 490px;
            padding: 35px;
            color: #EEE;
            position: absolute;
            left: 50%;
            top:100px;
            margin-left: -175px;
        }
        .logo_box h3{
            text-align: center;
            height: 20px;
            font: 20px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei",sans-serif;
            color: #FFFFFF;
            height: 20px;
            line-height: 20px;
            padding:0 0 35px 0;
        }
        .forms{
            width: 280px;
            height: 485px;
        }
        .logon_inof{
            width: 100%;
            min-height: 450px;
            padding-top: 35px;
            position: relative;
        }
        .input_outer{
            height: 46px;
            padding: 0 5px;
            margin-bottom: 20px;
            border-radius: 50px;
            position: relative;
            border: rgba(255,255,255,0.2) 2px solid !important;
        }
        .u_user{
            width: 25px;
            height: 25px;
            background: url('http://www.17sucai.com/preview/735710/2017-05-09/1/image/login_ico.png');
            background-position:  -125px 0;
            position: absolute;
            margin: 12px 13px;
        }
        .us_uer{
            width: 25px;
            height: 25px;
            background-image: url('http://www.17sucai.com/preview/735710/2017-05-09/1/image/login_ico.png');
            background-position: -125px -34px;
            position: absolute;
            margin: 12px 13px;
        }
        .l-login{
            position: absolute;
            z-index: 1;
            left: 50px;
            top: 0;
            height: 46px;
            font: 14px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei";
            line-height: 46px;
        }
        label{
            color: rgb(255, 255, 255);
            display: block;
        }
        .text{
            width: 220px;
            height: 46px;
            outline: none;
            display: inline-block;
            font: 14px "microsoft yahei",Helvetica,Tahoma,Arial,"Microsoft jhengHei";
            margin-left: 50px;
            border: none;
            background: none;
            line-height: 46px;
        }
        /*///*/
        .mb2{
            margin-bottom: 20px
        }
        .mb2 a{
            text-decoration: none;
            outline: none;
        }
        .submit {
            padding: 15px;
            margin-top: 20px;
            display: block;
        }
        .act-but{
            height: 20px;
            line-height: 20px;
            text-align: center;
            font-size: 20px;
            border-radius: 50px;
            background: #0096e6;
        }
        /*////*/
        .check{
            width: 280px;
            height: 22px;
        }
        .clearfix::before{
            content: "";
            display: table;
        }
        .clearfix::after{
            display: block;
            clear: both;
            content: "";
            visibility: hidden;
            height: 0;
        }
        .login-rm{
            float: left;
        }
        .login-fgetpwd {
            float: right;
        }
        .check{
            width: 18px;
            height: 18px;
            background: #fff;
            border: 1px solid #e5e6e7;
            margin: 0 5px 0 0;
            border-radius: 2px;
        }
        .check-ok{
            background-position: -128px -70px;
            width: 18px;
            height: 18px;
            display: inline-block;
            border: 1px solid #e5e6e7;
            margin: 0 5px 0 0;
            border-radius: 2px;
            vertical-align: middle
        }
        .checkbox{
            vertical-align: middle;
            margin: 0 5px 0 0;
        }

        /*=====*/
        /*其他登录口*/
        .logins{
            width: 280px;
            height: 27px;
            line-height: 27px;
            float:left;
            padding-bottom: 30px;
        }
        .qq{
            width: 27px;
            height: 27px;
            float: left;
            display: inline-block;
            text-align: center;
            margin-left: 5px;
            margin-right: 18px;
        }
        .wx{
            width: 27px;
            height: 27px;
            text-align: center;
            line-height: 27px;
            display: inline-block;
            margin: 5px 18px auto 5px;
        }
        .wx img{
            width: 16px;
            height: 16px;
            float: left;
            line-height: 27px;
            text-align: center;
        }
        /*////*/
        .sas{
            width: 280px;
            height: 18px;
            float: left;
            color: #FFFFFF;
            text-align: center;
            font-size: 16px;
            line-height: 16px;
            margin-bottom: 50px;
        }
        .sas a{
            width: 280px;
            height: 18px;
            color: #FFFFFF;
            text-align: center;
            line-height: 18px;
            text-decoration: none;
        }
        .mr-1 {
            margin-right: 0.5em;
        }
    </style>
</head>
<body>
<%
    session.invalidate();
%>
<script src="http://www.17sucai.com/preview/735710/2017-05-09/1/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<div class="logo_box">
    <h3>正大企业欢迎你</h3>
    <form action="http://localhost:8080/login/LoginServlet" name="f" method="post">
        <div class="input_outer">
            <span class="u_user"></span>
            <input name="userName" class="text" onFocus=" if(this.value=='输入ID或用户名登录') this.value=''" onBlur="if(this.value=='') this.value='输入ID或用户名登录'" value="输入ID或用户名登录" style="color: #FFFFFF !important" type="text">
        </div>
        <div class="input_outer">
            <span class="us_uer"></span>
            <label class="l-login login_password" style="color: rgb(255, 255, 255);display: block;">输入密码</label>
            <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" onFocus="$('.login_password').hide()" onBlur="if(this.value=='') $('.login_password').show()" value="" type="password">
        </div>
        <div class="mb2">
            <input type="submit" class="act-but submit" style="width:215px;height:50px" value="登录"/>
        </div>
        <input name="savesid" value="0" id="check-box" class="checkbox" type="checkbox"><span>记住用户名</span>
    </form>
    <div class="txt1 text-center p-t-54 p-b-20">
        <span>第三方登录</span>
    </div>
    <div class="flex-c-m">
        <a href="#" class="icon mr-1">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556785778644&di=9ff6ed958bf28931df821ccc958fbe93&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F00%2F17%2F16pic_17711_b.jpg" height="30" width="30" />
            <i></i>
        </a>

        <a href="#" class="icon mr-1">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556785576127&di=f346708ec075509a0e7b81d440e2ffa5&imgtype=0&src=http%3A%2F%2Fwww.geren-jianli.net%2Fupload%2F2%2F86%2F28678da89bf0de60f7341597e6943703.jpg" height="30" width="30" />
            <i></i>
        </a>

        <a href="https://cas.dgut.edu.cn?appid=javaee" class="icon mr-1">
            <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556785690854&di=d46929253c1bbffe3a8e3112f2be40d5&imgtype=0&src=http%3A%2F%2Fwww.dgut.info%2Fphoto%2F201109%2F20110925121252338296.jpg" height="30" width="30" />
            <i></i>
        </a>
    </div>

</div>

</body>
</html>
