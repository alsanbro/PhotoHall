<#include "layout.ftl">

<#macro overrideTitle>
    摄影师相册
</#macro>
<#macro overrideStyle>
    <link rel="stylesheet" href="${contextPath}/templates/default/css/cameraman-photo.css">
</#macro>
<#macro overrideContent>

    <div class="main">
        <div class="container">
            
            <div class="imgList">
               <#if (model.content?size)??&&(model.content?size>0)>
                    <#list model.content as model>
                        <div class="main-top">
			                <p>alsanbro｜<span>${(model.album.title)!}</span><a href="${contextPath}/release.html">添加照片</a></p>
			            </div>	
                        <img src="${model.url!}"
	                        class="js-lightbox"
	                        data-role="lightbox"
	                        data-sourse="${model.url!}"
	                        data-group="group-1"
	                        data-id="fwefqweq"
	                        data-caption="${(model.album.title)!}  概述：${(model.album.brief)!}"
	                        style="width:720px;height:480px;margin-bottom:40px" >
	              
                 	</#list>
               </#if>
            </div>
            <!--
            <div>
                <img class="js-lightbox" 
                     data-role="lightbox" 
                     data-sourse="images/1-1.jpg" 
                     src="images/1-1.jpg" 
                     data-group="group-1"
                     data-id="fwefqweq"
                     data-caption="金色海滩"
                     width="100px" height="100px">
                <img class="js-lightbox" data-role="lightbox" data-sourse="images/1-2.jpg" src="images/1-2.jpg" data-group="group-1" data-id="fsafas" data-caption="大足石刻-贵州赤水丹霞" width="100px" height="100px">
                <img class="js-lightbox" data-role="lightbox" data-sourse="images/1-3.jpg" src="images/1-3.jpg" data-group="group-1" data-id="ferfefeaq" data-caption="雪山绿谷——大地母亲" width="100px" height="100px">
            </div>
            -->
        </div>
    </div>
</#macro>
<#macro overrideScript> 
    <script src="${contextPath}/templates/default/js/cameraman-photo.js"></script>
    <script>
        $(function(){
            var lightbox=new LightBox({
                speed:'fast',
                maxWidth:900,
                maxHeight:600,
                maskOpacity:0.4,

            });
        });
    </script>
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