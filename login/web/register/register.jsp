<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/14
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>管理员注册页面</title>


    <link href="http://demo.cssmoban.com/cssthemes5/ccps_28_ber/css/normalize.css" rel="stylesheet"/>
    <link href="http://demo.cssmoban.com/cssthemes5/ccps_28_ber/css/jquery-ui.css" rel="stylesheet"/>
    <link href="http://demo.cssmoban.com/cssthemes5/ccps_28_ber/css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

    <style type="text/css">
        body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
        #my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
        #comments{width:350px;height:100px;}
    </style>

</head>
<body>



<div class="row">

    <div class="eightcol last">

        <!-- Begin Form -->

        <form id="my-form" action="http://localhost:8080/login/RegisterServlet" method="post">

            <section name="第一步">

                <div><label>用户名:</label><input id="username" name="userName" type="text"/></div>
                <div><label>密码:</label><input id="pass" name="password1" type="password"/></div>
                <div><label>确认密码:</label><input id="pass" name="password2" type="password"/></div>
                <div><label>真实名字:</label><input id="username" name="name" type="text"/></div>
            </section>
            <section name="第二步">

                <div><label>性别:</label>
                    <input type="radio" name="sex" value="男" checked>男
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="sex" value="女">女
                </div>
                <div><label>邮箱:</label><input id="email" name="email" data-ideal="required email" type="email"/></div>
                <div><label>出生日期:</label><input name="date" class="datepicker" data-ideal="date" type="text" placeholder="月/日/年"/></div>
            </section>
            <section name="第三步">
                <div><label>家庭地址:</label>
                    <select id="states" name="place">
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
                </div>
                <div><label>职称:</label>
                    <select id="states" name="work">
                        <option value="default">&ndash; 选择职称 &ndash;</option>
                        <option value="软件开发工程师">软件开发工程师</option>
                        <option value="软件测试工程师">软件测试工程师</option>
                        <option value="教师">教师</option>
                        <option value="学生">学生</option>
                        <option value="经理">经理</option>
                        <option value="职员">职员</option>
                        <option value="老板">老板</option>
                        <option value="公务员">公务员</option>
                        <option value="其它">其它</option>
                    </select>
                </div>
                <div id="languages">
                    <label>语言:</label>
                    <label><input type="checkbox" name="langs[]" value="English"/>英文</label>
                    <label><input type="checkbox" name="langs[]" value="Chinese"/>中文</label>
                    <label><input type="checkbox" name="langs[]" value="Spanish"/>西班牙文</label>
                    <label><input type="checkbox" name="langs[]" value="French"/>法文</label>
                </div>
                <div><label>精通几门:</label>
                    <label><input type="radio" name="radio" checked/>1</label>
                    <label><input type="radio" name="radio"/>2</label>
                    <label><input type="radio" name="radio"/>3</label>
                    <label><input type="radio" name="radio"/>4</label>
                </div>
            </section>

            <section name="第四步">
                <div><label>电话:</label><input type="text" name="phone"/></div>
                <div><label>国籍:</label>
                <select id="states" name="states">
                    <option value="default">&ndash; 选择国籍 &ndash;</option>
                    <option value="AL">阿拉伯</option>
                    <option value="AK">中国</option>
                    <option value="AZ">美国</option>
                    <option value="AR">法国</option>
                    <option value="CA">英国</option>
                    <option value="CO">德国</option>
                    <option value="CT">西班牙</option>
                    <option value="DE">俄罗斯</option>
                </select>
            </div>
                <div><label>学历:</label>
                    <select id="states" name="edu">
                        <option value="default">&ndash; 选择学历 &ndash;</option>
                        <option value="博士">博士</option>
                        <option value="硕士">硕士</option>
                        <option value="本科">本科</option>
                        <option value="专科">专科</option>
                        <option value="高中">高中</option>
                        <option value="初中">初中</option>
                        <option value="小学">小学</option>
                        <option value="其它">其它</option>
                    </select>
                </div>
            </section>

            <div><hr/></div>

            <div>
                <button type="submit">提交</button>
                <button id="reset" type="button">重置</button>
            </div>

        </form>

        <!-- End Form -->

    </div>

</div>


<script type="text/javascript" src="http://demo.cssmoban.com/cssthemes5/ccps_28_ber/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="http://demo.cssmoban.com/cssthemes5/ccps_28_ber/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://demo.cssmoban.com/cssthemes5/ccps_28_ber/js/jquery.idealforms.js"></script>
<script type="text/javascript">
    var options = {

        onFail: function(){
            alert( $myform.getInvalid().length +' invalid fields.' )
        },

        inputs: {
            'password': {
                filters: 'required pass',
            },
            'username': {
                filters: 'required username',
                data: {
                    //ajax: { url:'validate.php' }
                }
            },
            'file': {
                filters: 'extension',
                data: { extension: ['jpg'] }
            },
            'comments': {
                filters: 'min max',
                data: { min: 50, max: 200 }
            },
            'states': {
                filters: 'exclude',
                data: { exclude: ['default'] },
                errors : {
                    exclude: '选择国籍.'
                }
            },
            'langs[]': {
                filters: 'min max',
                data: { min: 2, max: 3 },
                errors: {
                    min: 'Check at least <strong>2</strong> options.',
                    max: 'No more than <strong>3</strong> options allowed.'
                }
            }
        }

    };

    var $myform = $('#my-form').idealforms(options).data('idealforms');

    $('#reset').click(function(){
        $myform.reset().fresh().focusFirst()
    });

    $myform.focusFirst();
</script>
<div style="text-align:center;">
    <p>来源：More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
</div>
</body>
</html>
