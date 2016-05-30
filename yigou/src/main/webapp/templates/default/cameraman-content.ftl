<#include "layout.ftl">

<#macro overrideTitle>
    摄影师
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/cameraman.css">
</#macro>
<#macro overrideScript> 
    <!-- <script src="${contextPath}/templates/default/js/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="${contextPath}/templates/default/js/index.js"></script> -->
    <script src="${contextPath}/templates/default/js/cameraman-detail.js"></script>
    <script src="${contextPath}/templates/default/js/cameraman-photo.js"></script>
</#macro>
<#macro overrideContent>
    <div class="main">
        <div class="container">
            <div class="main-bg">
                <div class="main-class">
                    <p class="clearfix">
                        <a href="#">当日精选</a>
                        <a href="#">热门作品</a>
                        <a href="${contextPath}/photo/detail.html" class="btn btn-info pull-right">发布作品</a>
                    </p>
                    <!--<div class="clearfix">
                        <h4>分类目录</h4>
                        <ul>
                            <li><a href="#">人像</a></li>
                            <li><a href="#">风景</a></li>
                            <li><a href="#">婚礼</a></li>
                            <li><a href="#">静物</a></li>
                            <li><a href="#">艺术摄影</a></li>
                            <li><a href="#">会展庆典</a></li>
                            <a href="${contextPath}/admin/category.html" class="btn btn-info pull-right">添加相册</a>
                        </ul>
                    </div>
                    -->
                </div>
                <div class="imgList">
                   <#if (model.content?size)??&&(model.content?size>0)>
                        <#list model.content as model>
                           <div class="col">
			                        <a href="#">
			                            <img style="width:720px;height:480px;margin-bottom:40px" src="${model.url!}">
<!-- 			                            <img src="upload/index-01.jpg"> -->
			                        </a> 
			                    </div>
                         </#list>
                   </#if>
                </div>
            </div>
        </div>
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