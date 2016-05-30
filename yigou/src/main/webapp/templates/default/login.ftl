<#include "layout.ftl">

<#macro overrideTitle>
    登陆
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/sign_in.css">
</#macro>
<#macro overrideScript> 
	<script src="${contextPath}/templates/default/js/login.js"></script>
</#macro>
<#macro overrideContent>
	<div class="login">
    	<h3>登  陆</h3>
    	<div id="tipMsg" class="msg">用户名或密码错误，请重新输入！</div>
    	<form class="form-horizontal" action="${contextPath}/login" method="post">
    		<div class="form-group">
    			<label for="inputemail">用户名:</label>
    			<input type="text" class="form-control" id="username" name="username"></input>
    		</div>
    		<p id="msgUsername" class="msg"></p>
    		<div class="form-group has-feedback">
    			<label for="password">登陆密码:</label>
    			<a class="pull-right" href="#">忘记密码</a>
    			<input type="password" class="form-control" id="password" name="password"></input>
    			<span class="glyphicon glyphicon-eye-open form-control-feedback"></span>
    		</div>
    		<p id="msgPassword" class="msg"></p>
            <input type= "submit"  class="btn" id="login" value="登陆" disabled></input>
    		<p><a href="register.html">还没有账户，赶紧注册一个吧！</a></p>
    	</form>
    </div>
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