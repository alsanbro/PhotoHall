<#include "layout.ftl">

<#macro overrideTitle>
    注册
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/Register.css">
    <link rel="stylesheet" href="${contextPath}/templates/default/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="${contextPath}/templates/default/css/bootstrap-datetimepicker-standalone.css">
</#macro>

<#macro overrideContent>    
    <div id="BG">
        <div id="register" class="container">
            <div class="RegTitle">
                <span>注册账号：</span>
                <a href="home.html">了解更多</a>
                <a href="home.html">反馈意见</a>
            </div>
             <form class="form-horizontal" action="${contextPath}/register<#if model??>/${model.id!}</#if>.html<#if model??>?_method=PUT</#if>" method="post">
                <div class="box box_1">
                    <label class="item" for="user">用户名：</label>
                    <div class="ipt_box">
                        <input id="user" class="new_txt"  type="text"  maxlength="8" style="z-index: 0" tabindex="1" name="username" autocomplete="off">
                    </div>
                    <div class="info">
                        <label class="user_label" style="float: left;height: 30px;width: 150px;"></label>
                    </div>

                </div>
                <div class="box box_2">
                    <label class="item" for="E-mail">邮箱：</label>
                    <div class="ipt_box">
                        <input id="E-mail" class="new_txt" type="email" autocomplete="off" tabindex="2" name="email">
                    </div>
                </div>
                <div class="box box_3">
                    <label class="item" for="password">密码：</label>
                    <div class="ipt_box">
                        <input id="password" class="new_txt" type="password" autocomplete="off" maxlength="13" tabindex="3" name="password">
                    </div>
                    <div class="info">
                        <label class="password_label" style="float: left;height: 30px;width: 150px;"></label>
                    </div>
                </div>
                <div class="box box_4">
                    <label class="item" for="password_again">确认密码：</label>
                    <div class="ipt_box">
                        <input id="password_again" class="new_txt" type="password" autocomplete="off" maxlength="13" tabindex="4" >
                    </div>
                    <div class="info">
                        <label class="password2_label" style="float: left;height: 30px;width: 150px;"></label>
                    </div>

                </div>
                <div class="box box_5">
                    <label class="item">性别：</label>
                    <div class="ipt_box">
                        <input class="sex" type="radio" name="sex" value="1" tabindex="5" checked="checked">男 &nbsp;
                        <input class="sex" type="radio" name="sex" value="2" tabindex="6">女
                    </div>
                </div>
                <div class="box box_6">
                    <label class="item">出生日期：</label>
                    <div class="ipt_box" style="width: 400px">
<!--                             <input class="form-control" name="birthday" id="birthday" type="text" placeholder="选择生日"> -->
                        <select id="selYear" name=""selYear""></select><select id="selMonth" name="selMonth"></select><select id="selDay" name="selDay"></select>
                    </div>
                </div>
                <div class="box box_7">
                    <label class="item">所在地：</label>
                    <div class="ipt_box" style="width: 400px">
                        <select name="province"></select><select name="city"></select><select name="area"></select>
                    </div>
                </div>
<!--                 <div class="box box_8"> -->
<!--                     <label class="item" for="code">验证码：</label> -->
<!--                     <div class="ipt_box" style="width: 400px"> -->
<!--                         <input type="text"  class="new_txt1"id="code" maxlength="8" autocomplete="off" tabindex="7" name="code" style="float: left"> -->
<!--                         <img id="code_img" width="130" height="50" onclick="window.index&&index.changeCode(!0)" title="点击换一张"src="" style="float: left;cursor: pointer;margin-left: 5px;"> -->
<!--                         <p style="float: left;font-size: 15px;color: red;font-weight: 200;margin-left: 10px;line-height: 29px"><span style="line-height: 20px">看不清</span><br/><span style="line-height: 20px">换一张</span></p> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="box box_9"> -->
<!--                     <label class="item" for="phone_num">手机号码：</label> -->
<!--                     <div id="PN"> -->
<!--                         <input type="text" class="new_txt2"id="phone_num" maxlength="12" autocomplete="off" tabindex="8" name="phone_num"> -->
<!--                         <p>(忘记密码时，可通过该手机号快速找回密码)</p> -->
<!--                     </div> -->
<!--                     <div id="PN1"> -->
<!--                         <label class="item"></label> -->
<!--                         <input type="text" class="new_txt3" maxlength="6" autocomplete="off" tabindex="9" name="RegCode"> -->
<!--                         <div id="BT"><button>获取短信验证码</button></div> -->
<!--                     </div> -->
<!--                 </div> -->
                <div class="box box_10">
                     <label></label>
                     <div class="agree_box">
                          <input type="checkbox" id="agree" class="a_1 checked" tabindex="10" name="agree">同意&nbsp;&nbsp;“服务条款”&nbsp;&nbsp;和&nbsp;&nbsp;“隐私权相关政策”</a>
                     </div>
                </div>
            <div class="submit">
                <input id="submit" class="" type="submit" tabindex="11" title="立即注册" value="立即注册">
            </div>
            <div style="height: 150px"></div>
            </form>
            </div>
        </div>
    </div>
   
    
</#macro>

 <#macro overrideScript>
 	 <script src="${contextPath}/templates/default/js/PCASClass.js"></script>
    <script src="${contextPath}/templates/default/js/calendar.js"></script>
    <script src="${contextPath}/templates/default/js/register.js"></script>
    <script src="${contextPath}/templates/default/js/moment.js"></script>
    <script src="${contextPath}/templates/default/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        new PCAS("province","city","area","--请选择省份--","--请选择城市--","--请选择地区--");
        var selYear = window.document.getElementById("selYear");
        var selMonth = window.document.getElementById("selMonth");
        var selDay = window.document.getElementById("selDay");
        new DateSelector(selYear,selMonth,selDay,2016,1,1)
    </script>
<!--     <scrpit> -->
<!--       $("#birthday").datetimepicker({ -->
<!-- 		 	collapse:false, -->
<!-- 	 		format: 'YYYY-MM-DD', -->
<!-- 		}); -->
<!--     </scrpit> -->
    </#macro>

<#macro overrideNav>
<ol class="breadcrumb no-margin">
    <li><a href="${contextPath}/admin/index.html">首页</a></li>
    <li><a href="${contextPath}/admin/cameraman.html">用户</a></li>
    <li class="active">
		<#if model??>
            编辑用户
		<#else>
            添加用户
		</#if>
	</li>
</ol>
</#macro>

<@layout title=overrideTitle style=overrideStyle content=overrideContent script=overrideScript nav=overrideNav>
</@layout>