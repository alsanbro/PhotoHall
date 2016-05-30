<#macro defaultStyle>
</#macro>

<#macro defaultContent>
</#macro>

<#macro defaultScript>
</#macro>

<#macro defaultTitle>
</#macro>

<#macro defaultNav>
</#macro>

<#macro layout title=defaultTitle style=defaultStyle content=defaultContent script=defaultFooter nav=defaultNav>
    <#assign contextPath="http://localhost:8080" />
     <#assign Session=request.getSession() />
    <!DOCTYPE html>
    <html lang="zh-cn">
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
        <meta charset="UTF-8">
        <title><@title />${(app.name)!}</title>
        <link rel="stylesheet" href="${contextPath}/templates/default/css/bootstrap.min.css">
        <link rel="stylesheet" href="${contextPath}/templates/default/css/index.css">
        <link rel="stylesheet" href="${contextPath}/templates/default/css/public.css">
        <@style />
    </head>
    <body>
<div class="header">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a href="home.html" class="navbar-brand"><img src="${contextPath}/upload/logo.png"></a>  
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="${contextPath}/index.html">首页</a></li>
                        <li><a href="${contextPath}/cameraman.html">摄影师</a></li>
                        <li><a href="${contextPath}/forum.html">论坛</a></li>
                        <li><a href="${contextPath}/activity.html">活动</a></li>
                        <li><a href="${contextPath}/individual.html">个人中心</a></li>
                    </ul>
                    <div class="nav navbar-nav navbar-right">
                        <a href="register.html"><span class="glyphicon glyphicon-edit"></span>注册</a>
                        <a href="login.html" class="user0"><span class="glyphicon glyphicon-user"></span>登录</a>
                        <a href=individual.html class="user1" style="display:52px;">
						alsanbro
						</a>
                        <div class="search">
                            <input type="text" placeholder="搜索...">
                            <span class="glyphicon glyphicon-search"></span>
                        </div>
                        
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <@content />
    <div class="footer">
        <div class="ftop">
            <div class="container">
                <div class="mainContent">
                    <ul class="clearfix">
                        <li class="col-md-4">
                            <div class="icon pull-left">
                                <img src="upload/camera.png">
                            </div>
                            <div class="text pull-left">
                                <h4>PHOTOHALL摄影平台</h4>
                                <p>最好用的摄影信息共享平台</p>
                            </div>
                        </li>
                        <li class="col-md-4">
                            <div class="icon pull-left">
                                <img src="upload/phone-icon.png">
                            </div>
                            <div class="text pull-left">
                            	<h4>157-5712-9526</h4>
                            	<p>9：00-23：00 | 全年无休</p>
                            </div>
                        </li>
                        <li class="col-md-4" style="border-right:none;">
                        	<div class="icon pull-left link-icon">
                        		<img src="upload/weChat.png">
                        		<img src="upload/Twitter.png">
                        		<img src="upload/FaceBook.png">
                        		<img src="upload/Weibo.png">
                        	</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="fbottom">
            <p>Made with love in Zhejiang Gongshang University</p>
        </div>
    </div>
    
    </body>
    </html>
    <script src="${contextPath}/templates/default/js/jquery.min.js"></script>
    <script src="${contextPath}/templates/default/js/index.js"></script>
    <script src="${contextPath}/templates/default/js/bootstrap.min.js"></script>
    <script type="text/javascript"
		src="${contextPath}/templates/default/admin/js/validationcheck.js"></script>
	<script type="text/javascript"
	src="${contextPath}/templates/default/admin/js/toastr.min.js"></script>
	<@script />
    <#if model??>
     <script type="text/javascript"> 
        $(document).ready(function () {
            $('.portfolio-page').twbsPagination({
                totalPages: ${(model.totalPages)!},
                startPage: ${(model.number)!} + 1,
                initiateStartPageClick: false,
                first: "首页",
                prev: "上一页",
                next: "下一页",
                last: "末页",
                onPageClick : function(event, page) {
                    var href = location.search;
                    if(href!=""){
                        href = href.indexOf("page=") > 0 ? href.replace(/page=[\d]+/, "page=" + (page - 1)) : href + "&page=" + (page - 1);
                    }else{
                        href = location.href + "?page=" + (page - 1);
                    }
                    location.href = href;
                }
            });
        });
    </script>
    </#if>
</#macro>