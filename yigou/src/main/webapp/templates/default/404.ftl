<#include "layout.ftl">

<#macro overrideTitle>
    找不到页面 -PhtotHall
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/error.css">
</#macro>

<#macro overrideContent>
<div class="container" style="height:500px">
<div class="error">
    <div class="error-code" style="font-size:60px;font-weight:500;">404</div>
    <div class="mg-b-lg error-title" style="font-size:50px;font-weight:500;">页面找不到啦!</div>
    <p>
       	 大师兄，师父被妖怪抓走啦。<br>
        <a href="${request.contextPath}/index.html">返回首页</a>
        <a href="javascript:history.back();">上一页</a>
    </p>
</div>
</div>
</#macro>

<@layout title=overrideTitle style=defaultStyle content=overrideContent script=defaultScript>
</@layout>